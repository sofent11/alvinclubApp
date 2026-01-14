import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';
import '../api/generated/swaggerApiCombo.swagger.dart' as combo;

class AiModel {
  const AiModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.gender,
    this.age,
    this.ethnicity,
  });

  final String id;
  final String name;
  final String imageUrl;
  final String? gender;
  final String? age;
  final String? ethnicity;
}

class AiFashionSelectionOption {
  const AiFashionSelectionOption({required this.key, required this.options});

  final String key;
  final List<AiFashionOptionItem> options;
}

class AiFashionOptionItem {
  const AiFashionOptionItem({required this.label, required this.value});

  final String label;
  final String value;
}

class AiFashionPost {
  const AiFashionPost({
    required this.id,
    required this.title,
    required this.imageUrl,
    this.prompt,
    this.width,
    this.height,
  });

  final String id;
  final String title;
  final String imageUrl;
  final String? prompt;
  final double? width;
  final double? height;
}

class AiFashionHistoryItem {
  const AiFashionHistoryItem({
    required this.taskId,
    required this.status,
    this.imageUrl,
    required this.createdAt,
    this.prompt,
  });

  final String taskId;
  final String status;
  final String? imageUrl;
  final DateTime createdAt;
  final String? prompt;
}

class AiFashionGenerateResult {
  const AiFashionGenerateResult({
    required this.taskId,
    required this.status,
    this.imageUrl,
  });

  final String taskId;
  final String status;
  final String? imageUrl;

  bool get isTerminal =>
      status == 'COMPLETED' ||
      status == 'SUCCESS' ||
      status == 'FAILED' ||
      status == 'TIMEOUT' ||
      status == 'CANCELED';

  bool get isSuccess => status == 'COMPLETED' || status == 'SUCCESS';
}

class BodyShapeItem {
  const BodyShapeItem({
    required this.image,
    required this.gender,
    required this.age,
    required this.race,
    this.body,
    this.style,
  });

  final String image;
  final String gender;
  final String age;
  final String race;
  final String? body;
  final String? style;
}

class FashionModel {
  const FashionModel({
    required this.id,
    required this.modelId,
    required this.imageUrl,
    this.headerImageUrl,
    this.groupId,
  });

  final String id;
  final String modelId;
  final String imageUrl;
  final String? headerImageUrl;
  final int? groupId;
}

class FashionModelGroup {
  const FashionModelGroup({
    required this.groupId,
    required this.title,
    required this.models,
  });

  final int groupId;
  final String title;
  final List<FashionModel> models;
}

class GeneratedModelItem {
  const GeneratedModelItem({
    required this.index,
    required this.url,
    this.headerUrl,
  });

  final int index;
  final String url;
  final String? headerUrl;
}

class AiFashionPreset {
  const AiFashionPreset({
    this.referenceImages = const [],
    this.occasion,
    this.styleTrendyElements,
    this.prompt,
    this.modelInfo,
    this.templateId,
  });

  final List<String> referenceImages;
  final String? occasion;
  final String? styleTrendyElements;
  final String? prompt;
  final FashionModel? modelInfo;
  final int? templateId;
}

class CustomModelStatus {
  const CustomModelStatus({
    required this.modelId,
    required this.status,
    this.generatedModels = const [],
    this.modelImage,
    this.error,
  });

  final String modelId;
  final String status;
  final List<GeneratedModelItem> generatedModels;
  final String? modelImage;
  final String? error;

  bool get isSuccess => status == 'SUCCESS' || status == 'COMPLETED';
}

class AiFashionRepository {
  AiFashionRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<List<AiModel>> getModels() async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionModelListGet();

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取模型列表失败', body ?? response.error);
    }

    final groups = body.data?.models ?? const [];
    final flat = groups.expand((g) => g.data ?? const []).toList();

    return flat
        .map((item) {
          final modelId = item.modelId ?? '';
          final imageUrl = item.modelImage ?? '';
          if (modelId.isEmpty || imageUrl.isEmpty) return null;

          return AiModel(
            id: modelId,
            name: item.modelDesc?.trim().isNotEmpty == true
                ? item.modelDesc!.trim()
                : 'Model',
            imageUrl: imageUrl,
            gender: null,
            age: null,
            ethnicity: null,
          );
        })
        .whereType<AiModel>()
        .toList();
  }

  Future<List<AiFashionSelectionOption>> getSelectionOptions() async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionNoAuthSelectOptionGet();

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取选项失败', body ?? response.error);
    }

    final list = body.data?.selectionList ?? const [];
    return list
        .map((item) {
          final options = (item.data ?? const [])
              .map(
                (o) => AiFashionOptionItem(
                  label: o.label ?? '',
                  value: o.value ?? '',
                ),
              )
              .toList();

          return AiFashionSelectionOption(
            key: item.key ?? '',
            options: options,
          );
        })
        .whereType<AiFashionSelectionOption>()
        .toList();
  }

  Future<List<AiFashionPost>> getFashionPosts({
    String? cursor,
    int pageSize = 10,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionNoAuthPostListGet(
      cursor: cursor,
      pageSize: pageSize.toString(),
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取穿搭列表失败', body ?? response.error);
    }

    final posts = body.data?.posts ?? const [];
    return posts
        .map((item) {
          final frontImage = item.frontImage;
          return AiFashionPost(
            id: item.postId.toString(),
            title: item.postTitle ?? '',
            imageUrl: frontImage?.url ?? '',
            prompt: item.prompt,
            width: frontImage?.width,
            height: frontImage?.height,
          );
        })
        .whereType<AiFashionPost>()
        .toList();
  }

  Future<AiFashionPost?> getPostDetail(String postId) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionNoAuthPostDetailGet(
      postId: postId,
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取穿搭详情失败', body ?? response.error);
    }

    final data = body.data;
    if (data == null) return null;

    final frontImage = data.frontImage;
    return AiFashionPost(
      id: data.postId?.toString() ?? postId,
      title: data.postTitle ?? '',
      imageUrl: frontImage?.url ?? '',
      prompt: data.prompt,
      width: frontImage?.width,
      height: frontImage?.height,
    );
  }

  Future<List<AiFashionHistoryItem>> getHistory({
    int pageNum = 1,
    int pageSize = 20,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsResultPageGet(
      pageNum: pageNum.toString(),
      pageSize: pageSize.toString(),
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取记录失败', body ?? response.error);
    }

    final records = body.data?.records ?? const [];
    return records
        .map((item) {
          final createdAtMs = item.createdAt?.toInt() ?? 0;
          return AiFashionHistoryItem(
            taskId: item.taskId ?? '',
            status: item.status ?? '',
            imageUrl: item.finalOutfitImage,
            createdAt: DateTime.fromMillisecondsSinceEpoch(createdAtMs),
            prompt: item.requestParams?.customPrompt,
          );
        })
        .whereType<AiFashionHistoryItem>()
        .toList();
  }

  Future<String> initiateGeneration({
    required String? modelId,
    String? productImageUrl,
    String? customPrompt,
    String? styleTrendyElements,
    Map<String, String>? selections,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsGeneratePost(
      root: combo.ComboServiceApiV1StyleOutfitsGeneratePostRequest(
        modelImageUrl: productImageUrl,
        customModelId: modelId,
        customPrompt: customPrompt,
        styleTrendyElements: styleTrendyElements,
        selections: selections == null
            ? null
            : combo
                  .ComboServiceApiV1StyleOutfitsGeneratePostRequest$Selections.fromJson(
                selections,
              ),
        count: 1,
      ),
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('发起生成失败', body ?? response.error);
    }

    return body.data?.taskId ?? '';
  }

  Future<AiFashionGenerateResult> getGenerationStatus(String taskId) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsResultGet(
      taskId: taskId,
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('查询状态失败', body ?? response.error);
    }

    final data = body.data;
    if (data == null) {
      return AiFashionGenerateResult(taskId: taskId, status: 'UNKNOWN');
    }

    return AiFashionGenerateResult(
      taskId: data.taskId ?? taskId,
      status: data.status ?? '',
      imageUrl: data.finalOutfitImage,
    );
  }

  Future<Map<String, List<BodyShapeItem>>> getBodyShapes() async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionNoAuthBodyShapeGet();

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取身形列表失败', body ?? response.error);
    }

    final data = body.data;
    final female = (data?.female ?? const [])
        .map(
          (item) => BodyShapeItem(
            image: item.image ?? '',
            gender: item.gender ?? 'female',
            age: item.age ?? '',
            race: item.race ?? '',
            body: item.body,
            style: item.style,
          ),
        )
        .toList();

    final male = (data?.male ?? const [])
        .map(
          (item) => BodyShapeItem(
            image: item.image ?? '',
            gender: item.gender ?? 'male',
            age: item.age ?? '',
            race: item.race ?? '',
            body: item.body,
            style: item.style,
          ),
        )
        .toList();

    return {'female': female, 'male': male};
  }

  Future<List<FashionModelGroup>> getFashionModels() async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionModelListGet();

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取模特列表失败', body ?? response.error);
    }

    final groups = body.data?.models ?? const [];
    return groups.map((g) {
      final groupId = g.groupId?.toInt() ?? 0;
      final models = (g.data ?? const [])
          .map(
            (m) => FashionModel(
              id: m.id?.toInt().toString() ?? '',
              modelId: m.modelId ?? '',
              imageUrl: m.modelImage ?? '',
              headerImageUrl: m.modelHeaderImage,
              groupId: groupId,
            ),
          )
          .toList();

      return FashionModelGroup(
        groupId: groupId,
        title: g.title ?? '',
        models: models,
      );
    }).toList();
  }

  Future<String> generateCustomModel({
    required String imageUrl,
    required String gender,
    required String age,
    required String race,
    String? bodyShapeModel,
    String? style,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsGenerateModelPost(
      root: combo.ComboServiceApiV1StyleOutfitsGeneratemodelPostRequest(
        imageUrl: imageUrl,
        segmentedGender: gender,
        gender: gender == 'female' ? 2 : 1,
        age: age,
        ethnicity: race,
        bodyShapeModel: bodyShapeModel ?? 'standard',
        hairStyle: style ?? 'short',
        setAsDefault: false,
      ),
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('发起模特生成失败', body ?? response.error);
    }

    return body.data?.taskId ?? '';
  }

  Future<CustomModelStatus> getCustomModelStatus(String modelId) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsModelIdStatusGet(
      modelId: modelId,
      modelId$: modelId,
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('查询模特状态失败', body ?? response.error);
    }

    final data = body.data;
    if (data == null) {
      return CustomModelStatus(modelId: modelId, status: 'UNKNOWN');
    }

    final models = (data.generatedModels ?? const [])
        .map(
          (m) => GeneratedModelItem(
            index: m.index?.toInt() ?? 0,
            url: m.url ?? '',
            headerUrl: null,
          ),
        )
        .toList();

    return CustomModelStatus(
      modelId: modelId,
      status: data.status ?? '',
      generatedModels: models,
      modelImage: data.originalImageUrl,
      error: data.error?.toString(),
    );
  }

  Future<void> saveCustomModel({
    required String taskId,
    required int selectedIndex,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionModelSavePost(
      root: combo.ComboServiceBizAiFashionModelSavePostRequest(
        taskId: taskId,
        selectedIndex: selectedIndex.toDouble(),
      ),
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('保存模特失败', body ?? response.error);
    }
  }

  Future<AiFashionPreset?> getOutfitPreset({
    String? taskId,
    String? templateId,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionNoAuthStylePresetGet(
      taskId: taskId,
      templateId: templateId,
    );

    final body = response.body;
    if (body == null || (body.code?.toInt() ?? -1) != 0) {
      throw _createApiError('获取预设失败', body ?? response.error);
    }

    final data = body.data;
    if (data == null) return null;

    final modelInfoRaw = data.modelInfo;
    final modelInfo = modelInfoRaw == null
        ? null
        : FashionModel(
            id: modelInfoRaw.id?.toInt().toString() ?? '',
            modelId: modelInfoRaw.modelId ?? '',
            imageUrl: modelInfoRaw.modelImage ?? '',
            headerImageUrl: modelInfoRaw.modelHeaderImage,
          );

    final option = data.option;
    final referenceImages = (data.referenceImages ?? const [])
        .map((i) => i.url ?? '')
        .where((u) => u.isNotEmpty)
        .toList();

    return AiFashionPreset(
      referenceImages: referenceImages,
      occasion: option?.occasion,
      styleTrendyElements: option?.styleTrendyElements,
      prompt: data.prompt,
      modelInfo: modelInfo,
      templateId: data.templateId,
    );
  }
}

final aiFashionRepositoryProvider = Provider<AiFashionRepository>((ref) {
  return AiFashionRepository(ref);
});
