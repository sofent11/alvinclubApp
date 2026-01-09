# RN -> Flutter 迁移计划（w2cApp）

> 目标：在 Flutter 中 **100% 继承现有 RN 逻辑与行为**。本计划以 `vendor/rn` 的当前实现为唯一事实来源。

## 0. 迁移原则（必须遵守）
- 逻辑一致性优先：所有 API 调用、数据映射、默认值、错误处理、缓存策略、交互行为必须与 RN 保持一致。
- 可追溯：每个 Flutter 模块都要能回溯到 RN 对应文件/函数/路由。
- 渐进交付：按模块分阶段交付，阶段内完成“数据层 + 逻辑层 + UI 层 + 验收”。
- 可回归验证：每个阶段附带测试清单与对照用例。

## 1. 现有 RN 实现清单（来自 w2cApp）

### 1.1 路由与页面（expo-router）
- 底部 Tab
  - `/`（`app/(tabs)/index.tsx`）首页
  - `/categories`（`app/(tabs)/categories.tsx`）分类
  - `/cart`（`app/(tabs)/cart.tsx`）购物车（登录态保护）
  - `/account`（`app/(tabs)/account.tsx`）我的
- 业务页
  - `/search`、`/search-results`
  - `/product/[productCode]`
  - `/category/[id]`
  - `/topic/[id]`
  - `/flash-sale`
  - `/kol/[code]`
  - `/checkout`（登录态保护）
  - `/order/index`、`/order/[orderId]/pay`、`/order/[orderId]/success`（登录态保护）
  - `/address/index`、`/address/new`、`/address/[id]`（登录态保护）
  - `/profile/edit`（登录态保护）
  - `/coupon/index`、`/favorite/index`、`/community/index`、`/wallet/index`、`/wallet/rebate`、`/wallet/transactions`
  - `/(auth)/sign-in`（登录/注册）
  - `/webview`、`/modal`
- AI Fashion 模块
  - `/fashion/style-me`
  - `/fashion/model-settings`
  - `/fashion/custom-model`
  - `/fashion/outfit-result`
  - `/fashion/history`
  - `/fashion/post/[id]`

### 1.2 API 模块（`lib/api/*`）
- `client.ts`：Axios 实例 + header 注入 + 401 清除会话 + dev curl log
- 业务 API：
  - `auth.ts`（邮箱 OTP、Google 登录、登出）
  - `product.ts`（商品列表/详情/SKU/评论/相似商品）
  - `cart.ts`（购物车增删改、定价）
  - `order.ts`（订单提交、更新、列表、统计、定价）
  - `pay.ts`（支付方式、发起支付、支付结果）
  - `address.ts`（地址 CRUD、默认地址）
  - `coupon.ts`（优惠券列表、领取）
  - `user.ts`（用户信息、更新）
  - `home.ts`（首页配置、精选商品）
  - `premium-dupe.ts`（高仿专区配置/列表）
  - `community.ts`（社区帖子，带 mock fallback）
  - `wallet.ts`（钱包/返利/交易，含 mock）
  - `kol.ts`（KOL 分享落地）
  - `translation.ts`（图片翻译）
  - `upload.ts` / `file.ts`（上传）
  - `ai-fashion.ts`（AI 穿搭模型/生成/历史）

### 1.3 状态/缓存
- Auth：`zustand` + `expo-secure-store`（`state/auth-store.ts`）
  - tokens: `accessToken`/`refreshToken`/`expiresAt`
  - status: `idle | authenticated | anonymous`
- Server state：`@tanstack/react-query`（多处 useQuery / useInfiniteQuery）
  - 关键 staleTime 与 refetchInterval 必须保持一致
- 本地存储：
  - 搜索历史（`lib/storage/search-history.ts`，LRU 10 条）
  - 收藏（`lib/storage/favorites.ts`）

### 1.4 关键跨端能力
- Deep Link & OAuth
  - app scheme：`w2capp`（`app.json`）
  - 支付回调路径：`/order/pay/callback`（`usePaymentRedirect`）
- Google OAuth：`expo-auth-session`（PKCE）
- 支付：`@stripe/stripe-react-native` + WebView 收银台
- 图片上传：`EXPO_PUBLIC_UPLOAD_PREFIX` + `cdn.cn2u.xyz` 拼接
- WebView：`react-native-webview`
- 图片：`expo-image` + `expo-image-picker`
- Haptics：`expo-haptics`
- 动画：自定义动画组件（AI fashion）

### 1.5 关键逻辑（必须 1:1 继承）
- API header 注入：`Accept-Language`、`Referer`、`X-VIEW-URI`、`PortalCode`、`Currency`、`Authorization`
- 401 统一清空 Session
- `home.ts` / `premium-dupe.ts` 的配置字段为 JSON 字符串，需 parse
- 订单统计 API 可能返回 string JSON（`getOrderStatusCount`）
- `community.ts` / `wallet.ts` 有 mock fallback 行为（需保留）
- `cart.ts`/`order.ts`/`product.ts` 中数值 parse 与 default fallback 行为
- 搜索/收藏本地存储 key：`@w2c_search_history`、`user_favorites`
- 购物车默认自动勾选全部可用 SKU（除非用户手动改动）
- Checkout 中优惠券默认自动应用但可取消（`couponTouched` 逻辑）
- 支付：`thirdPayParam` 需解析 `payInfoKey` 并拼接收银台 URL
- AI Fashion：轮询 2s，状态终止条件 `COMPLETED|SUCCESS|FAILED|TIMEOUT|CANCELED`

---

## 2. Flutter 技术选型（与 RN 对应）

| RN/Expo 能力 | Flutter 建议 | 说明 |
| --- | --- | --- |
| axios + interceptor | `dio` | 支持拦截器与日志
| react-query | `flutter_riverpod` + 自建 QueryCache | 自定义缓存策略/失效/分页
| zustand + secure-store | `riverpod` + `flutter_secure_storage` | Auth 状态 & Token
| AsyncStorage | `shared_preferences` | 搜索历史/收藏
| expo-router | `go_router` | 嵌套路由 + Tab
| expo-auth-session | `flutter_appauth` | OAuth + PKCE + 自定义 scheme
| stripe-react-native | `flutter_stripe` | 动态 publishableKey
| expo-image | `cached_network_image` | 缓存图像
| expo-image-picker | `image_picker` | 图片上传
| react-native-webview | `webview_flutter` | 支付/外链
| expo-haptics | `HapticFeedback` | Tab 点击反馈
| flash-list / masonry | `flutter_staggered_grid_view` | 列表/瀑布流
| expo-linear-gradient | `flutter_gradient` | 渐变

> 注：若团队已有既定 Flutter 架构（BLoC/Redux），可替换，但需保证缓存策略与行为一致。

---

## 3. Flutter 工程结构（建议）
```
lib/
  core/
    env/                 # env + flavor
    logging/
    error/               # ApiError + parse
    analytics/
    theme/               # Colors/Fonts/Radius
    navigation/          # go_router
    storage/             # secure/shared
    query_cache/         # 缓存/失效
  data/
    api/                 # swagger 生成 + client
    mappers/             # 与 RN 一致的数据转换
    repositories/        # 业务 API 聚合
  features/
    auth/
    home/
    catalog/
    product/
    cart/
    checkout/
    order/
    payment/
    account/
    address/
    coupon/
    favorites/
    community/
    wallet/
    topic/
    flash_sale/
    ai_fashion/
  shared/
    widgets/             # ThemedButton/ThemedText
    components/
    utils/
```

---

## 4. 详细迁移步骤（可执行）

### 阶段 A：项目初始化与资源对齐
- [x] 初始化 Flutter 工程（bundleId 与 RN 一致：`com.echoo.w2c`）
- [x] 配置 `app scheme`：`w2capp`（用于 OAuth 与支付回调）
- [x] 导入 assets（`assets/images/*`）与图标配置
- [x] 配置多环境 `.env`（对应 `EXPO_PUBLIC_*`）
- [x] 建立基础目录结构（见第 3 部分）
- [x] 设置 lint/test baseline（`flutter_lints`, `flutter_test`）

**验收**：Flutter App 可空页面启动；env 可读取；assets 可显示。

### 阶段 B：核心基础设施（必须先完成）
- [x] `EnvConfig`：迁移 `constants/env.ts`（`apiBaseUrl`, `appEnv`, `defaultLocale`, `referer`）
- [x] `ApiClient`：
  - 注入 headers（`Accept-Language`, `Referer`, `X-VIEW-URI`, `PortalCode`, `Currency`, `Authorization`）
  - 401 -> 清空 auth
  - dev 模式打印 curl / response / error
- [x] `ApiError` 与 `error-handler`：迁移 `errors.ts` + `error-handler.ts`
- [x] `AuthStore`：与 RN 字段一致（tokens, user, status）
- [x] `QueryCache`：支持 staleTime、invalidate、refetch（匹配 RN 设定）
- [x] `Analytics`：迁移 `lib/analytics.ts` 事件枚举与方法
- [x] `Theme`：迁移 `constants/theme.ts` + `ThemedText/ThemedView/ThemedButton`

**验收**：
- 调用任意 API 可携带正确 headers
- 401 可触发清空 Session
- 主题色与字体在 Flutter 上可用

### 阶段 C：API 生成与数据层迁移
- [x] 从 `docs/api/*.json` 生成 Dart API（推荐 openapi-generator 或 swagger-dart-code-generator）
- [x] 建立 `repositories` 并迁移 RN 的数据映射逻辑：
  - `auth`：`initSignIn`, `verifySignIn`, `verifyGoogleSignIn`, `signOut`
  - `product`：`getHotProductsV2`, `getFlashSaleProducts`, `getPremierProducts`, `getProductCategories`, `getCategoryProducts`, `getCategoryRecommendProducts`, `searchProducts`, `getProductDetail`, `getProductSkus`, `getProductReviews`, `getProductReviewSummary`, `getSimilarProducts`
  - `cart`：`getCart`, `updateCart`, `calculateCartPricing`, `addToCart`
  - `order`：`getAvailableCoupon`, `priceOrder`, `submitOrder`, `updateOrder`, `getOrderList`, `getOrderStatusCount`
  - `pay`：`getPaymentMethods`, `initiatePayment`, `getPayResult`
  - `address`：`getDefaultShippingAddress`, `listShippingAddresses`, `createShippingAddress`, `updateShippingAddress`, `deleteShippingAddress`
  - `coupon`：`getUserCoupons`, `redeemCoupon`
  - `user`：`getUserProfile`, `updateUserProfile`
  - `home` & `premium-dupe`：配置 JSON parse 逻辑
  - `community` / `wallet`：保留 mock fallback
  - `translation`：图片翻译逻辑
  - `upload` / `file`：上传逻辑、URL 处理
  - `ai-fashion`：所有 AI Fashion API
- [x] 对应 **Mapper** 完整复制 RN 的数值解析与 fallback 行为

**验收**：
- 与 RN 同样输入返回同样结构（Mock + 正常 API 都覆盖）

### 阶段 D：鉴权与登录流程
- [x] OAuth：用 `flutter_appauth` 实现与 `use-google-auth.ts` 等价的 PKCE 登录
- [x] OTP 登录：按 RN 验证码逻辑（`otpLength`, `expiresIn`, `requestId`）
- [x] Portal 选择器：迁移 `constants/portals.ts` 与 UI
- [x] AuthGuard：实现 `withAuthScreen` 等价逻辑（`idle` -> loading）
- [x] Token 持久化：`flutter_secure_storage` + 内存 fallback

**验收**：
- OTP/Google 登录成功后可进入首页
- Token 写入 storage，重启仍保持登录态

### 阶段 E：核心电商模块
1) **首页/分类/搜索**
- [x] 首页 TopNav + PremiumDupe + FlashSale + QuickEntry + 推荐流
- [x] 分类页三层分类逻辑与跳转
- [x] 搜索历史 LRU10 与搜索结果排序/过滤逻辑

2) **商品详情**
- [x] SKU 选择逻辑（`normalizeSelection` / `findMatchingSku`）
- [x] 详情/评价 Tab + 图片翻译
- [x] 相似商品、收藏

3) **购物车**
- [x] 默认全选可用 SKU
- [x] 数量修改、删除、价格计算
- [x] Checkout 跳转携带 sku 列表

4) **结算/订单/支付**
- [x] Checkout 优惠券自动应用逻辑
- [x] Order submit -> Pay 页面参数
- [x] Payment Methods + 发起支付 + WebView 收银台 + deep link 回调
- [x] 支付结果轮询 & 状态文案
- [x] Order List + 状态统计

**验收**：主流程（搜索 -> 详情 -> 加购 -> 结算 -> 支付）跑通。

### 阶段 F：账户中心与资产模块
- [x] 个人资料编辑（含头像上传）
- [x] 地址管理（国家/州/省逻辑、默认地址）
- [x] 优惠券、收藏（本地）
- [x] Wallet / Rebate / Transactions（含 mock fallback）

**验收**：用户中心功能完整。

### 阶段 G：社区/KOL/专题/Flash Sale
- [x] Community 列表 & 点赞（mock fallback 保留）
- [x] KOL 跳转逻辑
- [x] Topic 分享与商品列表
- [x] Flash Sale：活动/类目/商品列表 + 倒计时逻辑

**验收**：活动/专题/社区可用。

### 阶段 H：AI Fashion 模块
- [x] Fashion Feed（瀑布流）
- [x] Style Me（选项 sheet + 上传 + generate）
- [x] Model Settings / Custom Model / Outfit Result / History / Post Detail
- [x] 轮询逻辑与动画组件

**验收**：AI Fashion 全流程可跑通。

---

## 5. Hooks/State 对照表（必须逐一落地）

| RN Hook / Module | Flutter 对应 | 关键逻辑 |
| --- | --- | --- |
| `useCart` | `CartQueryProvider` | staleTime=30s, invalidate on update | [x] |
| `useCartPricing` | `CartPricingProvider` | enabled when items>0 | [x] |
| `useAddToCart` | `CartMutation` | invalidate cart & pricing | [x] |
| `useProductDetail` | `ProductDetailProvider` | 并发获取 detail + skus | [x] |
| `useSearchProducts` | `SearchPagingProvider` | sort/order 与 filters 保持一致 | [x] |
| `useOrderList` | `OrderListPaging` | frontStatus & pagination | [x] |
| `usePaymentResult` | `PaymentResultProvider` | refetchInterval=3000ms | [x] |
| `useGoogleAuth` | `GoogleAuthService` | PKCE + id_token 解析 | [x] |
| `useOutfitResult` | `OutfitResultProvider` | polling 2s until terminal | [x] |
| `useFavorites` | `FavoritesStore` | local storage key 保持一致 | [x] |
| `searchHistory` | `SearchHistoryStore` | LRU 10 条 | [x] |

> 实现时需补全所有 hooks（见 `hooks/` 目录）并逐一对照。

---

## 6. 逻辑继承 Checklist（建议逐条核对）
- [x] 请求头注入逻辑完全一致
- [x] 401 清会话 + UI 行为一致
- [x] OTP 验证逻辑与错误处理一致
- [x] 购物车自动勾选逻辑一致
- [x] 优惠券自动应用/取消逻辑一致
- [x] 订单支付 `thirdPayParam` 解析逻辑一致
- [x] AI Fashion 轮询终止条件一致
- [x] Mock fallback 行为一致（Community/Wallet）
- [x] 搜索历史与收藏存储 key 与行为一致
- [x] Theme tokens 与颜色映射一致

---

## 7. 测试与验收（推荐）

### 单元测试
- 数据解析：`product/cart/order/pay/address` 等 mapper
- `ApiError`/`error-handler` 行为
- 搜索历史 LRU、收藏 add/remove

### Widget/UI 测试
- 登录页表单校验
- SKU 选择弹层
- 购物车勾选/数量修改
- 支付页 WebView 拦截

### 集成测试
- 登录 -> 首页 -> 详情 -> 加购 -> 结算 -> 支付 -> 订单列表
- 搜索 -> 筛选 -> 查看商品
- AI Fashion: StyleMe -> Generate -> Result

---

## 8. 风险与依赖
- Swagger 与真实接口不一致 → 需保留 RN fallback/mapping
- 支付渠道差异 → 保持 WebView 收银台方案
- OAuth scheme 不一致 → 必须保持 `w2capp` scheme
- 部分模块当前依赖 mock（Community/Wallet）→ Flutter 同样保留 mock 逻辑

---

## 9. 交付物清单
- Flutter 代码仓库（全功能迁移）
- 迁移对照表（RN -> Flutter 模块映射）
- 测试用例与报告
- 运行与构建说明（dev/stage/prod）