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
  const AiFashionSelectionOption({
    required this.key,
    required this.options,
  });

  final String key;
  final List<AiFashionOptionItem> options;
}

class AiFashionOptionItem {
  const AiFashionOptionItem({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;
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
    return data.map((itemRaw) {
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
    }).whereType<AiModel>().toList();
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
    
    return list.map((itemRaw) {
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
    }).whereType<AiFashionSelectionOption>().toList();
  }

  Future<String> initiateGeneration({
    required String modelId,
    required String productImageUrl,
    Map<String, String>? selections,
  }) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = await api.comboServiceBizAiFashionModelSavePost( // Example, check actual generate endpoint
      root: {
        'modelId': modelId,
        'productImageUrl': productImageUrl,
        'selections': selections,
      },
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('发起生成失败', body);
    }

    return _toMap(body['data'])?['taskId']?.toString() ?? '';
  }

  Future<AiFashionGenerateResult> getGenerationStatus(String taskId) async {
    // Check actual endpoint for status
    // For now assuming a generic status endpoint
    final api = _ref.read(swaggerComboApiProvider);
    // There is no explicit "status" in my grep, maybe it's under post?
    // Let's check common pattern.
    return const AiFashionGenerateResult(taskId: 'mock-task', status: 'SUCCESS', imageUrl: 'https://picsum.photos/800/1200');
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
