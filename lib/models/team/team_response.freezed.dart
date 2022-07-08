// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamResponse _$TeamResponseFromJson(Map<String, dynamic> json) {
  return _TeamResponse.fromJson(json);
}

/// @nodoc
class _$TeamResponseTearOff {
  const _$TeamResponseTearOff();

  _TeamResponse call(
      {required int page,
      @JsonKey(name: 'results') List<Team> teams = const []}) {
    return _TeamResponse(
      page: page,
      teams: teams,
    );
  }

  TeamResponse fromJson(Map<String, Object?> json) {
    return TeamResponse.fromJson(json);
  }
}

/// @nodoc
const $TeamResponse = _$TeamResponseTearOff();

/// @nodoc
mixin _$TeamResponse {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Team> get teams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamResponseCopyWith<TeamResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamResponseCopyWith<$Res> {
  factory $TeamResponseCopyWith(
          TeamResponse value, $Res Function(TeamResponse) then) =
      _$TeamResponseCopyWithImpl<$Res>;
  $Res call({int page, @JsonKey(name: 'results') List<Team> teams});
}

/// @nodoc
class _$TeamResponseCopyWithImpl<$Res> implements $TeamResponseCopyWith<$Res> {
  _$TeamResponseCopyWithImpl(this._value, this._then);

  final TeamResponse _value;
  // ignore: unused_field
  final $Res Function(TeamResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? teams = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      teams: teams == freezed
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ));
  }
}

/// @nodoc
abstract class _$TeamResponseCopyWith<$Res>
    implements $TeamResponseCopyWith<$Res> {
  factory _$TeamResponseCopyWith(
          _TeamResponse value, $Res Function(_TeamResponse) then) =
      __$TeamResponseCopyWithImpl<$Res>;
  @override
  $Res call({int page, @JsonKey(name: 'results') List<Team> teams});
}

/// @nodoc
class __$TeamResponseCopyWithImpl<$Res> extends _$TeamResponseCopyWithImpl<$Res>
    implements _$TeamResponseCopyWith<$Res> {
  __$TeamResponseCopyWithImpl(
      _TeamResponse _value, $Res Function(_TeamResponse) _then)
      : super(_value, (v) => _then(v as _TeamResponse));

  @override
  _TeamResponse get _value => super._value as _TeamResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? teams = freezed,
  }) {
    return _then(_TeamResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      teams: teams == freezed
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamResponse implements _TeamResponse {
  const _$_TeamResponse(
      {required this.page, @JsonKey(name: 'results') this.teams = const []});

  factory _$_TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TeamResponseFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'results')
  final List<Team> teams;

  @override
  String toString() {
    return 'TeamResponse(page: $page, teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeamResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.teams, teams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(teams));

  @JsonKey(ignore: true)
  @override
  _$TeamResponseCopyWith<_TeamResponse> get copyWith =>
      __$TeamResponseCopyWithImpl<_TeamResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamResponseToJson(this);
  }
}

abstract class _TeamResponse implements TeamResponse {
  const factory _TeamResponse(
      {required int page,
      @JsonKey(name: 'results') List<Team> teams}) = _$_TeamResponse;

  factory _TeamResponse.fromJson(Map<String, dynamic> json) =
      _$_TeamResponse.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<Team> get teams;
  @override
  @JsonKey(ignore: true)
  _$TeamResponseCopyWith<_TeamResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
class _$TeamTearOff {
  const _$TeamTearOff();

  _Team call(
      {String? id,
      String? creatorId,
      String? creator,
      String? teamName,
      String? summary,
      String? objective,
      String? goal,
      String? previousGoalSummary,
      bool previousGoalAchieved = false,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      String? coverImageUrl,
      DateTime? startDate,
      DateTime? endDate,
      String? teamDetails,
      List<LocalUser> members = const [],
      List<String> likes = const [],
      @JsonKey(name: 'members_count') int memberCount = 0,
      @JsonKey(name: 'likes_count') int likesCount = 0,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance}) {
    return _Team(
      id: id,
      creatorId: creatorId,
      creator: creator,
      teamName: teamName,
      summary: summary,
      objective: objective,
      goal: goal,
      previousGoalSummary: previousGoalSummary,
      previousGoalAchieved: previousGoalAchieved,
      geometry: geometry,
      area: area,
      location: location,
      imageUrl: imageUrl,
      coverImageUrl: coverImageUrl,
      startDate: startDate,
      endDate: endDate,
      teamDetails: teamDetails,
      members: members,
      likes: likes,
      memberCount: memberCount,
      likesCount: likesCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      distance: distance,
    );
  }

  Team fromJson(Map<String, Object?> json) {
    return Team.fromJson(json);
  }
}

/// @nodoc
const $Team = _$TeamTearOff();

/// @nodoc
mixin _$Team {
  String? get id => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  String? get teamName => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get objective => throw _privateConstructorUsedError;
  String? get goal => throw _privateConstructorUsedError;
  String? get previousGoalSummary => throw _privateConstructorUsedError;
  bool get previousGoalAchieved => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get teamDetails => throw _privateConstructorUsedError;
  List<LocalUser> get members => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'members_count')
  int get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes_count')
  int get likesCount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creatorId,
      String? creator,
      String? teamName,
      String? summary,
      String? objective,
      String? goal,
      String? previousGoalSummary,
      bool previousGoalAchieved,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      String? coverImageUrl,
      DateTime? startDate,
      DateTime? endDate,
      String? teamDetails,
      List<LocalUser> members,
      List<String> likes,
      @JsonKey(name: 'members_count') int memberCount,
      @JsonKey(name: 'likes_count') int likesCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance});

  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? creator = freezed,
    Object? teamName = freezed,
    Object? summary = freezed,
    Object? objective = freezed,
    Object? goal = freezed,
    Object? previousGoalSummary = freezed,
    Object? previousGoalAchieved = freezed,
    Object? geometry = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? coverImageUrl = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? teamDetails = freezed,
    Object? members = freezed,
    Object? likes = freezed,
    Object? memberCount = freezed,
    Object? likesCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      teamName: teamName == freezed
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      objective: objective == freezed
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      previousGoalSummary: previousGoalSummary == freezed
          ? _value.previousGoalSummary
          : previousGoalSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      previousGoalAchieved: previousGoalAchieved == freezed
          ? _value.previousGoalAchieved
          : previousGoalAchieved // ignore: cast_nullable_to_non_nullable
              as bool,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      teamDetails: teamDetails == freezed
          ? _value.teamDetails
          : teamDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<LocalUser>,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      memberCount: memberCount == freezed
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) then) =
      __$TeamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creatorId,
      String? creator,
      String? teamName,
      String? summary,
      String? objective,
      String? goal,
      String? previousGoalSummary,
      bool previousGoalAchieved,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      String? coverImageUrl,
      DateTime? startDate,
      DateTime? endDate,
      String? teamDetails,
      List<LocalUser> members,
      List<String> likes,
      @JsonKey(name: 'members_count') int memberCount,
      @JsonKey(name: 'likes_count') int likesCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance});

  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(_Team _value, $Res Function(_Team) _then)
      : super(_value, (v) => _then(v as _Team));

  @override
  _Team get _value => super._value as _Team;

  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? creator = freezed,
    Object? teamName = freezed,
    Object? summary = freezed,
    Object? objective = freezed,
    Object? goal = freezed,
    Object? previousGoalSummary = freezed,
    Object? previousGoalAchieved = freezed,
    Object? geometry = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? coverImageUrl = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? teamDetails = freezed,
    Object? members = freezed,
    Object? likes = freezed,
    Object? memberCount = freezed,
    Object? likesCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? distance = freezed,
  }) {
    return _then(_Team(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      teamName: teamName == freezed
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      objective: objective == freezed
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      previousGoalSummary: previousGoalSummary == freezed
          ? _value.previousGoalSummary
          : previousGoalSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      previousGoalAchieved: previousGoalAchieved == freezed
          ? _value.previousGoalAchieved
          : previousGoalAchieved // ignore: cast_nullable_to_non_nullable
              as bool,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      teamDetails: teamDetails == freezed
          ? _value.teamDetails
          : teamDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<LocalUser>,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      memberCount: memberCount == freezed
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Team implements _Team {
  const _$_Team(
      {this.id,
      this.creatorId,
      this.creator,
      this.teamName,
      this.summary,
      this.objective,
      this.goal,
      this.previousGoalSummary,
      this.previousGoalAchieved = false,
      this.geometry,
      this.area,
      this.location,
      this.imageUrl,
      this.coverImageUrl,
      this.startDate,
      this.endDate,
      this.teamDetails,
      this.members = const [],
      this.likes = const [],
      @JsonKey(name: 'members_count') this.memberCount = 0,
      @JsonKey(name: 'likes_count') this.likesCount = 0,
      this.createdAt,
      this.updatedAt,
      this.distance});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  final String? id;
  @override
  final String? creatorId;
  @override
  final String? creator;
  @override
  final String? teamName;
  @override
  final String? summary;
  @override
  final String? objective;
  @override
  final String? goal;
  @override
  final String? previousGoalSummary;
  @JsonKey()
  @override
  final bool previousGoalAchieved;
  @override
  final Geometry? geometry;
  @override
  final String? area;
  @override
  final String? location;
  @override
  final String? imageUrl;
  @override
  final String? coverImageUrl;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? teamDetails;
  @JsonKey()
  @override
  final List<LocalUser> members;
  @JsonKey()
  @override
  final List<String> likes;
  @override
  @JsonKey(name: 'members_count')
  final int memberCount;
  @override
  @JsonKey(name: 'likes_count')
  final int likesCount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final double? distance;

  @override
  String toString() {
    return 'Team(id: $id, creatorId: $creatorId, creator: $creator, teamName: $teamName, summary: $summary, objective: $objective, goal: $goal, previousGoalSummary: $previousGoalSummary, previousGoalAchieved: $previousGoalAchieved, geometry: $geometry, area: $area, location: $location, imageUrl: $imageUrl, coverImageUrl: $coverImageUrl, startDate: $startDate, endDate: $endDate, teamDetails: $teamDetails, members: $members, likes: $likes, memberCount: $memberCount, likesCount: $likesCount, createdAt: $createdAt, updatedAt: $updatedAt, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Team &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.teamName, teamName) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.objective, objective) &&
            const DeepCollectionEquality().equals(other.goal, goal) &&
            const DeepCollectionEquality()
                .equals(other.previousGoalSummary, previousGoalSummary) &&
            const DeepCollectionEquality()
                .equals(other.previousGoalAchieved, previousGoalAchieved) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.coverImageUrl, coverImageUrl) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.teamDetails, teamDetails) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality()
                .equals(other.memberCount, memberCount) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(creatorId),
        const DeepCollectionEquality().hash(creator),
        const DeepCollectionEquality().hash(teamName),
        const DeepCollectionEquality().hash(summary),
        const DeepCollectionEquality().hash(objective),
        const DeepCollectionEquality().hash(goal),
        const DeepCollectionEquality().hash(previousGoalSummary),
        const DeepCollectionEquality().hash(previousGoalAchieved),
        const DeepCollectionEquality().hash(geometry),
        const DeepCollectionEquality().hash(area),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(imageUrl),
        const DeepCollectionEquality().hash(coverImageUrl),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(teamDetails),
        const DeepCollectionEquality().hash(members),
        const DeepCollectionEquality().hash(likes),
        const DeepCollectionEquality().hash(memberCount),
        const DeepCollectionEquality().hash(likesCount),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(distance)
      ]);

  @JsonKey(ignore: true)
  @override
  _$TeamCopyWith<_Team> get copyWith =>
      __$TeamCopyWithImpl<_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(this);
  }
}

abstract class _Team implements Team {
  const factory _Team(
      {String? id,
      String? creatorId,
      String? creator,
      String? teamName,
      String? summary,
      String? objective,
      String? goal,
      String? previousGoalSummary,
      bool previousGoalAchieved,
      Geometry? geometry,
      String? area,
      String? location,
      String? imageUrl,
      String? coverImageUrl,
      DateTime? startDate,
      DateTime? endDate,
      String? teamDetails,
      List<LocalUser> members,
      List<String> likes,
      @JsonKey(name: 'members_count') int memberCount,
      @JsonKey(name: 'likes_count') int likesCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? distance}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  String? get id;
  @override
  String? get creatorId;
  @override
  String? get creator;
  @override
  String? get teamName;
  @override
  String? get summary;
  @override
  String? get objective;
  @override
  String? get goal;
  @override
  String? get previousGoalSummary;
  @override
  bool get previousGoalAchieved;
  @override
  Geometry? get geometry;
  @override
  String? get area;
  @override
  String? get location;
  @override
  String? get imageUrl;
  @override
  String? get coverImageUrl;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get teamDetails;
  @override
  List<LocalUser> get members;
  @override
  List<String> get likes;
  @override
  @JsonKey(name: 'members_count')
  int get memberCount;
  @override
  @JsonKey(name: 'likes_count')
  int get likesCount;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  double? get distance;
  @override
  @JsonKey(ignore: true)
  _$TeamCopyWith<_Team> get copyWith => throw _privateConstructorUsedError;
}
