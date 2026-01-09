# Flutter Migration Verification Plan

> **Goal**: Evaluate the current Flutter implementation against the original React Native application( in `vendor/rn`) to identify missing content, style discrepancies, and functional gaps.

## 0. Verification Strategy
**Golden Rule**: The React Native (RN) app (or its recordings/screenshots) is the **single source of truth**.
- **Visuals**: Pixel alignment, font weights, colors, shadows, corner radii.
- **Interactions**: Tap effects, page transitions, loading states, scroll physics.
- **Content**: Data completeness (badges, subtitles, empty states).

## 1. Global UI/UX Standards Checklist
Verify generic elements used across the app.

- [ ] **Typography System**
    - [ ] Headings (Sizes, Weights) match RN.
    - [ ] Body text (Line heights, Colors) match RN.
    - [ ] "Price" display formatting (Currency symbol, decimals, strikethrough style).
- [ ] **Color Palette**
    - [ ] Primary/Secondary brand colors.
    - [ ] Background colors (Off-white vs Pure white).
    - [ ] Text colors (Primary, Secondary, Disabled/Hint).
- [ ] **Core Components**
    - [ ] `ProductCard`:
        - **Flutter**: `lib/shared/widgets/product_card.dart`
        - **RN Ref**: `components/product/ProductCard.tsx` (Estimated)
        - [ ] **Gap**: Missing Discount Tag (e.g., "-30%").
        - [ ] **Gap**: Missing Rating/Review count (e.g., "⭐ 4.9 (200)").
        - [ ] **Gap**: Missing Favorite/Heart icon overlay.
        - [ ] Image aspect ratio and "broken image" fallback style.
    - [ ] `ThemedButton`:
        - **Flutter**: `lib/shared/widgets/themed_button.dart`
        - **RN Ref**: `components/ui/ThemedButton.tsx` (Estimated)
        - [ ] Loading state (Spinner placement).
        - [ ] Disabled state visual (Opacity/Color).
        - [ ] Tap feedback (Ripple vs Opacity change).
    - [ ] `Input` fields:
        - **Flutter**: `lib/shared/widgets/input_field.dart`
        - **RN Ref**: `components/ui/Input.tsx` (Estimated)
        - [ ] Focus border color.
        - [ ] Error message style and placement.
        - [ ] Clear (x) button visibility.
- [ ] **Feedback Mechanisms**
    - [ ] **Gap**: Toast/Snackbars (e.g., "Added to Cart") - currently likely missing or default.
    - [ ] **Gap**: Loading Skeletons (Shimmer) vs simple `CircularProgressIndicator`.
    - [ ] **Gap**: Empty States (for Search, Cart, Orders) - Need specific illustrations/text.

## 2. Feature-Specific Verification

### 2.1 Home & Discovery
**Flutter**: `lib/features/home/home_screen.dart`
**RN Ref**: `app/(tabs)/index.tsx`

- [ ] **Home Screen**:
    - [ ] **Banner**: Auto-play behavior, Pagination dots styling.
    - [ ] **Header**: Search bar transition/stickiness on scroll.
    - [ ] **Categories**: Icon sizing + Text alignment.
    - [ ] **Flash Sale**: Countdown timer format (HH:MM:SS), Progress bar visual.
      - **Flutter**: `lib/features/flash_sale/presentation/flash_sale_screen.dart`
      - **RN Ref**: `app/flash-sale/index.tsx`
- [ ] **Search & Categories**:
    - [ ] **Screen**: `lib/features/search/presentation/search_screen.dart` vs `app/search/index.tsx`
    - [ ] **Categories**: `lib/features/catalog/categories_screen.dart` vs `app/(tabs)/categories.tsx`
    - [ ] **Filter/Sort**: Bottom sheet design matches RN? content complete?
    - [ ] **History**: LRU logic works, "Clear History" button presence.

### 2.2 Product Detail (PDP)
**Flutter**: `lib/features/product/product_detail_screen.dart`
**RN Ref**: `app/product/[productCode].tsx`

- [ ] **Image Gallery**:
    - [ ] Pagination indicator (1/5 vs dots).
    - [ ] Zoom capability.
- [ ] **Info Section**:
    - [ ] Price sizing/color dominance.
    - [ ] VAT/Tax info text presence.
- [ ] **SKU Selection**:
    - [ ] Visual style of Chips (Selected vs Unselected vs Disabled).
    - [ ] **Gap**: Is the logic for "disabling incompatible combinations" visual?
- [ ] **Description**:
    - [ ] HTML rendering quality (embedded images/tables).
- [ ] **Review Section**:
    - [ ] Summary Header (Stars distribution bar).
    - [ ] User avatar and image attachment styling.
- [ ] **Bottom Bar**:
    - [ ] "Add to Cart" vs "Buy Now" button layout.
    - [ ] Cart icon badge update animation.

### 2.3 Cart & Checkout
- [ ] **Cart**:
    - **Flutter**: `lib/features/cart/cart_screen.dart`
    - **RN Ref**: `app/(tabs)/cart.tsx`
    - [ ] "Select All" behavior and visual.
    - [ ] Quantity stepper (- 1 +) style and fast-tap handling.
    - [ ] "Swipe to modify/delete" or "Edit" mode toggle.
    - [ ] Price breakdown (Subtotal, Savings, Shipping).
- [ ] **Checkout**:
    - **Flutter**: `lib/features/checkout/presentation/checkout_screen.dart`
    - **RN Ref**: `app/checkout.tsx`
    - [ ] Address Card selection visual.
    - [ ] Payment Method radio button style.
    - [ ] **Coupon**:
        - [ ] "Apply" button placement.
        - [ ] Selected coupon visual indicator.
    - [ ] **Order Note**: Input field presence.

### 2.4 Order & Payment
- [ ] **Payment Page**:
    - **Flutter**: `lib/features/checkout/presentation/payment_screen.dart`
    - **RN Ref**: `app/order/[orderId]/pay.tsx`
    - [ ] WebView standard header vs Custom header.
    - [ ] Timer/Timeout display.
- [ ] **Order List**:
    - **Flutter**: `lib/features/order/presentation/order_list_screen.dart`
    - **RN Ref**: `app/order/index.tsx`
    - [ ] Tabs (All, Unpaid, shipped, etc.) styling.
    - [ ] Status Badge colors (Paid=Green, Cancelled=Gray, etc.).
    - [ ] "Pay Now" / "Track" button visibility per status.

### 2.5 Auth & User Center
- [ ] **Sign In / Up**:
    - **Flutter**: `lib/features/auth/sign_in_screen.dart`
    - **RN Ref**: `app/(auth)/sign-in.tsx`
    - [ ] Social Login button logos (Google, etc.) sizing/brand compliance.
    - [ ] Divider "Or continue with" styling.
- [ ] **User Profile**:
    - **Flutter**: `lib/features/account/account_screen.dart`
    - **RN Ref**: `app/(tabs)/account.tsx`
    - [ ] Avatar upload progress visual.
    - [ ] List tile icons and arrow styles.

### 2.6 AI Fashion
- [ ] **Style Me** (Main):
    - **Flutter**: `lib/features/ai_fashion/presentation/ai_fashion_screen.dart`
    - **RN Ref**: `app/fashion/style-me.tsx`
    - [ ] preset selection scroll physics.
    - [ ] Upload area dashed border/instruction text.
- [ ] **Result Generation**:
    - **Flutter**: `lib/features/ai_fashion/presentation/outfit_result_screen.dart`
    - **RN Ref**: `app/fashion/outfit-result.tsx`
    - [ ] Loading animation (Lottie?) logic.
    - [ ] Result comparison (Before/After) if applicable.
- [ ] **Model Settings**:
    - **Flutter**: `lib/features/ai_fashion/presentation/model_settings_screen.dart`
    - **RN Ref**: `app/fashion/model-settings.tsx`
- [ ] **Custom Model**:
    - **Flutter**: `lib/features/ai_fashion/presentation/custom_model_screen.dart`
    - **RN Ref**: `app/fashion/custom-model.tsx`
- [ ] **History**:
    - **Flutter**: `lib/features/ai_fashion/presentation/history_screen.dart`
    - **RN Ref**: `app/fashion/history.tsx`
- [ ] **Post Detail**:
    - **Flutter**: `lib/features/ai_fashion/presentation/post_detail_screen.dart`
    - **RN Ref**: `app/fashion/post/[id].tsx`

## 3. Recommended Action Plan
1.  **Audit**: Go through the app screen-by-screen with the RN app side-by-side.
2.  **Log**: Mark items in this list as [Fail] and create specific tasks for them.
3.  **Implement**:
    - Create a `ProductCard` that is feature-rich.
    - Implement a `Skeleton` loader widget.
    - Refine `Theme` to match RN exact hex codes.
    - Add missing "Empty State" widgets.
