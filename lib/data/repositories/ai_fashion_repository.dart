import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

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

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取模型列表失败', body);
    }

    final data = _toList(body['data']);
    return data
        .map((itemRaw) {
          final item = _toMap(itemRaw);
          if (item == null) return null;
          return AiModel(
            id: item['modelId']?.toString() ?? '',
            name: item['modelName']?.toString() ?? 'Model',
            imageUrl: item['imageUrl']?.toString() ?? '',
            gender: item['gender']?.toString(),
            age: item['age']?.toString(),
            ethnicity: item['ethnicity']?.toString(),
          );
        })
        .whereType<AiModel>()
        .toList();
  }

  Future<List<AiFashionSelectionOption>> getSelectionOptions() async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionNoAuthSelectOptionGet();

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取选项失败', body);
    }

    final data = _toMap(body['data']);
    final list = _toList(data?['selectionList']);

    return list
        .map((itemRaw) {
          final item = _toMap(itemRaw);
          if (item == null) return null;
          final options = _toList(item['data']).map((oRaw) {
            final o = _toMap(oRaw);
            return AiFashionOptionItem(
              label: o?['label']?.toString() ?? '',
              value: o?['value']?.toString() ?? '',
            );
          }).toList();
          return AiFashionSelectionOption(
            key: item['key']?.toString() ?? '',
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

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取穿搭列表失败', body);
    }

    final data = _toMap(body['data']);
    final posts = _toList(data?['posts']);
    return posts
        .map((itemRaw) {
          final item = _toMap(itemRaw);
          if (item == null) return null;
          final frontImage = _toMap(item['frontImage']);
          return AiFashionPost(
            id: item['postId']?.toString() ?? '',
            title: item['postTitle']?.toString() ?? '',
            imageUrl: frontImage?['url']?.toString() ?? '',
            prompt: item['prompt']?.toString(),
            width: _toDouble(frontImage?['width']),
            height: _toDouble(frontImage?['height']),
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

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取穿搭详情失败', body);
    }

    final data = _toMap(body['data']);
    if (data == null) return null;

    final frontImage = _toMap(data['frontImage']);
    return AiFashionPost(
      id: data['postId']?.toString() ?? postId,
      title: data['postTitle']?.toString() ?? '',
      imageUrl: frontImage?['url']?.toString() ?? '',
      prompt: data['prompt']?.toString(),
      width: _toDouble(frontImage?['width']),
      height: _toDouble(frontImage?['height']),
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

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取记录失败', body);
    }

    final data = _toMap(body['data']);
    final records = _toList(data?['records']);
    return records
        .map((itemRaw) {
          final item = _toMap(itemRaw);
          if (item == null) return null;
          return AiFashionHistoryItem(
            taskId: item['taskId']?.toString() ?? '',
            status: item['status']?.toString() ?? '',
            imageUrl: item['imgUrl']?.toString(),
            createdAt: DateTime.fromMillisecondsSinceEpoch(
              _parseInt(item['createdAt']),
            ),
            prompt: item['prompt']?.toString(),
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
      root: {
        if (productImageUrl != null) 'modelImageUrl': productImageUrl,
        if (modelId != null) 'customModelId': modelId,
        if (customPrompt != null) 'customPrompt': customPrompt,
        if (styleTrendyElements != null)
          'styleTrendyElements': styleTrendyElements,
        'selections': selections,
        'count': 1,
      },
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('发起生成失败', body);
    }

    final data = _toMap(body['data']);
    return data?['taskId']?.toString() ?? '';
  }

  Future<AiFashionGenerateResult> getGenerationStatus(String taskId) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsResultGet(
      taskId: taskId,
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('查询状态失败', body);
    }

    final data = _toMap(body['data']);
    if (data == null) {
      return AiFashionGenerateResult(taskId: taskId, status: 'UNKNOWN');
    }

    return AiFashionGenerateResult(
      taskId: data['taskId']?.toString() ?? taskId,
      status: data['status']?.toString() ?? '',
      imageUrl: data['imgUrl']?.toString() ?? data['imageUrl']?.toString(),
    );
  }

  Future<Map<String, List<BodyShapeItem>>> getBodyShapes() async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionNoAuthBodyShapeGet();

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取身形列表失败', body);
    }

    final data = _toMap(body['data']);
    final female = _toList(data?['female']).map((m) {
      final item = _toMap(m)!;
      return BodyShapeItem(
        image: item['image']?.toString() ?? '',
        gender: item['gender']?.toString() ?? 'female',
        age: item['age']?.toString() ?? '',
        race: item['race']?.toString() ?? '',
        body: item['body']?.toString(),
        style: item['style']?.toString(),
      );
    }).toList();

    final male = _toList(data?['male']).map((m) {
      final item = _toMap(m)!;
      return BodyShapeItem(
        image: item['image']?.toString() ?? '',
        gender: item['gender']?.toString() ?? 'male',
        age: item['age']?.toString() ?? '',
        race: item['race']?.toString() ?? '',
        body: item['body']?.toString(),
        style: item['style']?.toString(),
      );
    }).toList();

    return {'female': female, 'male': male};
  }

  Future<List<FashionModelGroup>> getFashionModels() async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionModelListGet();

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取模特列表失败', body);
    }

    final data = _toMap(body['data']);
    final groups = _toList(data?['models']);

    return groups.map((gRaw) {
      final g = _toMap(gRaw)!;
      final models = _toList(g['data']).map((mRaw) {
        final m = _toMap(mRaw)!;
        return FashionModel(
          id: m['id']?.toString() ?? '',
          modelId: m['modelId']?.toString() ?? '',
          imageUrl: m['modelImage']?.toString() ?? '',
          headerImageUrl: m['modelHeaderImg']?.toString(),
          groupId: _parseInt(g['groupId']),
        );
      }).toList();

      return FashionModelGroup(
        groupId: _parseInt(g['groupId']),
        title: g['title']?.toString() ?? '',
        models: models,
      );
    }).toList();
  }

  Future<String> generateCustomModel({
    required String imageUrl,
    required String gender,
    required String age,
    required String race,
    String? body,
    String? style,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsGenerateModelPost(
      root: {
        'imageUrl': imageUrl,
        'segmentedGender': gender,
        'gender': gender == 'female' ? 2 : 1,
        'age': age,
        'ethnicity': race,
        'bodyShapeModel': body ?? 'standard',
        'hairStyle': style ?? 'short',
        'setAsDefault': false,
      },
    );

    final bodyMap = _toMap(response.body);
    if (bodyMap == null || _parseInt(bodyMap['code']) != 0) {
      throw _createApiError('发起模特生成失败', bodyMap);
    }

    final data = _toMap(bodyMap['data']);
    return data?['modelId']?.toString() ??
        data?['taskId']?.toString() ??
        data?['task']?.toString() ??
        '';
  }

  Future<CustomModelStatus> getCustomModelStatus(String modelId) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceApiV1StyleOutfitsModelIdStatusGet(
      modelId: modelId,
      modelId$: modelId,
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('查询模特状态失败', body);
    }

    final data = _toMap(body['data'])!;
    final models = _toList(data['generatedModels']).map((mRaw) {
      final m = _toMap(mRaw)!;
      return GeneratedModelItem(
        index: _parseInt(m['index']),
        url: m['url']?.toString() ?? '',
        headerUrl: m['headerUrl']?.toString(),
      );
    }).toList();

    return CustomModelStatus(
      modelId: data['modelId']?.toString() ?? modelId,
      status: data['status']?.toString() ?? '',
      generatedModels: models,
      modelImage: data['modelImage']?.toString(),
      error: data['error']?.toString(),
    );
  }

  Future<void> saveCustomModel({
    required String taskId,
    required int selectedIndex,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionModelSavePost(
      root: {'taskId': taskId, 'selectedIndex': selectedIndex},
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('保存模特失败', body);
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

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('获取预设失败', body);
    }

    final data = _toMap(body['data']);
    if (data == null) return null;

    final modelInfoRaw = _toMap(data['modelInfo']);
    FashionModel? modelInfo;
    if (modelInfoRaw != null) {
      modelInfo = FashionModel(
        id: modelInfoRaw['id']?.toString() ?? '',
        modelId: modelInfoRaw['modelId']?.toString() ?? '',
        imageUrl: modelInfoRaw['modelImage']?.toString() ?? '',
        headerImageUrl: modelInfoRaw['modelHeaderImage']?.toString(),
      );
    }

    final option = _toMap(data['option']);

    return AiFashionPreset(
      referenceImages: _toList(
        data['referenceImages'],
      ).map((i) => _toMap(i)?['url']?.toString() ?? '').toList(),
      occasion: option?['occasion']?.toString(),
      styleTrendyElements: option?['styleTrendyElements']?.toString(),
      prompt: data['prompt']?.toString(),
      modelInfo: modelInfo,
      templateId: _parseInt(data['templateId']),
    );
  }
}

final aiFashionRepositoryProvider = Provider<AiFashionRepository>((ref) {
  return AiFashionRepository(ref);
});

int _parseInt(Object? value, {int fallback = 0}) {
  if (value == null || value == '') return fallback;
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString()) ?? fallback;
}

Map<String, dynamic>? _toMap(Object? value) {
  if (value == null) return null;
  if (value is Map<String, dynamic>) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is Map<String, dynamic>) return decoded;
  } catch (_) {}
  return null;
}

double _toDouble(Object? value, {double fallback = 0.0}) {
  if (value == null || value == '') return fallback;
  if (value is double) return value;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString()) ?? fallback;
}

List<dynamic> _toList(Object? value) {
  if (value == null) return [];
  if (value is List) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is List) return decoded;
  } catch (_) {}
  return [];
}
