// ignore_for_file: type=lint
import 'package:todo/infra/api/graphql/scalars.dart';

class Input$AmplifyAIConversationTurnErrorInput {
  factory Input$AmplifyAIConversationTurnErrorInput({
    required String errorType,
    required String message,
  }) => Input$AmplifyAIConversationTurnErrorInput._({
    r'errorType': errorType,
    r'message': message,
  });

  Input$AmplifyAIConversationTurnErrorInput._(this._$data);

  factory Input$AmplifyAIConversationTurnErrorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$errorType = data['errorType'];
    result$data['errorType'] = (l$errorType as String);
    final l$message = data['message'];
    result$data['message'] = (l$message as String);
    return Input$AmplifyAIConversationTurnErrorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get errorType => (_$data['errorType'] as String);

  String get message => (_$data['message'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$errorType = errorType;
    result$data['errorType'] = l$errorType;
    final l$message = message;
    result$data['message'] = l$message;
    return result$data;
  }

  CopyWith$Input$AmplifyAIConversationTurnErrorInput<
    Input$AmplifyAIConversationTurnErrorInput
  >
  get copyWith =>
      CopyWith$Input$AmplifyAIConversationTurnErrorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AmplifyAIConversationTurnErrorInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$errorType = errorType;
    final lOther$errorType = other.errorType;
    if (l$errorType != lOther$errorType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$errorType = errorType;
    final l$message = message;
    return Object.hashAll([l$errorType, l$message]);
  }
}

abstract class CopyWith$Input$AmplifyAIConversationTurnErrorInput<TRes> {
  factory CopyWith$Input$AmplifyAIConversationTurnErrorInput(
    Input$AmplifyAIConversationTurnErrorInput instance,
    TRes Function(Input$AmplifyAIConversationTurnErrorInput) then,
  ) = _CopyWithImpl$Input$AmplifyAIConversationTurnErrorInput;

  factory CopyWith$Input$AmplifyAIConversationTurnErrorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AmplifyAIConversationTurnErrorInput;

  TRes call({String? errorType, String? message});
}

class _CopyWithImpl$Input$AmplifyAIConversationTurnErrorInput<TRes>
    implements CopyWith$Input$AmplifyAIConversationTurnErrorInput<TRes> {
  _CopyWithImpl$Input$AmplifyAIConversationTurnErrorInput(
    this._instance,
    this._then,
  );

  final Input$AmplifyAIConversationTurnErrorInput _instance;

  final TRes Function(Input$AmplifyAIConversationTurnErrorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? errorType = _undefined, Object? message = _undefined}) =>
      _then(
        Input$AmplifyAIConversationTurnErrorInput._({
          ..._instance._$data,
          if (errorType != _undefined && errorType != null)
            'errorType': (errorType as String),
          if (message != _undefined && message != null)
            'message': (message as String),
        }),
      );
}

class _CopyWithStubImpl$Input$AmplifyAIConversationTurnErrorInput<TRes>
    implements CopyWith$Input$AmplifyAIConversationTurnErrorInput<TRes> {
  _CopyWithStubImpl$Input$AmplifyAIConversationTurnErrorInput(this._res);

  TRes _res;

  call({String? errorType, String? message}) => _res;
}

class Input$ModelStringInput {
  factory Input$ModelStringInput({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
    Input$ModelSizeInput? size,
  }) => Input$ModelStringInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (contains != null) r'contains': contains,
    if (notContains != null) r'notContains': notContains,
    if (between != null) r'between': between,
    if (beginsWith != null) r'beginsWith': beginsWith,
    if (attributeExists != null) r'attributeExists': attributeExists,
    if (attributeType != null) r'attributeType': attributeType,
    if (size != null) r'size': size,
  });

  Input$ModelStringInput._(this._$data);

  factory Input$ModelStringInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as String?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('notContains')) {
      final l$notContains = data['notContains'];
      result$data['notContains'] = (l$notContains as String?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('beginsWith')) {
      final l$beginsWith = data['beginsWith'];
      result$data['beginsWith'] = (l$beginsWith as String?);
    }
    if (data.containsKey('attributeExists')) {
      final l$attributeExists = data['attributeExists'];
      result$data['attributeExists'] = (l$attributeExists as bool?);
    }
    if (data.containsKey('attributeType')) {
      final l$attributeType = data['attributeType'];
      result$data['attributeType'] = l$attributeType == null
          ? null
          : fromJson$Enum$ModelAttributeTypes((l$attributeType as String));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$ModelSizeInput.fromJson((l$size as Map<String, dynamic>));
    }
    return Input$ModelStringInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get ne => (_$data['ne'] as String?);

  String? get eq => (_$data['eq'] as String?);

  String? get le => (_$data['le'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get ge => (_$data['ge'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get notContains => (_$data['notContains'] as String?);

  List<String?>? get between => (_$data['between'] as List<String?>?);

  String? get beginsWith => (_$data['beginsWith'] as String?);

  bool? get attributeExists => (_$data['attributeExists'] as bool?);

  Enum$ModelAttributeTypes? get attributeType =>
      (_$data['attributeType'] as Enum$ModelAttributeTypes?);

  Input$ModelSizeInput? get size => (_$data['size'] as Input$ModelSizeInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('notContains')) {
      final l$notContains = notContains;
      result$data['notContains'] = l$notContains;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('beginsWith')) {
      final l$beginsWith = beginsWith;
      result$data['beginsWith'] = l$beginsWith;
    }
    if (_$data.containsKey('attributeExists')) {
      final l$attributeExists = attributeExists;
      result$data['attributeExists'] = l$attributeExists;
    }
    if (_$data.containsKey('attributeType')) {
      final l$attributeType = attributeType;
      result$data['attributeType'] = l$attributeType == null
          ? null
          : toJson$Enum$ModelAttributeTypes(l$attributeType);
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ModelStringInput<Input$ModelStringInput> get copyWith =>
      CopyWith$Input$ModelStringInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelStringInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$notContains = notContains;
    final lOther$notContains = other.notContains;
    if (_$data.containsKey('notContains') !=
        other._$data.containsKey('notContains')) {
      return false;
    }
    if (l$notContains != lOther$notContains) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$beginsWith = beginsWith;
    final lOther$beginsWith = other.beginsWith;
    if (_$data.containsKey('beginsWith') !=
        other._$data.containsKey('beginsWith')) {
      return false;
    }
    if (l$beginsWith != lOther$beginsWith) {
      return false;
    }
    final l$attributeExists = attributeExists;
    final lOther$attributeExists = other.attributeExists;
    if (_$data.containsKey('attributeExists') !=
        other._$data.containsKey('attributeExists')) {
      return false;
    }
    if (l$attributeExists != lOther$attributeExists) {
      return false;
    }
    final l$attributeType = attributeType;
    final lOther$attributeType = other.attributeType;
    if (_$data.containsKey('attributeType') !=
        other._$data.containsKey('attributeType')) {
      return false;
    }
    if (l$attributeType != lOther$attributeType) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$contains = contains;
    final l$notContains = notContains;
    final l$between = between;
    final l$beginsWith = beginsWith;
    final l$attributeExists = attributeExists;
    final l$attributeType = attributeType;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('notContains') ? l$notContains : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('beginsWith') ? l$beginsWith : const {},
      _$data.containsKey('attributeExists') ? l$attributeExists : const {},
      _$data.containsKey('attributeType') ? l$attributeType : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelStringInput<TRes> {
  factory CopyWith$Input$ModelStringInput(
    Input$ModelStringInput instance,
    TRes Function(Input$ModelStringInput) then,
  ) = _CopyWithImpl$Input$ModelStringInput;

  factory CopyWith$Input$ModelStringInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelStringInput;

  TRes call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
    Input$ModelSizeInput? size,
  });
  CopyWith$Input$ModelSizeInput<TRes> get size;
}

class _CopyWithImpl$Input$ModelStringInput<TRes>
    implements CopyWith$Input$ModelStringInput<TRes> {
  _CopyWithImpl$Input$ModelStringInput(this._instance, this._then);

  final Input$ModelStringInput _instance;

  final TRes Function(Input$ModelStringInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? contains = _undefined,
    Object? notContains = _undefined,
    Object? between = _undefined,
    Object? beginsWith = _undefined,
    Object? attributeExists = _undefined,
    Object? attributeType = _undefined,
    Object? size = _undefined,
  }) => _then(
    Input$ModelStringInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as String?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (le != _undefined) 'le': (le as String?),
      if (lt != _undefined) 'lt': (lt as String?),
      if (ge != _undefined) 'ge': (ge as String?),
      if (gt != _undefined) 'gt': (gt as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (notContains != _undefined) 'notContains': (notContains as String?),
      if (between != _undefined) 'between': (between as List<String?>?),
      if (beginsWith != _undefined) 'beginsWith': (beginsWith as String?),
      if (attributeExists != _undefined)
        'attributeExists': (attributeExists as bool?),
      if (attributeType != _undefined)
        'attributeType': (attributeType as Enum$ModelAttributeTypes?),
      if (size != _undefined) 'size': (size as Input$ModelSizeInput?),
    }),
  );

  CopyWith$Input$ModelSizeInput<TRes> get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Input$ModelSizeInput.stub(_then(_instance))
        : CopyWith$Input$ModelSizeInput(local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Input$ModelStringInput<TRes>
    implements CopyWith$Input$ModelStringInput<TRes> {
  _CopyWithStubImpl$Input$ModelStringInput(this._res);

  TRes _res;

  call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
    Input$ModelSizeInput? size,
  }) => _res;

  CopyWith$Input$ModelSizeInput<TRes> get size =>
      CopyWith$Input$ModelSizeInput.stub(_res);
}

class Input$ModelIntInput {
  factory Input$ModelIntInput({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  }) => Input$ModelIntInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (between != null) r'between': between,
    if (attributeExists != null) r'attributeExists': attributeExists,
    if (attributeType != null) r'attributeType': attributeType,
  });

  Input$ModelIntInput._(this._$data);

  factory Input$ModelIntInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as int?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('attributeExists')) {
      final l$attributeExists = data['attributeExists'];
      result$data['attributeExists'] = (l$attributeExists as bool?);
    }
    if (data.containsKey('attributeType')) {
      final l$attributeType = data['attributeType'];
      result$data['attributeType'] = l$attributeType == null
          ? null
          : fromJson$Enum$ModelAttributeTypes((l$attributeType as String));
    }
    return Input$ModelIntInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get ne => (_$data['ne'] as int?);

  int? get eq => (_$data['eq'] as int?);

  int? get le => (_$data['le'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get ge => (_$data['ge'] as int?);

  int? get gt => (_$data['gt'] as int?);

  List<int?>? get between => (_$data['between'] as List<int?>?);

  bool? get attributeExists => (_$data['attributeExists'] as bool?);

  Enum$ModelAttributeTypes? get attributeType =>
      (_$data['attributeType'] as Enum$ModelAttributeTypes?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('attributeExists')) {
      final l$attributeExists = attributeExists;
      result$data['attributeExists'] = l$attributeExists;
    }
    if (_$data.containsKey('attributeType')) {
      final l$attributeType = attributeType;
      result$data['attributeType'] = l$attributeType == null
          ? null
          : toJson$Enum$ModelAttributeTypes(l$attributeType);
    }
    return result$data;
  }

  CopyWith$Input$ModelIntInput<Input$ModelIntInput> get copyWith =>
      CopyWith$Input$ModelIntInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelIntInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$attributeExists = attributeExists;
    final lOther$attributeExists = other.attributeExists;
    if (_$data.containsKey('attributeExists') !=
        other._$data.containsKey('attributeExists')) {
      return false;
    }
    if (l$attributeExists != lOther$attributeExists) {
      return false;
    }
    final l$attributeType = attributeType;
    final lOther$attributeType = other.attributeType;
    if (_$data.containsKey('attributeType') !=
        other._$data.containsKey('attributeType')) {
      return false;
    }
    if (l$attributeType != lOther$attributeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    final l$attributeExists = attributeExists;
    final l$attributeType = attributeType;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('attributeExists') ? l$attributeExists : const {},
      _$data.containsKey('attributeType') ? l$attributeType : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelIntInput<TRes> {
  factory CopyWith$Input$ModelIntInput(
    Input$ModelIntInput instance,
    TRes Function(Input$ModelIntInput) then,
  ) = _CopyWithImpl$Input$ModelIntInput;

  factory CopyWith$Input$ModelIntInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelIntInput;

  TRes call({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  });
}

class _CopyWithImpl$Input$ModelIntInput<TRes>
    implements CopyWith$Input$ModelIntInput<TRes> {
  _CopyWithImpl$Input$ModelIntInput(this._instance, this._then);

  final Input$ModelIntInput _instance;

  final TRes Function(Input$ModelIntInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
    Object? attributeExists = _undefined,
    Object? attributeType = _undefined,
  }) => _then(
    Input$ModelIntInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as int?),
      if (eq != _undefined) 'eq': (eq as int?),
      if (le != _undefined) 'le': (le as int?),
      if (lt != _undefined) 'lt': (lt as int?),
      if (ge != _undefined) 'ge': (ge as int?),
      if (gt != _undefined) 'gt': (gt as int?),
      if (between != _undefined) 'between': (between as List<int?>?),
      if (attributeExists != _undefined)
        'attributeExists': (attributeExists as bool?),
      if (attributeType != _undefined)
        'attributeType': (attributeType as Enum$ModelAttributeTypes?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelIntInput<TRes>
    implements CopyWith$Input$ModelIntInput<TRes> {
  _CopyWithStubImpl$Input$ModelIntInput(this._res);

  TRes _res;

  call({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  }) => _res;
}

class Input$ModelFloatInput {
  factory Input$ModelFloatInput({
    double? ne,
    double? eq,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    List<double?>? between,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  }) => Input$ModelFloatInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (between != null) r'between': between,
    if (attributeExists != null) r'attributeExists': attributeExists,
    if (attributeType != null) r'attributeType': attributeType,
  });

  Input$ModelFloatInput._(this._$data);

  factory Input$ModelFloatInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as num?)?.toDouble();
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as num?)?.toDouble();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('attributeExists')) {
      final l$attributeExists = data['attributeExists'];
      result$data['attributeExists'] = (l$attributeExists as bool?);
    }
    if (data.containsKey('attributeType')) {
      final l$attributeType = data['attributeType'];
      result$data['attributeType'] = l$attributeType == null
          ? null
          : fromJson$Enum$ModelAttributeTypes((l$attributeType as String));
    }
    return Input$ModelFloatInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get ne => (_$data['ne'] as double?);

  double? get eq => (_$data['eq'] as double?);

  double? get le => (_$data['le'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get ge => (_$data['ge'] as double?);

  double? get gt => (_$data['gt'] as double?);

  List<double?>? get between => (_$data['between'] as List<double?>?);

  bool? get attributeExists => (_$data['attributeExists'] as bool?);

  Enum$ModelAttributeTypes? get attributeType =>
      (_$data['attributeType'] as Enum$ModelAttributeTypes?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('attributeExists')) {
      final l$attributeExists = attributeExists;
      result$data['attributeExists'] = l$attributeExists;
    }
    if (_$data.containsKey('attributeType')) {
      final l$attributeType = attributeType;
      result$data['attributeType'] = l$attributeType == null
          ? null
          : toJson$Enum$ModelAttributeTypes(l$attributeType);
    }
    return result$data;
  }

  CopyWith$Input$ModelFloatInput<Input$ModelFloatInput> get copyWith =>
      CopyWith$Input$ModelFloatInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelFloatInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$attributeExists = attributeExists;
    final lOther$attributeExists = other.attributeExists;
    if (_$data.containsKey('attributeExists') !=
        other._$data.containsKey('attributeExists')) {
      return false;
    }
    if (l$attributeExists != lOther$attributeExists) {
      return false;
    }
    final l$attributeType = attributeType;
    final lOther$attributeType = other.attributeType;
    if (_$data.containsKey('attributeType') !=
        other._$data.containsKey('attributeType')) {
      return false;
    }
    if (l$attributeType != lOther$attributeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    final l$attributeExists = attributeExists;
    final l$attributeType = attributeType;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('attributeExists') ? l$attributeExists : const {},
      _$data.containsKey('attributeType') ? l$attributeType : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelFloatInput<TRes> {
  factory CopyWith$Input$ModelFloatInput(
    Input$ModelFloatInput instance,
    TRes Function(Input$ModelFloatInput) then,
  ) = _CopyWithImpl$Input$ModelFloatInput;

  factory CopyWith$Input$ModelFloatInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelFloatInput;

  TRes call({
    double? ne,
    double? eq,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    List<double?>? between,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  });
}

class _CopyWithImpl$Input$ModelFloatInput<TRes>
    implements CopyWith$Input$ModelFloatInput<TRes> {
  _CopyWithImpl$Input$ModelFloatInput(this._instance, this._then);

  final Input$ModelFloatInput _instance;

  final TRes Function(Input$ModelFloatInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
    Object? attributeExists = _undefined,
    Object? attributeType = _undefined,
  }) => _then(
    Input$ModelFloatInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as double?),
      if (eq != _undefined) 'eq': (eq as double?),
      if (le != _undefined) 'le': (le as double?),
      if (lt != _undefined) 'lt': (lt as double?),
      if (ge != _undefined) 'ge': (ge as double?),
      if (gt != _undefined) 'gt': (gt as double?),
      if (between != _undefined) 'between': (between as List<double?>?),
      if (attributeExists != _undefined)
        'attributeExists': (attributeExists as bool?),
      if (attributeType != _undefined)
        'attributeType': (attributeType as Enum$ModelAttributeTypes?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelFloatInput<TRes>
    implements CopyWith$Input$ModelFloatInput<TRes> {
  _CopyWithStubImpl$Input$ModelFloatInput(this._res);

  TRes _res;

  call({
    double? ne,
    double? eq,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    List<double?>? between,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  }) => _res;
}

class Input$ModelBooleanInput {
  factory Input$ModelBooleanInput({
    bool? ne,
    bool? eq,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  }) => Input$ModelBooleanInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (attributeExists != null) r'attributeExists': attributeExists,
    if (attributeType != null) r'attributeType': attributeType,
  });

  Input$ModelBooleanInput._(this._$data);

  factory Input$ModelBooleanInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('attributeExists')) {
      final l$attributeExists = data['attributeExists'];
      result$data['attributeExists'] = (l$attributeExists as bool?);
    }
    if (data.containsKey('attributeType')) {
      final l$attributeType = data['attributeType'];
      result$data['attributeType'] = l$attributeType == null
          ? null
          : fromJson$Enum$ModelAttributeTypes((l$attributeType as String));
    }
    return Input$ModelBooleanInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get ne => (_$data['ne'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get attributeExists => (_$data['attributeExists'] as bool?);

  Enum$ModelAttributeTypes? get attributeType =>
      (_$data['attributeType'] as Enum$ModelAttributeTypes?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('attributeExists')) {
      final l$attributeExists = attributeExists;
      result$data['attributeExists'] = l$attributeExists;
    }
    if (_$data.containsKey('attributeType')) {
      final l$attributeType = attributeType;
      result$data['attributeType'] = l$attributeType == null
          ? null
          : toJson$Enum$ModelAttributeTypes(l$attributeType);
    }
    return result$data;
  }

  CopyWith$Input$ModelBooleanInput<Input$ModelBooleanInput> get copyWith =>
      CopyWith$Input$ModelBooleanInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelBooleanInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$attributeExists = attributeExists;
    final lOther$attributeExists = other.attributeExists;
    if (_$data.containsKey('attributeExists') !=
        other._$data.containsKey('attributeExists')) {
      return false;
    }
    if (l$attributeExists != lOther$attributeExists) {
      return false;
    }
    final l$attributeType = attributeType;
    final lOther$attributeType = other.attributeType;
    if (_$data.containsKey('attributeType') !=
        other._$data.containsKey('attributeType')) {
      return false;
    }
    if (l$attributeType != lOther$attributeType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$attributeExists = attributeExists;
    final l$attributeType = attributeType;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('attributeExists') ? l$attributeExists : const {},
      _$data.containsKey('attributeType') ? l$attributeType : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelBooleanInput<TRes> {
  factory CopyWith$Input$ModelBooleanInput(
    Input$ModelBooleanInput instance,
    TRes Function(Input$ModelBooleanInput) then,
  ) = _CopyWithImpl$Input$ModelBooleanInput;

  factory CopyWith$Input$ModelBooleanInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelBooleanInput;

  TRes call({
    bool? ne,
    bool? eq,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  });
}

class _CopyWithImpl$Input$ModelBooleanInput<TRes>
    implements CopyWith$Input$ModelBooleanInput<TRes> {
  _CopyWithImpl$Input$ModelBooleanInput(this._instance, this._then);

  final Input$ModelBooleanInput _instance;

  final TRes Function(Input$ModelBooleanInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? attributeExists = _undefined,
    Object? attributeType = _undefined,
  }) => _then(
    Input$ModelBooleanInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (attributeExists != _undefined)
        'attributeExists': (attributeExists as bool?),
      if (attributeType != _undefined)
        'attributeType': (attributeType as Enum$ModelAttributeTypes?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelBooleanInput<TRes>
    implements CopyWith$Input$ModelBooleanInput<TRes> {
  _CopyWithStubImpl$Input$ModelBooleanInput(this._res);

  TRes _res;

  call({
    bool? ne,
    bool? eq,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
  }) => _res;
}

class Input$ModelIDInput {
  factory Input$ModelIDInput({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
    Input$ModelSizeInput? size,
  }) => Input$ModelIDInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (contains != null) r'contains': contains,
    if (notContains != null) r'notContains': notContains,
    if (between != null) r'between': between,
    if (beginsWith != null) r'beginsWith': beginsWith,
    if (attributeExists != null) r'attributeExists': attributeExists,
    if (attributeType != null) r'attributeType': attributeType,
    if (size != null) r'size': size,
  });

  Input$ModelIDInput._(this._$data);

  factory Input$ModelIDInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as String?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('notContains')) {
      final l$notContains = data['notContains'];
      result$data['notContains'] = (l$notContains as String?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('beginsWith')) {
      final l$beginsWith = data['beginsWith'];
      result$data['beginsWith'] = (l$beginsWith as String?);
    }
    if (data.containsKey('attributeExists')) {
      final l$attributeExists = data['attributeExists'];
      result$data['attributeExists'] = (l$attributeExists as bool?);
    }
    if (data.containsKey('attributeType')) {
      final l$attributeType = data['attributeType'];
      result$data['attributeType'] = l$attributeType == null
          ? null
          : fromJson$Enum$ModelAttributeTypes((l$attributeType as String));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$ModelSizeInput.fromJson((l$size as Map<String, dynamic>));
    }
    return Input$ModelIDInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get ne => (_$data['ne'] as String?);

  String? get eq => (_$data['eq'] as String?);

  String? get le => (_$data['le'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get ge => (_$data['ge'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get notContains => (_$data['notContains'] as String?);

  List<String?>? get between => (_$data['between'] as List<String?>?);

  String? get beginsWith => (_$data['beginsWith'] as String?);

  bool? get attributeExists => (_$data['attributeExists'] as bool?);

  Enum$ModelAttributeTypes? get attributeType =>
      (_$data['attributeType'] as Enum$ModelAttributeTypes?);

  Input$ModelSizeInput? get size => (_$data['size'] as Input$ModelSizeInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('notContains')) {
      final l$notContains = notContains;
      result$data['notContains'] = l$notContains;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('beginsWith')) {
      final l$beginsWith = beginsWith;
      result$data['beginsWith'] = l$beginsWith;
    }
    if (_$data.containsKey('attributeExists')) {
      final l$attributeExists = attributeExists;
      result$data['attributeExists'] = l$attributeExists;
    }
    if (_$data.containsKey('attributeType')) {
      final l$attributeType = attributeType;
      result$data['attributeType'] = l$attributeType == null
          ? null
          : toJson$Enum$ModelAttributeTypes(l$attributeType);
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ModelIDInput<Input$ModelIDInput> get copyWith =>
      CopyWith$Input$ModelIDInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelIDInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$notContains = notContains;
    final lOther$notContains = other.notContains;
    if (_$data.containsKey('notContains') !=
        other._$data.containsKey('notContains')) {
      return false;
    }
    if (l$notContains != lOther$notContains) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$beginsWith = beginsWith;
    final lOther$beginsWith = other.beginsWith;
    if (_$data.containsKey('beginsWith') !=
        other._$data.containsKey('beginsWith')) {
      return false;
    }
    if (l$beginsWith != lOther$beginsWith) {
      return false;
    }
    final l$attributeExists = attributeExists;
    final lOther$attributeExists = other.attributeExists;
    if (_$data.containsKey('attributeExists') !=
        other._$data.containsKey('attributeExists')) {
      return false;
    }
    if (l$attributeExists != lOther$attributeExists) {
      return false;
    }
    final l$attributeType = attributeType;
    final lOther$attributeType = other.attributeType;
    if (_$data.containsKey('attributeType') !=
        other._$data.containsKey('attributeType')) {
      return false;
    }
    if (l$attributeType != lOther$attributeType) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$contains = contains;
    final l$notContains = notContains;
    final l$between = between;
    final l$beginsWith = beginsWith;
    final l$attributeExists = attributeExists;
    final l$attributeType = attributeType;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('notContains') ? l$notContains : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('beginsWith') ? l$beginsWith : const {},
      _$data.containsKey('attributeExists') ? l$attributeExists : const {},
      _$data.containsKey('attributeType') ? l$attributeType : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelIDInput<TRes> {
  factory CopyWith$Input$ModelIDInput(
    Input$ModelIDInput instance,
    TRes Function(Input$ModelIDInput) then,
  ) = _CopyWithImpl$Input$ModelIDInput;

  factory CopyWith$Input$ModelIDInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelIDInput;

  TRes call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
    Input$ModelSizeInput? size,
  });
  CopyWith$Input$ModelSizeInput<TRes> get size;
}

class _CopyWithImpl$Input$ModelIDInput<TRes>
    implements CopyWith$Input$ModelIDInput<TRes> {
  _CopyWithImpl$Input$ModelIDInput(this._instance, this._then);

  final Input$ModelIDInput _instance;

  final TRes Function(Input$ModelIDInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? contains = _undefined,
    Object? notContains = _undefined,
    Object? between = _undefined,
    Object? beginsWith = _undefined,
    Object? attributeExists = _undefined,
    Object? attributeType = _undefined,
    Object? size = _undefined,
  }) => _then(
    Input$ModelIDInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as String?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (le != _undefined) 'le': (le as String?),
      if (lt != _undefined) 'lt': (lt as String?),
      if (ge != _undefined) 'ge': (ge as String?),
      if (gt != _undefined) 'gt': (gt as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (notContains != _undefined) 'notContains': (notContains as String?),
      if (between != _undefined) 'between': (between as List<String?>?),
      if (beginsWith != _undefined) 'beginsWith': (beginsWith as String?),
      if (attributeExists != _undefined)
        'attributeExists': (attributeExists as bool?),
      if (attributeType != _undefined)
        'attributeType': (attributeType as Enum$ModelAttributeTypes?),
      if (size != _undefined) 'size': (size as Input$ModelSizeInput?),
    }),
  );

  CopyWith$Input$ModelSizeInput<TRes> get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Input$ModelSizeInput.stub(_then(_instance))
        : CopyWith$Input$ModelSizeInput(local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Input$ModelIDInput<TRes>
    implements CopyWith$Input$ModelIDInput<TRes> {
  _CopyWithStubImpl$Input$ModelIDInput(this._res);

  TRes _res;

  call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    bool? attributeExists,
    Enum$ModelAttributeTypes? attributeType,
    Input$ModelSizeInput? size,
  }) => _res;

  CopyWith$Input$ModelSizeInput<TRes> get size =>
      CopyWith$Input$ModelSizeInput.stub(_res);
}

class Input$ModelSubscriptionStringInput {
  factory Input$ModelSubscriptionStringInput({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    List<String?>? $in,
    List<String?>? notIn,
  }) => Input$ModelSubscriptionStringInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (contains != null) r'contains': contains,
    if (notContains != null) r'notContains': notContains,
    if (between != null) r'between': between,
    if (beginsWith != null) r'beginsWith': beginsWith,
    if ($in != null) r'in': $in,
    if (notIn != null) r'notIn': notIn,
  });

  Input$ModelSubscriptionStringInput._(this._$data);

  factory Input$ModelSubscriptionStringInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as String?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('notContains')) {
      final l$notContains = data['notContains'];
      result$data['notContains'] = (l$notContains as String?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('beginsWith')) {
      final l$beginsWith = data['beginsWith'];
      result$data['beginsWith'] = (l$beginsWith as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    return Input$ModelSubscriptionStringInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get ne => (_$data['ne'] as String?);

  String? get eq => (_$data['eq'] as String?);

  String? get le => (_$data['le'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get ge => (_$data['ge'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get notContains => (_$data['notContains'] as String?);

  List<String?>? get between => (_$data['between'] as List<String?>?);

  String? get beginsWith => (_$data['beginsWith'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get notIn => (_$data['notIn'] as List<String?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('notContains')) {
      final l$notContains = notContains;
      result$data['notContains'] = l$notContains;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('beginsWith')) {
      final l$beginsWith = beginsWith;
      result$data['beginsWith'] = l$beginsWith;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$ModelSubscriptionStringInput<
    Input$ModelSubscriptionStringInput
  >
  get copyWith => CopyWith$Input$ModelSubscriptionStringInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelSubscriptionStringInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$notContains = notContains;
    final lOther$notContains = other.notContains;
    if (_$data.containsKey('notContains') !=
        other._$data.containsKey('notContains')) {
      return false;
    }
    if (l$notContains != lOther$notContains) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$beginsWith = beginsWith;
    final lOther$beginsWith = other.beginsWith;
    if (_$data.containsKey('beginsWith') !=
        other._$data.containsKey('beginsWith')) {
      return false;
    }
    if (l$beginsWith != lOther$beginsWith) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$contains = contains;
    final l$notContains = notContains;
    final l$between = between;
    final l$beginsWith = beginsWith;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('notContains') ? l$notContains : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('beginsWith') ? l$beginsWith : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
                ? null
                : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelSubscriptionStringInput<TRes> {
  factory CopyWith$Input$ModelSubscriptionStringInput(
    Input$ModelSubscriptionStringInput instance,
    TRes Function(Input$ModelSubscriptionStringInput) then,
  ) = _CopyWithImpl$Input$ModelSubscriptionStringInput;

  factory CopyWith$Input$ModelSubscriptionStringInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelSubscriptionStringInput;

  TRes call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    List<String?>? $in,
    List<String?>? notIn,
  });
}

class _CopyWithImpl$Input$ModelSubscriptionStringInput<TRes>
    implements CopyWith$Input$ModelSubscriptionStringInput<TRes> {
  _CopyWithImpl$Input$ModelSubscriptionStringInput(this._instance, this._then);

  final Input$ModelSubscriptionStringInput _instance;

  final TRes Function(Input$ModelSubscriptionStringInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? contains = _undefined,
    Object? notContains = _undefined,
    Object? between = _undefined,
    Object? beginsWith = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) => _then(
    Input$ModelSubscriptionStringInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as String?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (le != _undefined) 'le': (le as String?),
      if (lt != _undefined) 'lt': (lt as String?),
      if (ge != _undefined) 'ge': (ge as String?),
      if (gt != _undefined) 'gt': (gt as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (notContains != _undefined) 'notContains': (notContains as String?),
      if (between != _undefined) 'between': (between as List<String?>?),
      if (beginsWith != _undefined) 'beginsWith': (beginsWith as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
      if (notIn != _undefined) 'notIn': (notIn as List<String?>?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelSubscriptionStringInput<TRes>
    implements CopyWith$Input$ModelSubscriptionStringInput<TRes> {
  _CopyWithStubImpl$Input$ModelSubscriptionStringInput(this._res);

  TRes _res;

  call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    List<String?>? $in,
    List<String?>? notIn,
  }) => _res;
}

class Input$ModelSubscriptionIntInput {
  factory Input$ModelSubscriptionIntInput({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
    List<int?>? $in,
    List<int?>? notIn,
  }) => Input$ModelSubscriptionIntInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (between != null) r'between': between,
    if ($in != null) r'in': $in,
    if (notIn != null) r'notIn': notIn,
  });

  Input$ModelSubscriptionIntInput._(this._$data);

  factory Input$ModelSubscriptionIntInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as int?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    return Input$ModelSubscriptionIntInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get ne => (_$data['ne'] as int?);

  int? get eq => (_$data['eq'] as int?);

  int? get le => (_$data['le'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get ge => (_$data['ge'] as int?);

  int? get gt => (_$data['gt'] as int?);

  List<int?>? get between => (_$data['between'] as List<int?>?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  List<int?>? get notIn => (_$data['notIn'] as List<int?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$ModelSubscriptionIntInput<Input$ModelSubscriptionIntInput>
  get copyWith => CopyWith$Input$ModelSubscriptionIntInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelSubscriptionIntInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
                ? null
                : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelSubscriptionIntInput<TRes> {
  factory CopyWith$Input$ModelSubscriptionIntInput(
    Input$ModelSubscriptionIntInput instance,
    TRes Function(Input$ModelSubscriptionIntInput) then,
  ) = _CopyWithImpl$Input$ModelSubscriptionIntInput;

  factory CopyWith$Input$ModelSubscriptionIntInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelSubscriptionIntInput;

  TRes call({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
    List<int?>? $in,
    List<int?>? notIn,
  });
}

class _CopyWithImpl$Input$ModelSubscriptionIntInput<TRes>
    implements CopyWith$Input$ModelSubscriptionIntInput<TRes> {
  _CopyWithImpl$Input$ModelSubscriptionIntInput(this._instance, this._then);

  final Input$ModelSubscriptionIntInput _instance;

  final TRes Function(Input$ModelSubscriptionIntInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) => _then(
    Input$ModelSubscriptionIntInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as int?),
      if (eq != _undefined) 'eq': (eq as int?),
      if (le != _undefined) 'le': (le as int?),
      if (lt != _undefined) 'lt': (lt as int?),
      if (ge != _undefined) 'ge': (ge as int?),
      if (gt != _undefined) 'gt': (gt as int?),
      if (between != _undefined) 'between': (between as List<int?>?),
      if ($in != _undefined) 'in': ($in as List<int?>?),
      if (notIn != _undefined) 'notIn': (notIn as List<int?>?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelSubscriptionIntInput<TRes>
    implements CopyWith$Input$ModelSubscriptionIntInput<TRes> {
  _CopyWithStubImpl$Input$ModelSubscriptionIntInput(this._res);

  TRes _res;

  call({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
    List<int?>? $in,
    List<int?>? notIn,
  }) => _res;
}

class Input$ModelSubscriptionFloatInput {
  factory Input$ModelSubscriptionFloatInput({
    double? ne,
    double? eq,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    List<double?>? between,
    List<double?>? $in,
    List<double?>? notIn,
  }) => Input$ModelSubscriptionFloatInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (between != null) r'between': between,
    if ($in != null) r'in': $in,
    if (notIn != null) r'notIn': notIn,
  });

  Input$ModelSubscriptionFloatInput._(this._$data);

  factory Input$ModelSubscriptionFloatInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as num?)?.toDouble();
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as num?)?.toDouble();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    return Input$ModelSubscriptionFloatInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get ne => (_$data['ne'] as double?);

  double? get eq => (_$data['eq'] as double?);

  double? get le => (_$data['le'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get ge => (_$data['ge'] as double?);

  double? get gt => (_$data['gt'] as double?);

  List<double?>? get between => (_$data['between'] as List<double?>?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  List<double?>? get notIn => (_$data['notIn'] as List<double?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$ModelSubscriptionFloatInput<Input$ModelSubscriptionFloatInput>
  get copyWith => CopyWith$Input$ModelSubscriptionFloatInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelSubscriptionFloatInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
                ? null
                : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelSubscriptionFloatInput<TRes> {
  factory CopyWith$Input$ModelSubscriptionFloatInput(
    Input$ModelSubscriptionFloatInput instance,
    TRes Function(Input$ModelSubscriptionFloatInput) then,
  ) = _CopyWithImpl$Input$ModelSubscriptionFloatInput;

  factory CopyWith$Input$ModelSubscriptionFloatInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelSubscriptionFloatInput;

  TRes call({
    double? ne,
    double? eq,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    List<double?>? between,
    List<double?>? $in,
    List<double?>? notIn,
  });
}

class _CopyWithImpl$Input$ModelSubscriptionFloatInput<TRes>
    implements CopyWith$Input$ModelSubscriptionFloatInput<TRes> {
  _CopyWithImpl$Input$ModelSubscriptionFloatInput(this._instance, this._then);

  final Input$ModelSubscriptionFloatInput _instance;

  final TRes Function(Input$ModelSubscriptionFloatInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) => _then(
    Input$ModelSubscriptionFloatInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as double?),
      if (eq != _undefined) 'eq': (eq as double?),
      if (le != _undefined) 'le': (le as double?),
      if (lt != _undefined) 'lt': (lt as double?),
      if (ge != _undefined) 'ge': (ge as double?),
      if (gt != _undefined) 'gt': (gt as double?),
      if (between != _undefined) 'between': (between as List<double?>?),
      if ($in != _undefined) 'in': ($in as List<double?>?),
      if (notIn != _undefined) 'notIn': (notIn as List<double?>?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelSubscriptionFloatInput<TRes>
    implements CopyWith$Input$ModelSubscriptionFloatInput<TRes> {
  _CopyWithStubImpl$Input$ModelSubscriptionFloatInput(this._res);

  TRes _res;

  call({
    double? ne,
    double? eq,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    List<double?>? between,
    List<double?>? $in,
    List<double?>? notIn,
  }) => _res;
}

class Input$ModelSubscriptionBooleanInput {
  factory Input$ModelSubscriptionBooleanInput({bool? ne, bool? eq}) =>
      Input$ModelSubscriptionBooleanInput._({
        if (ne != null) r'ne': ne,
        if (eq != null) r'eq': eq,
      });

  Input$ModelSubscriptionBooleanInput._(this._$data);

  factory Input$ModelSubscriptionBooleanInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    return Input$ModelSubscriptionBooleanInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get ne => (_$data['ne'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    return result$data;
  }

  CopyWith$Input$ModelSubscriptionBooleanInput<
    Input$ModelSubscriptionBooleanInput
  >
  get copyWith => CopyWith$Input$ModelSubscriptionBooleanInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelSubscriptionBooleanInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelSubscriptionBooleanInput<TRes> {
  factory CopyWith$Input$ModelSubscriptionBooleanInput(
    Input$ModelSubscriptionBooleanInput instance,
    TRes Function(Input$ModelSubscriptionBooleanInput) then,
  ) = _CopyWithImpl$Input$ModelSubscriptionBooleanInput;

  factory CopyWith$Input$ModelSubscriptionBooleanInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelSubscriptionBooleanInput;

  TRes call({bool? ne, bool? eq});
}

class _CopyWithImpl$Input$ModelSubscriptionBooleanInput<TRes>
    implements CopyWith$Input$ModelSubscriptionBooleanInput<TRes> {
  _CopyWithImpl$Input$ModelSubscriptionBooleanInput(this._instance, this._then);

  final Input$ModelSubscriptionBooleanInput _instance;

  final TRes Function(Input$ModelSubscriptionBooleanInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ne = _undefined, Object? eq = _undefined}) => _then(
    Input$ModelSubscriptionBooleanInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelSubscriptionBooleanInput<TRes>
    implements CopyWith$Input$ModelSubscriptionBooleanInput<TRes> {
  _CopyWithStubImpl$Input$ModelSubscriptionBooleanInput(this._res);

  TRes _res;

  call({bool? ne, bool? eq}) => _res;
}

class Input$ModelSubscriptionIDInput {
  factory Input$ModelSubscriptionIDInput({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    List<String?>? $in,
    List<String?>? notIn,
  }) => Input$ModelSubscriptionIDInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (contains != null) r'contains': contains,
    if (notContains != null) r'notContains': notContains,
    if (between != null) r'between': between,
    if (beginsWith != null) r'beginsWith': beginsWith,
    if ($in != null) r'in': $in,
    if (notIn != null) r'notIn': notIn,
  });

  Input$ModelSubscriptionIDInput._(this._$data);

  factory Input$ModelSubscriptionIDInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as String?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('notContains')) {
      final l$notContains = data['notContains'];
      result$data['notContains'] = (l$notContains as String?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('beginsWith')) {
      final l$beginsWith = data['beginsWith'];
      result$data['beginsWith'] = (l$beginsWith as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    return Input$ModelSubscriptionIDInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get ne => (_$data['ne'] as String?);

  String? get eq => (_$data['eq'] as String?);

  String? get le => (_$data['le'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get ge => (_$data['ge'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get notContains => (_$data['notContains'] as String?);

  List<String?>? get between => (_$data['between'] as List<String?>?);

  String? get beginsWith => (_$data['beginsWith'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get notIn => (_$data['notIn'] as List<String?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('notContains')) {
      final l$notContains = notContains;
      result$data['notContains'] = l$notContains;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('beginsWith')) {
      final l$beginsWith = beginsWith;
      result$data['beginsWith'] = l$beginsWith;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$ModelSubscriptionIDInput<Input$ModelSubscriptionIDInput>
  get copyWith => CopyWith$Input$ModelSubscriptionIDInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelSubscriptionIDInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$notContains = notContains;
    final lOther$notContains = other.notContains;
    if (_$data.containsKey('notContains') !=
        other._$data.containsKey('notContains')) {
      return false;
    }
    if (l$notContains != lOther$notContains) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$beginsWith = beginsWith;
    final lOther$beginsWith = other.beginsWith;
    if (_$data.containsKey('beginsWith') !=
        other._$data.containsKey('beginsWith')) {
      return false;
    }
    if (l$beginsWith != lOther$beginsWith) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$contains = contains;
    final l$notContains = notContains;
    final l$between = between;
    final l$beginsWith = beginsWith;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('notContains') ? l$notContains : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('beginsWith') ? l$beginsWith : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
                ? null
                : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelSubscriptionIDInput<TRes> {
  factory CopyWith$Input$ModelSubscriptionIDInput(
    Input$ModelSubscriptionIDInput instance,
    TRes Function(Input$ModelSubscriptionIDInput) then,
  ) = _CopyWithImpl$Input$ModelSubscriptionIDInput;

  factory CopyWith$Input$ModelSubscriptionIDInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelSubscriptionIDInput;

  TRes call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    List<String?>? $in,
    List<String?>? notIn,
  });
}

class _CopyWithImpl$Input$ModelSubscriptionIDInput<TRes>
    implements CopyWith$Input$ModelSubscriptionIDInput<TRes> {
  _CopyWithImpl$Input$ModelSubscriptionIDInput(this._instance, this._then);

  final Input$ModelSubscriptionIDInput _instance;

  final TRes Function(Input$ModelSubscriptionIDInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? contains = _undefined,
    Object? notContains = _undefined,
    Object? between = _undefined,
    Object? beginsWith = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) => _then(
    Input$ModelSubscriptionIDInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as String?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (le != _undefined) 'le': (le as String?),
      if (lt != _undefined) 'lt': (lt as String?),
      if (ge != _undefined) 'ge': (ge as String?),
      if (gt != _undefined) 'gt': (gt as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (notContains != _undefined) 'notContains': (notContains as String?),
      if (between != _undefined) 'between': (between as List<String?>?),
      if (beginsWith != _undefined) 'beginsWith': (beginsWith as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
      if (notIn != _undefined) 'notIn': (notIn as List<String?>?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelSubscriptionIDInput<TRes>
    implements CopyWith$Input$ModelSubscriptionIDInput<TRes> {
  _CopyWithStubImpl$Input$ModelSubscriptionIDInput(this._res);

  TRes _res;

  call({
    String? ne,
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    String? contains,
    String? notContains,
    List<String?>? between,
    String? beginsWith,
    List<String?>? $in,
    List<String?>? notIn,
  }) => _res;
}

class Input$ModelSizeInput {
  factory Input$ModelSizeInput({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
  }) => Input$ModelSizeInput._({
    if (ne != null) r'ne': ne,
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (between != null) r'between': between,
  });

  Input$ModelSizeInput._(this._$data);

  factory Input$ModelSizeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as int?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    return Input$ModelSizeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get ne => (_$data['ne'] as int?);

  int? get eq => (_$data['eq'] as int?);

  int? get le => (_$data['le'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get ge => (_$data['ge'] as int?);

  int? get gt => (_$data['gt'] as int?);

  List<int?>? get between => (_$data['between'] as List<int?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$ModelSizeInput<Input$ModelSizeInput> get copyWith =>
      CopyWith$Input$ModelSizeInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelSizeInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ne = ne;
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelSizeInput<TRes> {
  factory CopyWith$Input$ModelSizeInput(
    Input$ModelSizeInput instance,
    TRes Function(Input$ModelSizeInput) then,
  ) = _CopyWithImpl$Input$ModelSizeInput;

  factory CopyWith$Input$ModelSizeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelSizeInput;

  TRes call({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
  });
}

class _CopyWithImpl$Input$ModelSizeInput<TRes>
    implements CopyWith$Input$ModelSizeInput<TRes> {
  _CopyWithImpl$Input$ModelSizeInput(this._instance, this._then);

  final Input$ModelSizeInput _instance;

  final TRes Function(Input$ModelSizeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ne = _undefined,
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
  }) => _then(
    Input$ModelSizeInput._({
      ..._instance._$data,
      if (ne != _undefined) 'ne': (ne as int?),
      if (eq != _undefined) 'eq': (eq as int?),
      if (le != _undefined) 'le': (le as int?),
      if (lt != _undefined) 'lt': (lt as int?),
      if (ge != _undefined) 'ge': (ge as int?),
      if (gt != _undefined) 'gt': (gt as int?),
      if (between != _undefined) 'between': (between as List<int?>?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelSizeInput<TRes>
    implements CopyWith$Input$ModelSizeInput<TRes> {
  _CopyWithStubImpl$Input$ModelSizeInput(this._res);

  TRes _res;

  call({
    int? ne,
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
  }) => _res;
}

class Input$ModelTaskFilterInput {
  factory Input$ModelTaskFilterInput({
    Input$ModelStringInput? owner,
    Input$ModelStringInput? title,
    Input$ModelStringInput? description,
    Input$ModelIntInput? order,
    Input$ModelStringInput? datetime,
    Input$ModelStringInput? createdAt,
    Input$ModelStringInput? updatedAt,
    Input$ModelBooleanInput? isCompleted,
    Input$ModelIDInput? id,
    List<Input$ModelTaskFilterInput?>? and,
    List<Input$ModelTaskFilterInput?>? or,
    Input$ModelTaskFilterInput? not,
  }) => Input$ModelTaskFilterInput._({
    if (owner != null) r'owner': owner,
    if (title != null) r'title': title,
    if (description != null) r'description': description,
    if (order != null) r'order': order,
    if (datetime != null) r'datetime': datetime,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
    if (isCompleted != null) r'isCompleted': isCompleted,
    if (id != null) r'id': id,
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
  });

  Input$ModelTaskFilterInput._(this._$data);

  factory Input$ModelTaskFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('owner')) {
      final l$owner = data['owner'];
      result$data['owner'] = l$owner == null
          ? null
          : Input$ModelStringInput.fromJson((l$owner as Map<String, dynamic>));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : Input$ModelStringInput.fromJson((l$title as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$description as Map<String, dynamic>),
            );
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : Input$ModelIntInput.fromJson((l$order as Map<String, dynamic>));
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$datetime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$updatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isCompleted')) {
      final l$isCompleted = data['isCompleted'];
      result$data['isCompleted'] = l$isCompleted == null
          ? null
          : Input$ModelBooleanInput.fromJson(
              (l$isCompleted as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$ModelIDInput.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$ModelTaskFilterInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$ModelTaskFilterInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$ModelTaskFilterInput.fromJson(
              (l$not as Map<String, dynamic>),
            );
    }
    return Input$ModelTaskFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ModelStringInput? get owner =>
      (_$data['owner'] as Input$ModelStringInput?);

  Input$ModelStringInput? get title =>
      (_$data['title'] as Input$ModelStringInput?);

  Input$ModelStringInput? get description =>
      (_$data['description'] as Input$ModelStringInput?);

  Input$ModelIntInput? get order => (_$data['order'] as Input$ModelIntInput?);

  Input$ModelStringInput? get datetime =>
      (_$data['datetime'] as Input$ModelStringInput?);

  Input$ModelStringInput? get createdAt =>
      (_$data['createdAt'] as Input$ModelStringInput?);

  Input$ModelStringInput? get updatedAt =>
      (_$data['updatedAt'] as Input$ModelStringInput?);

  Input$ModelBooleanInput? get isCompleted =>
      (_$data['isCompleted'] as Input$ModelBooleanInput?);

  Input$ModelIDInput? get id => (_$data['id'] as Input$ModelIDInput?);

  List<Input$ModelTaskFilterInput?>? get and =>
      (_$data['and'] as List<Input$ModelTaskFilterInput?>?);

  List<Input$ModelTaskFilterInput?>? get or =>
      (_$data['or'] as List<Input$ModelTaskFilterInput?>?);

  Input$ModelTaskFilterInput? get not =>
      (_$data['not'] as Input$ModelTaskFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('owner')) {
      final l$owner = owner;
      result$data['owner'] = l$owner?.toJson();
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.toJson();
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    if (_$data.containsKey('isCompleted')) {
      final l$isCompleted = isCompleted;
      result$data['isCompleted'] = l$isCompleted?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ModelTaskFilterInput<Input$ModelTaskFilterInput>
  get copyWith => CopyWith$Input$ModelTaskFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelTaskFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (_$data.containsKey('owner') != other._$data.containsKey('owner')) {
      return false;
    }
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$isCompleted = isCompleted;
    final lOther$isCompleted = other.isCompleted;
    if (_$data.containsKey('isCompleted') !=
        other._$data.containsKey('isCompleted')) {
      return false;
    }
    if (l$isCompleted != lOther$isCompleted) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$datetime = datetime;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$isCompleted = isCompleted;
    final l$id = id;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('owner') ? l$owner : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('isCompleted') ? l$isCompleted : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelTaskFilterInput<TRes> {
  factory CopyWith$Input$ModelTaskFilterInput(
    Input$ModelTaskFilterInput instance,
    TRes Function(Input$ModelTaskFilterInput) then,
  ) = _CopyWithImpl$Input$ModelTaskFilterInput;

  factory CopyWith$Input$ModelTaskFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelTaskFilterInput;

  TRes call({
    Input$ModelStringInput? owner,
    Input$ModelStringInput? title,
    Input$ModelStringInput? description,
    Input$ModelIntInput? order,
    Input$ModelStringInput? datetime,
    Input$ModelStringInput? createdAt,
    Input$ModelStringInput? updatedAt,
    Input$ModelBooleanInput? isCompleted,
    Input$ModelIDInput? id,
    List<Input$ModelTaskFilterInput?>? and,
    List<Input$ModelTaskFilterInput?>? or,
    Input$ModelTaskFilterInput? not,
  });
  CopyWith$Input$ModelStringInput<TRes> get owner;
  CopyWith$Input$ModelStringInput<TRes> get title;
  CopyWith$Input$ModelStringInput<TRes> get description;
  CopyWith$Input$ModelIntInput<TRes> get order;
  CopyWith$Input$ModelStringInput<TRes> get datetime;
  CopyWith$Input$ModelStringInput<TRes> get createdAt;
  CopyWith$Input$ModelStringInput<TRes> get updatedAt;
  CopyWith$Input$ModelBooleanInput<TRes> get isCompleted;
  CopyWith$Input$ModelIDInput<TRes> get id;
  TRes and(
    Iterable<Input$ModelTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskFilterInput<Input$ModelTaskFilterInput>?
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$ModelTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskFilterInput<Input$ModelTaskFilterInput>?
      >?,
    )
    _fn,
  );
  CopyWith$Input$ModelTaskFilterInput<TRes> get not;
}

class _CopyWithImpl$Input$ModelTaskFilterInput<TRes>
    implements CopyWith$Input$ModelTaskFilterInput<TRes> {
  _CopyWithImpl$Input$ModelTaskFilterInput(this._instance, this._then);

  final Input$ModelTaskFilterInput _instance;

  final TRes Function(Input$ModelTaskFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? datetime = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? isCompleted = _undefined,
    Object? id = _undefined,
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
  }) => _then(
    Input$ModelTaskFilterInput._({
      ..._instance._$data,
      if (owner != _undefined) 'owner': (owner as Input$ModelStringInput?),
      if (title != _undefined) 'title': (title as Input$ModelStringInput?),
      if (description != _undefined)
        'description': (description as Input$ModelStringInput?),
      if (order != _undefined) 'order': (order as Input$ModelIntInput?),
      if (datetime != _undefined)
        'datetime': (datetime as Input$ModelStringInput?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input$ModelStringInput?),
      if (updatedAt != _undefined)
        'updatedAt': (updatedAt as Input$ModelStringInput?),
      if (isCompleted != _undefined)
        'isCompleted': (isCompleted as Input$ModelBooleanInput?),
      if (id != _undefined) 'id': (id as Input$ModelIDInput?),
      if (and != _undefined) 'and': (and as List<Input$ModelTaskFilterInput?>?),
      if (or != _undefined) 'or': (or as List<Input$ModelTaskFilterInput?>?),
      if (not != _undefined) 'not': (not as Input$ModelTaskFilterInput?),
    }),
  );

  CopyWith$Input$ModelStringInput<TRes> get owner {
    final local$owner = _instance.owner;
    return local$owner == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(local$owner, (e) => call(owner: e));
  }

  CopyWith$Input$ModelStringInput<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(local$title, (e) => call(title: e));
  }

  CopyWith$Input$ModelStringInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$description,
            (e) => call(description: e),
          );
  }

  CopyWith$Input$ModelIntInput<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith$Input$ModelIntInput.stub(_then(_instance))
        : CopyWith$Input$ModelIntInput(local$order, (e) => call(order: e));
  }

  CopyWith$Input$ModelStringInput<TRes> get datetime {
    final local$datetime = _instance.datetime;
    return local$datetime == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$datetime,
            (e) => call(datetime: e),
          );
  }

  CopyWith$Input$ModelStringInput<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith$Input$ModelStringInput<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$updatedAt,
            (e) => call(updatedAt: e),
          );
  }

  CopyWith$Input$ModelBooleanInput<TRes> get isCompleted {
    final local$isCompleted = _instance.isCompleted;
    return local$isCompleted == null
        ? CopyWith$Input$ModelBooleanInput.stub(_then(_instance))
        : CopyWith$Input$ModelBooleanInput(
            local$isCompleted,
            (e) => call(isCompleted: e),
          );
  }

  CopyWith$Input$ModelIDInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$ModelIDInput.stub(_then(_instance))
        : CopyWith$Input$ModelIDInput(local$id, (e) => call(id: e));
  }

  TRes and(
    Iterable<Input$ModelTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskFilterInput<Input$ModelTaskFilterInput>?
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) =>
            e == null ? null : CopyWith$Input$ModelTaskFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$ModelTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskFilterInput<Input$ModelTaskFilterInput>?
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) =>
            e == null ? null : CopyWith$Input$ModelTaskFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$ModelTaskFilterInput<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$ModelTaskFilterInput.stub(_then(_instance))
        : CopyWith$Input$ModelTaskFilterInput(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$ModelTaskFilterInput<TRes>
    implements CopyWith$Input$ModelTaskFilterInput<TRes> {
  _CopyWithStubImpl$Input$ModelTaskFilterInput(this._res);

  TRes _res;

  call({
    Input$ModelStringInput? owner,
    Input$ModelStringInput? title,
    Input$ModelStringInput? description,
    Input$ModelIntInput? order,
    Input$ModelStringInput? datetime,
    Input$ModelStringInput? createdAt,
    Input$ModelStringInput? updatedAt,
    Input$ModelBooleanInput? isCompleted,
    Input$ModelIDInput? id,
    List<Input$ModelTaskFilterInput?>? and,
    List<Input$ModelTaskFilterInput?>? or,
    Input$ModelTaskFilterInput? not,
  }) => _res;

  CopyWith$Input$ModelStringInput<TRes> get owner =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get title =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get description =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelIntInput<TRes> get order =>
      CopyWith$Input$ModelIntInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get datetime =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get createdAt =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get updatedAt =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelBooleanInput<TRes> get isCompleted =>
      CopyWith$Input$ModelBooleanInput.stub(_res);

  CopyWith$Input$ModelIDInput<TRes> get id =>
      CopyWith$Input$ModelIDInput.stub(_res);

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$ModelTaskFilterInput<TRes> get not =>
      CopyWith$Input$ModelTaskFilterInput.stub(_res);
}

class Input$ModelTaskConditionInput {
  factory Input$ModelTaskConditionInput({
    Input$ModelStringInput? owner,
    Input$ModelStringInput? title,
    Input$ModelStringInput? description,
    Input$ModelIntInput? order,
    Input$ModelStringInput? datetime,
    Input$ModelStringInput? createdAt,
    Input$ModelStringInput? updatedAt,
    Input$ModelBooleanInput? isCompleted,
    List<Input$ModelTaskConditionInput?>? and,
    List<Input$ModelTaskConditionInput?>? or,
    Input$ModelTaskConditionInput? not,
  }) => Input$ModelTaskConditionInput._({
    if (owner != null) r'owner': owner,
    if (title != null) r'title': title,
    if (description != null) r'description': description,
    if (order != null) r'order': order,
    if (datetime != null) r'datetime': datetime,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
    if (isCompleted != null) r'isCompleted': isCompleted,
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
  });

  Input$ModelTaskConditionInput._(this._$data);

  factory Input$ModelTaskConditionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('owner')) {
      final l$owner = data['owner'];
      result$data['owner'] = l$owner == null
          ? null
          : Input$ModelStringInput.fromJson((l$owner as Map<String, dynamic>));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : Input$ModelStringInput.fromJson((l$title as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$description as Map<String, dynamic>),
            );
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : Input$ModelIntInput.fromJson((l$order as Map<String, dynamic>));
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$datetime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$ModelStringInput.fromJson(
              (l$updatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isCompleted')) {
      final l$isCompleted = data['isCompleted'];
      result$data['isCompleted'] = l$isCompleted == null
          ? null
          : Input$ModelBooleanInput.fromJson(
              (l$isCompleted as Map<String, dynamic>),
            );
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$ModelTaskConditionInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$ModelTaskConditionInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$ModelTaskConditionInput.fromJson(
              (l$not as Map<String, dynamic>),
            );
    }
    return Input$ModelTaskConditionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ModelStringInput? get owner =>
      (_$data['owner'] as Input$ModelStringInput?);

  Input$ModelStringInput? get title =>
      (_$data['title'] as Input$ModelStringInput?);

  Input$ModelStringInput? get description =>
      (_$data['description'] as Input$ModelStringInput?);

  Input$ModelIntInput? get order => (_$data['order'] as Input$ModelIntInput?);

  Input$ModelStringInput? get datetime =>
      (_$data['datetime'] as Input$ModelStringInput?);

  Input$ModelStringInput? get createdAt =>
      (_$data['createdAt'] as Input$ModelStringInput?);

  Input$ModelStringInput? get updatedAt =>
      (_$data['updatedAt'] as Input$ModelStringInput?);

  Input$ModelBooleanInput? get isCompleted =>
      (_$data['isCompleted'] as Input$ModelBooleanInput?);

  List<Input$ModelTaskConditionInput?>? get and =>
      (_$data['and'] as List<Input$ModelTaskConditionInput?>?);

  List<Input$ModelTaskConditionInput?>? get or =>
      (_$data['or'] as List<Input$ModelTaskConditionInput?>?);

  Input$ModelTaskConditionInput? get not =>
      (_$data['not'] as Input$ModelTaskConditionInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('owner')) {
      final l$owner = owner;
      result$data['owner'] = l$owner?.toJson();
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.toJson();
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    if (_$data.containsKey('isCompleted')) {
      final l$isCompleted = isCompleted;
      result$data['isCompleted'] = l$isCompleted?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ModelTaskConditionInput<Input$ModelTaskConditionInput>
  get copyWith => CopyWith$Input$ModelTaskConditionInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelTaskConditionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (_$data.containsKey('owner') != other._$data.containsKey('owner')) {
      return false;
    }
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$isCompleted = isCompleted;
    final lOther$isCompleted = other.isCompleted;
    if (_$data.containsKey('isCompleted') !=
        other._$data.containsKey('isCompleted')) {
      return false;
    }
    if (l$isCompleted != lOther$isCompleted) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$datetime = datetime;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$isCompleted = isCompleted;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('owner') ? l$owner : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('isCompleted') ? l$isCompleted : const {},
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelTaskConditionInput<TRes> {
  factory CopyWith$Input$ModelTaskConditionInput(
    Input$ModelTaskConditionInput instance,
    TRes Function(Input$ModelTaskConditionInput) then,
  ) = _CopyWithImpl$Input$ModelTaskConditionInput;

  factory CopyWith$Input$ModelTaskConditionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelTaskConditionInput;

  TRes call({
    Input$ModelStringInput? owner,
    Input$ModelStringInput? title,
    Input$ModelStringInput? description,
    Input$ModelIntInput? order,
    Input$ModelStringInput? datetime,
    Input$ModelStringInput? createdAt,
    Input$ModelStringInput? updatedAt,
    Input$ModelBooleanInput? isCompleted,
    List<Input$ModelTaskConditionInput?>? and,
    List<Input$ModelTaskConditionInput?>? or,
    Input$ModelTaskConditionInput? not,
  });
  CopyWith$Input$ModelStringInput<TRes> get owner;
  CopyWith$Input$ModelStringInput<TRes> get title;
  CopyWith$Input$ModelStringInput<TRes> get description;
  CopyWith$Input$ModelIntInput<TRes> get order;
  CopyWith$Input$ModelStringInput<TRes> get datetime;
  CopyWith$Input$ModelStringInput<TRes> get createdAt;
  CopyWith$Input$ModelStringInput<TRes> get updatedAt;
  CopyWith$Input$ModelBooleanInput<TRes> get isCompleted;
  TRes and(
    Iterable<Input$ModelTaskConditionInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskConditionInput<Input$ModelTaskConditionInput>?
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$ModelTaskConditionInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskConditionInput<Input$ModelTaskConditionInput>?
      >?,
    )
    _fn,
  );
  CopyWith$Input$ModelTaskConditionInput<TRes> get not;
}

class _CopyWithImpl$Input$ModelTaskConditionInput<TRes>
    implements CopyWith$Input$ModelTaskConditionInput<TRes> {
  _CopyWithImpl$Input$ModelTaskConditionInput(this._instance, this._then);

  final Input$ModelTaskConditionInput _instance;

  final TRes Function(Input$ModelTaskConditionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? datetime = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? isCompleted = _undefined,
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
  }) => _then(
    Input$ModelTaskConditionInput._({
      ..._instance._$data,
      if (owner != _undefined) 'owner': (owner as Input$ModelStringInput?),
      if (title != _undefined) 'title': (title as Input$ModelStringInput?),
      if (description != _undefined)
        'description': (description as Input$ModelStringInput?),
      if (order != _undefined) 'order': (order as Input$ModelIntInput?),
      if (datetime != _undefined)
        'datetime': (datetime as Input$ModelStringInput?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input$ModelStringInput?),
      if (updatedAt != _undefined)
        'updatedAt': (updatedAt as Input$ModelStringInput?),
      if (isCompleted != _undefined)
        'isCompleted': (isCompleted as Input$ModelBooleanInput?),
      if (and != _undefined)
        'and': (and as List<Input$ModelTaskConditionInput?>?),
      if (or != _undefined) 'or': (or as List<Input$ModelTaskConditionInput?>?),
      if (not != _undefined) 'not': (not as Input$ModelTaskConditionInput?),
    }),
  );

  CopyWith$Input$ModelStringInput<TRes> get owner {
    final local$owner = _instance.owner;
    return local$owner == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(local$owner, (e) => call(owner: e));
  }

  CopyWith$Input$ModelStringInput<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(local$title, (e) => call(title: e));
  }

  CopyWith$Input$ModelStringInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$description,
            (e) => call(description: e),
          );
  }

  CopyWith$Input$ModelIntInput<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith$Input$ModelIntInput.stub(_then(_instance))
        : CopyWith$Input$ModelIntInput(local$order, (e) => call(order: e));
  }

  CopyWith$Input$ModelStringInput<TRes> get datetime {
    final local$datetime = _instance.datetime;
    return local$datetime == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$datetime,
            (e) => call(datetime: e),
          );
  }

  CopyWith$Input$ModelStringInput<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith$Input$ModelStringInput<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(
            local$updatedAt,
            (e) => call(updatedAt: e),
          );
  }

  CopyWith$Input$ModelBooleanInput<TRes> get isCompleted {
    final local$isCompleted = _instance.isCompleted;
    return local$isCompleted == null
        ? CopyWith$Input$ModelBooleanInput.stub(_then(_instance))
        : CopyWith$Input$ModelBooleanInput(
            local$isCompleted,
            (e) => call(isCompleted: e),
          );
  }

  TRes and(
    Iterable<Input$ModelTaskConditionInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskConditionInput<Input$ModelTaskConditionInput>?
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => e == null
            ? null
            : CopyWith$Input$ModelTaskConditionInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$ModelTaskConditionInput?>? Function(
      Iterable<
        CopyWith$Input$ModelTaskConditionInput<Input$ModelTaskConditionInput>?
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => e == null
            ? null
            : CopyWith$Input$ModelTaskConditionInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$ModelTaskConditionInput<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$ModelTaskConditionInput.stub(_then(_instance))
        : CopyWith$Input$ModelTaskConditionInput(
            local$not,
            (e) => call(not: e),
          );
  }
}

class _CopyWithStubImpl$Input$ModelTaskConditionInput<TRes>
    implements CopyWith$Input$ModelTaskConditionInput<TRes> {
  _CopyWithStubImpl$Input$ModelTaskConditionInput(this._res);

  TRes _res;

  call({
    Input$ModelStringInput? owner,
    Input$ModelStringInput? title,
    Input$ModelStringInput? description,
    Input$ModelIntInput? order,
    Input$ModelStringInput? datetime,
    Input$ModelStringInput? createdAt,
    Input$ModelStringInput? updatedAt,
    Input$ModelBooleanInput? isCompleted,
    List<Input$ModelTaskConditionInput?>? and,
    List<Input$ModelTaskConditionInput?>? or,
    Input$ModelTaskConditionInput? not,
  }) => _res;

  CopyWith$Input$ModelStringInput<TRes> get owner =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get title =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get description =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelIntInput<TRes> get order =>
      CopyWith$Input$ModelIntInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get datetime =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get createdAt =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelStringInput<TRes> get updatedAt =>
      CopyWith$Input$ModelStringInput.stub(_res);

  CopyWith$Input$ModelBooleanInput<TRes> get isCompleted =>
      CopyWith$Input$ModelBooleanInput.stub(_res);

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$ModelTaskConditionInput<TRes> get not =>
      CopyWith$Input$ModelTaskConditionInput.stub(_res);
}

class Input$CreateTaskInput {
  factory Input$CreateTaskInput({
    String? owner,
    required String title,
    String? description,
    int? order,
    required DateTime datetime,
    DateTime? createdAt,
    DateTime? updatedAt,
    required bool isCompleted,
    String? id,
  }) => Input$CreateTaskInput._({
    if (owner != null) r'owner': owner,
    r'title': title,
    if (description != null) r'description': description,
    if (order != null) r'order': order,
    r'datetime': datetime,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
    r'isCompleted': isCompleted,
    if (id != null) r'id': id,
  });

  Input$CreateTaskInput._(this._$data);

  factory Input$CreateTaskInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('owner')) {
      final l$owner = data['owner'];
      result$data['owner'] = (l$owner as String?);
    }
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    final l$datetime = data['datetime'];
    result$data['datetime'] = fromGraphQLAWSDateTime(l$datetime);
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromGraphQLAWSDateTime(l$createdAt);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromGraphQLAWSDateTime(l$updatedAt);
    }
    final l$isCompleted = data['isCompleted'];
    result$data['isCompleted'] = (l$isCompleted as bool);
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$CreateTaskInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get owner => (_$data['owner'] as String?);

  String get title => (_$data['title'] as String);

  String? get description => (_$data['description'] as String?);

  int? get order => (_$data['order'] as int?);

  DateTime get datetime => (_$data['datetime'] as DateTime);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  bool get isCompleted => (_$data['isCompleted'] as bool);

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('owner')) {
      final l$owner = owner;
      result$data['owner'] = l$owner;
    }
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order;
    }
    final l$datetime = datetime;
    result$data['datetime'] = toGraphQLAWSDateTime(l$datetime);
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toGraphQLAWSDateTime(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : toGraphQLAWSDateTime(l$updatedAt);
    }
    final l$isCompleted = isCompleted;
    result$data['isCompleted'] = l$isCompleted;
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$CreateTaskInput<Input$CreateTaskInput> get copyWith =>
      CopyWith$Input$CreateTaskInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateTaskInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (_$data.containsKey('owner') != other._$data.containsKey('owner')) {
      return false;
    }
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$isCompleted = isCompleted;
    final lOther$isCompleted = other.isCompleted;
    if (l$isCompleted != lOther$isCompleted) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$datetime = datetime;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$isCompleted = isCompleted;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('owner') ? l$owner : const {},
      l$title,
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('order') ? l$order : const {},
      l$datetime,
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      l$isCompleted,
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateTaskInput<TRes> {
  factory CopyWith$Input$CreateTaskInput(
    Input$CreateTaskInput instance,
    TRes Function(Input$CreateTaskInput) then,
  ) = _CopyWithImpl$Input$CreateTaskInput;

  factory CopyWith$Input$CreateTaskInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateTaskInput;

  TRes call({
    String? owner,
    String? title,
    String? description,
    int? order,
    DateTime? datetime,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isCompleted,
    String? id,
  });
}

class _CopyWithImpl$Input$CreateTaskInput<TRes>
    implements CopyWith$Input$CreateTaskInput<TRes> {
  _CopyWithImpl$Input$CreateTaskInput(this._instance, this._then);

  final Input$CreateTaskInput _instance;

  final TRes Function(Input$CreateTaskInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? datetime = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? isCompleted = _undefined,
    Object? id = _undefined,
  }) => _then(
    Input$CreateTaskInput._({
      ..._instance._$data,
      if (owner != _undefined) 'owner': (owner as String?),
      if (title != _undefined && title != null) 'title': (title as String),
      if (description != _undefined) 'description': (description as String?),
      if (order != _undefined) 'order': (order as int?),
      if (datetime != _undefined && datetime != null)
        'datetime': (datetime as DateTime),
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      if (isCompleted != _undefined && isCompleted != null)
        'isCompleted': (isCompleted as bool),
      if (id != _undefined) 'id': (id as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$CreateTaskInput<TRes>
    implements CopyWith$Input$CreateTaskInput<TRes> {
  _CopyWithStubImpl$Input$CreateTaskInput(this._res);

  TRes _res;

  call({
    String? owner,
    String? title,
    String? description,
    int? order,
    DateTime? datetime,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isCompleted,
    String? id,
  }) => _res;
}

class Input$UpdateTaskInput {
  factory Input$UpdateTaskInput({
    String? owner,
    String? title,
    String? description,
    int? order,
    DateTime? datetime,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isCompleted,
    required String id,
  }) => Input$UpdateTaskInput._({
    if (owner != null) r'owner': owner,
    if (title != null) r'title': title,
    if (description != null) r'description': description,
    if (order != null) r'order': order,
    if (datetime != null) r'datetime': datetime,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
    if (isCompleted != null) r'isCompleted': isCompleted,
    r'id': id,
  });

  Input$UpdateTaskInput._(this._$data);

  factory Input$UpdateTaskInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('owner')) {
      final l$owner = data['owner'];
      result$data['owner'] = (l$owner as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : fromGraphQLAWSDateTime(l$datetime);
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromGraphQLAWSDateTime(l$createdAt);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromGraphQLAWSDateTime(l$updatedAt);
    }
    if (data.containsKey('isCompleted')) {
      final l$isCompleted = data['isCompleted'];
      result$data['isCompleted'] = (l$isCompleted as bool?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$UpdateTaskInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get owner => (_$data['owner'] as String?);

  String? get title => (_$data['title'] as String?);

  String? get description => (_$data['description'] as String?);

  int? get order => (_$data['order'] as int?);

  DateTime? get datetime => (_$data['datetime'] as DateTime?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  bool? get isCompleted => (_$data['isCompleted'] as bool?);

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('owner')) {
      final l$owner = owner;
      result$data['owner'] = l$owner;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order;
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime == null
          ? null
          : toGraphQLAWSDateTime(l$datetime);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toGraphQLAWSDateTime(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : toGraphQLAWSDateTime(l$updatedAt);
    }
    if (_$data.containsKey('isCompleted')) {
      final l$isCompleted = isCompleted;
      result$data['isCompleted'] = l$isCompleted;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$UpdateTaskInput<Input$UpdateTaskInput> get copyWith =>
      CopyWith$Input$UpdateTaskInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateTaskInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (_$data.containsKey('owner') != other._$data.containsKey('owner')) {
      return false;
    }
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$isCompleted = isCompleted;
    final lOther$isCompleted = other.isCompleted;
    if (_$data.containsKey('isCompleted') !=
        other._$data.containsKey('isCompleted')) {
      return false;
    }
    if (l$isCompleted != lOther$isCompleted) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$datetime = datetime;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$isCompleted = isCompleted;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('owner') ? l$owner : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('isCompleted') ? l$isCompleted : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$UpdateTaskInput<TRes> {
  factory CopyWith$Input$UpdateTaskInput(
    Input$UpdateTaskInput instance,
    TRes Function(Input$UpdateTaskInput) then,
  ) = _CopyWithImpl$Input$UpdateTaskInput;

  factory CopyWith$Input$UpdateTaskInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateTaskInput;

  TRes call({
    String? owner,
    String? title,
    String? description,
    int? order,
    DateTime? datetime,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isCompleted,
    String? id,
  });
}

class _CopyWithImpl$Input$UpdateTaskInput<TRes>
    implements CopyWith$Input$UpdateTaskInput<TRes> {
  _CopyWithImpl$Input$UpdateTaskInput(this._instance, this._then);

  final Input$UpdateTaskInput _instance;

  final TRes Function(Input$UpdateTaskInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? datetime = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? isCompleted = _undefined,
    Object? id = _undefined,
  }) => _then(
    Input$UpdateTaskInput._({
      ..._instance._$data,
      if (owner != _undefined) 'owner': (owner as String?),
      if (title != _undefined) 'title': (title as String?),
      if (description != _undefined) 'description': (description as String?),
      if (order != _undefined) 'order': (order as int?),
      if (datetime != _undefined) 'datetime': (datetime as DateTime?),
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      if (isCompleted != _undefined) 'isCompleted': (isCompleted as bool?),
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Input$UpdateTaskInput<TRes>
    implements CopyWith$Input$UpdateTaskInput<TRes> {
  _CopyWithStubImpl$Input$UpdateTaskInput(this._res);

  TRes _res;

  call({
    String? owner,
    String? title,
    String? description,
    int? order,
    DateTime? datetime,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isCompleted,
    String? id,
  }) => _res;
}

class Input$DeleteTaskInput {
  factory Input$DeleteTaskInput({required String id}) =>
      Input$DeleteTaskInput._({r'id': id});

  Input$DeleteTaskInput._(this._$data);

  factory Input$DeleteTaskInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$DeleteTaskInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$DeleteTaskInput<Input$DeleteTaskInput> get copyWith =>
      CopyWith$Input$DeleteTaskInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DeleteTaskInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$DeleteTaskInput<TRes> {
  factory CopyWith$Input$DeleteTaskInput(
    Input$DeleteTaskInput instance,
    TRes Function(Input$DeleteTaskInput) then,
  ) = _CopyWithImpl$Input$DeleteTaskInput;

  factory CopyWith$Input$DeleteTaskInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteTaskInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$DeleteTaskInput<TRes>
    implements CopyWith$Input$DeleteTaskInput<TRes> {
  _CopyWithImpl$Input$DeleteTaskInput(this._instance, this._then);

  final Input$DeleteTaskInput _instance;

  final TRes Function(Input$DeleteTaskInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input$DeleteTaskInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Input$DeleteTaskInput<TRes>
    implements CopyWith$Input$DeleteTaskInput<TRes> {
  _CopyWithStubImpl$Input$DeleteTaskInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$ModelSubscriptionTaskFilterInput {
  factory Input$ModelSubscriptionTaskFilterInput({
    Input$ModelSubscriptionStringInput? title,
    Input$ModelSubscriptionStringInput? description,
    Input$ModelSubscriptionIntInput? order,
    Input$ModelSubscriptionStringInput? datetime,
    Input$ModelSubscriptionStringInput? createdAt,
    Input$ModelSubscriptionStringInput? updatedAt,
    Input$ModelSubscriptionBooleanInput? isCompleted,
    Input$ModelSubscriptionIDInput? id,
    List<Input$ModelSubscriptionTaskFilterInput?>? and,
    List<Input$ModelSubscriptionTaskFilterInput?>? or,
    Input$ModelStringInput? owner,
  }) => Input$ModelSubscriptionTaskFilterInput._({
    if (title != null) r'title': title,
    if (description != null) r'description': description,
    if (order != null) r'order': order,
    if (datetime != null) r'datetime': datetime,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
    if (isCompleted != null) r'isCompleted': isCompleted,
    if (id != null) r'id': id,
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (owner != null) r'owner': owner,
  });

  Input$ModelSubscriptionTaskFilterInput._(this._$data);

  factory Input$ModelSubscriptionTaskFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : Input$ModelSubscriptionStringInput.fromJson(
              (l$title as Map<String, dynamic>),
            );
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$ModelSubscriptionStringInput.fromJson(
              (l$description as Map<String, dynamic>),
            );
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : Input$ModelSubscriptionIntInput.fromJson(
              (l$order as Map<String, dynamic>),
            );
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : Input$ModelSubscriptionStringInput.fromJson(
              (l$datetime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$ModelSubscriptionStringInput.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$ModelSubscriptionStringInput.fromJson(
              (l$updatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isCompleted')) {
      final l$isCompleted = data['isCompleted'];
      result$data['isCompleted'] = l$isCompleted == null
          ? null
          : Input$ModelSubscriptionBooleanInput.fromJson(
              (l$isCompleted as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$ModelSubscriptionIDInput.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$ModelSubscriptionTaskFilterInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$ModelSubscriptionTaskFilterInput.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList();
    }
    if (data.containsKey('owner')) {
      final l$owner = data['owner'];
      result$data['owner'] = l$owner == null
          ? null
          : Input$ModelStringInput.fromJson((l$owner as Map<String, dynamic>));
    }
    return Input$ModelSubscriptionTaskFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ModelSubscriptionStringInput? get title =>
      (_$data['title'] as Input$ModelSubscriptionStringInput?);

  Input$ModelSubscriptionStringInput? get description =>
      (_$data['description'] as Input$ModelSubscriptionStringInput?);

  Input$ModelSubscriptionIntInput? get order =>
      (_$data['order'] as Input$ModelSubscriptionIntInput?);

  Input$ModelSubscriptionStringInput? get datetime =>
      (_$data['datetime'] as Input$ModelSubscriptionStringInput?);

  Input$ModelSubscriptionStringInput? get createdAt =>
      (_$data['createdAt'] as Input$ModelSubscriptionStringInput?);

  Input$ModelSubscriptionStringInput? get updatedAt =>
      (_$data['updatedAt'] as Input$ModelSubscriptionStringInput?);

  Input$ModelSubscriptionBooleanInput? get isCompleted =>
      (_$data['isCompleted'] as Input$ModelSubscriptionBooleanInput?);

  Input$ModelSubscriptionIDInput? get id =>
      (_$data['id'] as Input$ModelSubscriptionIDInput?);

  List<Input$ModelSubscriptionTaskFilterInput?>? get and =>
      (_$data['and'] as List<Input$ModelSubscriptionTaskFilterInput?>?);

  List<Input$ModelSubscriptionTaskFilterInput?>? get or =>
      (_$data['or'] as List<Input$ModelSubscriptionTaskFilterInput?>?);

  Input$ModelStringInput? get owner =>
      (_$data['owner'] as Input$ModelStringInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.toJson();
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    if (_$data.containsKey('isCompleted')) {
      final l$isCompleted = isCompleted;
      result$data['isCompleted'] = l$isCompleted?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('owner')) {
      final l$owner = owner;
      result$data['owner'] = l$owner?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ModelSubscriptionTaskFilterInput<
    Input$ModelSubscriptionTaskFilterInput
  >
  get copyWith =>
      CopyWith$Input$ModelSubscriptionTaskFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelSubscriptionTaskFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$isCompleted = isCompleted;
    final lOther$isCompleted = other.isCompleted;
    if (_$data.containsKey('isCompleted') !=
        other._$data.containsKey('isCompleted')) {
      return false;
    }
    if (l$isCompleted != lOther$isCompleted) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (_$data.containsKey('owner') != other._$data.containsKey('owner')) {
      return false;
    }
    if (l$owner != lOther$owner) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$datetime = datetime;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$isCompleted = isCompleted;
    final l$id = id;
    final l$and = and;
    final l$or = or;
    final l$owner = owner;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('isCompleted') ? l$isCompleted : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('owner') ? l$owner : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelSubscriptionTaskFilterInput<TRes> {
  factory CopyWith$Input$ModelSubscriptionTaskFilterInput(
    Input$ModelSubscriptionTaskFilterInput instance,
    TRes Function(Input$ModelSubscriptionTaskFilterInput) then,
  ) = _CopyWithImpl$Input$ModelSubscriptionTaskFilterInput;

  factory CopyWith$Input$ModelSubscriptionTaskFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelSubscriptionTaskFilterInput;

  TRes call({
    Input$ModelSubscriptionStringInput? title,
    Input$ModelSubscriptionStringInput? description,
    Input$ModelSubscriptionIntInput? order,
    Input$ModelSubscriptionStringInput? datetime,
    Input$ModelSubscriptionStringInput? createdAt,
    Input$ModelSubscriptionStringInput? updatedAt,
    Input$ModelSubscriptionBooleanInput? isCompleted,
    Input$ModelSubscriptionIDInput? id,
    List<Input$ModelSubscriptionTaskFilterInput?>? and,
    List<Input$ModelSubscriptionTaskFilterInput?>? or,
    Input$ModelStringInput? owner,
  });
  CopyWith$Input$ModelSubscriptionStringInput<TRes> get title;
  CopyWith$Input$ModelSubscriptionStringInput<TRes> get description;
  CopyWith$Input$ModelSubscriptionIntInput<TRes> get order;
  CopyWith$Input$ModelSubscriptionStringInput<TRes> get datetime;
  CopyWith$Input$ModelSubscriptionStringInput<TRes> get createdAt;
  CopyWith$Input$ModelSubscriptionStringInput<TRes> get updatedAt;
  CopyWith$Input$ModelSubscriptionBooleanInput<TRes> get isCompleted;
  CopyWith$Input$ModelSubscriptionIDInput<TRes> get id;
  TRes and(
    Iterable<Input$ModelSubscriptionTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelSubscriptionTaskFilterInput<
          Input$ModelSubscriptionTaskFilterInput
        >?
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$ModelSubscriptionTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelSubscriptionTaskFilterInput<
          Input$ModelSubscriptionTaskFilterInput
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Input$ModelStringInput<TRes> get owner;
}

class _CopyWithImpl$Input$ModelSubscriptionTaskFilterInput<TRes>
    implements CopyWith$Input$ModelSubscriptionTaskFilterInput<TRes> {
  _CopyWithImpl$Input$ModelSubscriptionTaskFilterInput(
    this._instance,
    this._then,
  );

  final Input$ModelSubscriptionTaskFilterInput _instance;

  final TRes Function(Input$ModelSubscriptionTaskFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? datetime = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? isCompleted = _undefined,
    Object? id = _undefined,
    Object? and = _undefined,
    Object? or = _undefined,
    Object? owner = _undefined,
  }) => _then(
    Input$ModelSubscriptionTaskFilterInput._({
      ..._instance._$data,
      if (title != _undefined)
        'title': (title as Input$ModelSubscriptionStringInput?),
      if (description != _undefined)
        'description': (description as Input$ModelSubscriptionStringInput?),
      if (order != _undefined)
        'order': (order as Input$ModelSubscriptionIntInput?),
      if (datetime != _undefined)
        'datetime': (datetime as Input$ModelSubscriptionStringInput?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input$ModelSubscriptionStringInput?),
      if (updatedAt != _undefined)
        'updatedAt': (updatedAt as Input$ModelSubscriptionStringInput?),
      if (isCompleted != _undefined)
        'isCompleted': (isCompleted as Input$ModelSubscriptionBooleanInput?),
      if (id != _undefined) 'id': (id as Input$ModelSubscriptionIDInput?),
      if (and != _undefined)
        'and': (and as List<Input$ModelSubscriptionTaskFilterInput?>?),
      if (or != _undefined)
        'or': (or as List<Input$ModelSubscriptionTaskFilterInput?>?),
      if (owner != _undefined) 'owner': (owner as Input$ModelStringInput?),
    }),
  );

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Input$ModelSubscriptionStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionStringInput(
            local$title,
            (e) => call(title: e),
          );
  }

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$ModelSubscriptionStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionStringInput(
            local$description,
            (e) => call(description: e),
          );
  }

  CopyWith$Input$ModelSubscriptionIntInput<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith$Input$ModelSubscriptionIntInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionIntInput(
            local$order,
            (e) => call(order: e),
          );
  }

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get datetime {
    final local$datetime = _instance.datetime;
    return local$datetime == null
        ? CopyWith$Input$ModelSubscriptionStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionStringInput(
            local$datetime,
            (e) => call(datetime: e),
          );
  }

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$ModelSubscriptionStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionStringInput(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$ModelSubscriptionStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionStringInput(
            local$updatedAt,
            (e) => call(updatedAt: e),
          );
  }

  CopyWith$Input$ModelSubscriptionBooleanInput<TRes> get isCompleted {
    final local$isCompleted = _instance.isCompleted;
    return local$isCompleted == null
        ? CopyWith$Input$ModelSubscriptionBooleanInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionBooleanInput(
            local$isCompleted,
            (e) => call(isCompleted: e),
          );
  }

  CopyWith$Input$ModelSubscriptionIDInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$ModelSubscriptionIDInput.stub(_then(_instance))
        : CopyWith$Input$ModelSubscriptionIDInput(local$id, (e) => call(id: e));
  }

  TRes and(
    Iterable<Input$ModelSubscriptionTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelSubscriptionTaskFilterInput<
          Input$ModelSubscriptionTaskFilterInput
        >?
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => e == null
            ? null
            : CopyWith$Input$ModelSubscriptionTaskFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$ModelSubscriptionTaskFilterInput?>? Function(
      Iterable<
        CopyWith$Input$ModelSubscriptionTaskFilterInput<
          Input$ModelSubscriptionTaskFilterInput
        >?
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => e == null
            ? null
            : CopyWith$Input$ModelSubscriptionTaskFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$ModelStringInput<TRes> get owner {
    final local$owner = _instance.owner;
    return local$owner == null
        ? CopyWith$Input$ModelStringInput.stub(_then(_instance))
        : CopyWith$Input$ModelStringInput(local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Input$ModelSubscriptionTaskFilterInput<TRes>
    implements CopyWith$Input$ModelSubscriptionTaskFilterInput<TRes> {
  _CopyWithStubImpl$Input$ModelSubscriptionTaskFilterInput(this._res);

  TRes _res;

  call({
    Input$ModelSubscriptionStringInput? title,
    Input$ModelSubscriptionStringInput? description,
    Input$ModelSubscriptionIntInput? order,
    Input$ModelSubscriptionStringInput? datetime,
    Input$ModelSubscriptionStringInput? createdAt,
    Input$ModelSubscriptionStringInput? updatedAt,
    Input$ModelSubscriptionBooleanInput? isCompleted,
    Input$ModelSubscriptionIDInput? id,
    List<Input$ModelSubscriptionTaskFilterInput?>? and,
    List<Input$ModelSubscriptionTaskFilterInput?>? or,
    Input$ModelStringInput? owner,
  }) => _res;

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get title =>
      CopyWith$Input$ModelSubscriptionStringInput.stub(_res);

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get description =>
      CopyWith$Input$ModelSubscriptionStringInput.stub(_res);

  CopyWith$Input$ModelSubscriptionIntInput<TRes> get order =>
      CopyWith$Input$ModelSubscriptionIntInput.stub(_res);

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get datetime =>
      CopyWith$Input$ModelSubscriptionStringInput.stub(_res);

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get createdAt =>
      CopyWith$Input$ModelSubscriptionStringInput.stub(_res);

  CopyWith$Input$ModelSubscriptionStringInput<TRes> get updatedAt =>
      CopyWith$Input$ModelSubscriptionStringInput.stub(_res);

  CopyWith$Input$ModelSubscriptionBooleanInput<TRes> get isCompleted =>
      CopyWith$Input$ModelSubscriptionBooleanInput.stub(_res);

  CopyWith$Input$ModelSubscriptionIDInput<TRes> get id =>
      CopyWith$Input$ModelSubscriptionIDInput.stub(_res);

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$ModelStringInput<TRes> get owner =>
      CopyWith$Input$ModelStringInput.stub(_res);
}

class Input$ModelStringKeyConditionInput {
  factory Input$ModelStringKeyConditionInput({
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    List<String?>? between,
    String? beginsWith,
  }) => Input$ModelStringKeyConditionInput._({
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (between != null) r'between': between,
    if (beginsWith != null) r'beginsWith': beginsWith,
  });

  Input$ModelStringKeyConditionInput._(this._$data);

  factory Input$ModelStringKeyConditionInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('beginsWith')) {
      final l$beginsWith = data['beginsWith'];
      result$data['beginsWith'] = (l$beginsWith as String?);
    }
    return Input$ModelStringKeyConditionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get eq => (_$data['eq'] as String?);

  String? get le => (_$data['le'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get ge => (_$data['ge'] as String?);

  String? get gt => (_$data['gt'] as String?);

  List<String?>? get between => (_$data['between'] as List<String?>?);

  String? get beginsWith => (_$data['beginsWith'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    if (_$data.containsKey('beginsWith')) {
      final l$beginsWith = beginsWith;
      result$data['beginsWith'] = l$beginsWith;
    }
    return result$data;
  }

  CopyWith$Input$ModelStringKeyConditionInput<
    Input$ModelStringKeyConditionInput
  >
  get copyWith => CopyWith$Input$ModelStringKeyConditionInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelStringKeyConditionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    final l$beginsWith = beginsWith;
    final lOther$beginsWith = other.beginsWith;
    if (_$data.containsKey('beginsWith') !=
        other._$data.containsKey('beginsWith')) {
      return false;
    }
    if (l$beginsWith != lOther$beginsWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    final l$beginsWith = beginsWith;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
      _$data.containsKey('beginsWith') ? l$beginsWith : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelStringKeyConditionInput<TRes> {
  factory CopyWith$Input$ModelStringKeyConditionInput(
    Input$ModelStringKeyConditionInput instance,
    TRes Function(Input$ModelStringKeyConditionInput) then,
  ) = _CopyWithImpl$Input$ModelStringKeyConditionInput;

  factory CopyWith$Input$ModelStringKeyConditionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelStringKeyConditionInput;

  TRes call({
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    List<String?>? between,
    String? beginsWith,
  });
}

class _CopyWithImpl$Input$ModelStringKeyConditionInput<TRes>
    implements CopyWith$Input$ModelStringKeyConditionInput<TRes> {
  _CopyWithImpl$Input$ModelStringKeyConditionInput(this._instance, this._then);

  final Input$ModelStringKeyConditionInput _instance;

  final TRes Function(Input$ModelStringKeyConditionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
    Object? beginsWith = _undefined,
  }) => _then(
    Input$ModelStringKeyConditionInput._({
      ..._instance._$data,
      if (eq != _undefined) 'eq': (eq as String?),
      if (le != _undefined) 'le': (le as String?),
      if (lt != _undefined) 'lt': (lt as String?),
      if (ge != _undefined) 'ge': (ge as String?),
      if (gt != _undefined) 'gt': (gt as String?),
      if (between != _undefined) 'between': (between as List<String?>?),
      if (beginsWith != _undefined) 'beginsWith': (beginsWith as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelStringKeyConditionInput<TRes>
    implements CopyWith$Input$ModelStringKeyConditionInput<TRes> {
  _CopyWithStubImpl$Input$ModelStringKeyConditionInput(this._res);

  TRes _res;

  call({
    String? eq,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    List<String?>? between,
    String? beginsWith,
  }) => _res;
}

class Input$ModelIntKeyConditionInput {
  factory Input$ModelIntKeyConditionInput({
    int? eq,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    List<int?>? between,
  }) => Input$ModelIntKeyConditionInput._({
    if (eq != null) r'eq': eq,
    if (le != null) r'le': le,
    if (lt != null) r'lt': lt,
    if (ge != null) r'ge': ge,
    if (gt != null) r'gt': gt,
    if (between != null) r'between': between,
  });

  Input$ModelIntKeyConditionInput._(this._$data);

  factory Input$ModelIntKeyConditionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = (l$between as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    return Input$ModelIntKeyConditionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get le => (_$data['le'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get ge => (_$data['ge'] as int?);

  int? get gt => (_$data['gt'] as int?);

  List<int?>? get between => (_$data['between'] as List<int?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$ModelIntKeyConditionInput<Input$ModelIntKeyConditionInput>
  get copyWith => CopyWith$Input$ModelIntKeyConditionInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ModelIntKeyConditionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != null && lOther$between != null) {
      if (l$between.length != lOther$between.length) {
        return false;
      }
      for (int i = 0; i < l$between.length; i++) {
        final l$between$entry = l$between[i];
        final lOther$between$entry = lOther$between[i];
        if (l$between$entry != lOther$between$entry) {
          return false;
        }
      }
    } else if (l$between != lOther$between) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between')
          ? l$between == null
                ? null
                : Object.hashAll(l$between.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelIntKeyConditionInput<TRes> {
  factory CopyWith$Input$ModelIntKeyConditionInput(
    Input$ModelIntKeyConditionInput instance,
    TRes Function(Input$ModelIntKeyConditionInput) then,
  ) = _CopyWithImpl$Input$ModelIntKeyConditionInput;

  factory CopyWith$Input$ModelIntKeyConditionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelIntKeyConditionInput;

  TRes call({int? eq, int? le, int? lt, int? ge, int? gt, List<int?>? between});
}

class _CopyWithImpl$Input$ModelIntKeyConditionInput<TRes>
    implements CopyWith$Input$ModelIntKeyConditionInput<TRes> {
  _CopyWithImpl$Input$ModelIntKeyConditionInput(this._instance, this._then);

  final Input$ModelIntKeyConditionInput _instance;

  final TRes Function(Input$ModelIntKeyConditionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
  }) => _then(
    Input$ModelIntKeyConditionInput._({
      ..._instance._$data,
      if (eq != _undefined) 'eq': (eq as int?),
      if (le != _undefined) 'le': (le as int?),
      if (lt != _undefined) 'lt': (lt as int?),
      if (ge != _undefined) 'ge': (ge as int?),
      if (gt != _undefined) 'gt': (gt as int?),
      if (between != _undefined) 'between': (between as List<int?>?),
    }),
  );
}

class _CopyWithStubImpl$Input$ModelIntKeyConditionInput<TRes>
    implements CopyWith$Input$ModelIntKeyConditionInput<TRes> {
  _CopyWithStubImpl$Input$ModelIntKeyConditionInput(this._res);

  TRes _res;

  call({int? eq, int? le, int? lt, int? ge, int? gt, List<int?>? between}) =>
      _res;
}

enum Enum$ModelAttributeTypes {
  binary,
  binarySet,
  $bool,
  list,
  map,
  number,
  numberSet,
  string,
  stringSet,
  $_null,
  $unknown;

  factory Enum$ModelAttributeTypes.fromJson(String value) =>
      fromJson$Enum$ModelAttributeTypes(value);

  String toJson() => toJson$Enum$ModelAttributeTypes(this);
}

String toJson$Enum$ModelAttributeTypes(Enum$ModelAttributeTypes e) {
  switch (e) {
    case Enum$ModelAttributeTypes.binary:
      return r'binary';
    case Enum$ModelAttributeTypes.binarySet:
      return r'binarySet';
    case Enum$ModelAttributeTypes.$bool:
      return r'bool';
    case Enum$ModelAttributeTypes.list:
      return r'list';
    case Enum$ModelAttributeTypes.map:
      return r'map';
    case Enum$ModelAttributeTypes.number:
      return r'number';
    case Enum$ModelAttributeTypes.numberSet:
      return r'numberSet';
    case Enum$ModelAttributeTypes.string:
      return r'string';
    case Enum$ModelAttributeTypes.stringSet:
      return r'stringSet';
    case Enum$ModelAttributeTypes.$_null:
      return r'_null';
    case Enum$ModelAttributeTypes.$unknown:
      return r'$unknown';
  }
}

Enum$ModelAttributeTypes fromJson$Enum$ModelAttributeTypes(String value) {
  switch (value) {
    case r'binary':
      return Enum$ModelAttributeTypes.binary;
    case r'binarySet':
      return Enum$ModelAttributeTypes.binarySet;
    case r'bool':
      return Enum$ModelAttributeTypes.$bool;
    case r'list':
      return Enum$ModelAttributeTypes.list;
    case r'map':
      return Enum$ModelAttributeTypes.map;
    case r'number':
      return Enum$ModelAttributeTypes.number;
    case r'numberSet':
      return Enum$ModelAttributeTypes.numberSet;
    case r'string':
      return Enum$ModelAttributeTypes.string;
    case r'stringSet':
      return Enum$ModelAttributeTypes.stringSet;
    case r'_null':
      return Enum$ModelAttributeTypes.$_null;
    default:
      return Enum$ModelAttributeTypes.$unknown;
  }
}

enum Enum$ModelSortDirection {
  ASC,
  DESC,
  $unknown;

  factory Enum$ModelSortDirection.fromJson(String value) =>
      fromJson$Enum$ModelSortDirection(value);

  String toJson() => toJson$Enum$ModelSortDirection(this);
}

String toJson$Enum$ModelSortDirection(Enum$ModelSortDirection e) {
  switch (e) {
    case Enum$ModelSortDirection.ASC:
      return r'ASC';
    case Enum$ModelSortDirection.DESC:
      return r'DESC';
    case Enum$ModelSortDirection.$unknown:
      return r'$unknown';
  }
}

Enum$ModelSortDirection fromJson$Enum$ModelSortDirection(String value) {
  switch (value) {
    case r'ASC':
      return Enum$ModelSortDirection.ASC;
    case r'DESC':
      return Enum$ModelSortDirection.DESC;
    default:
      return Enum$ModelSortDirection.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
