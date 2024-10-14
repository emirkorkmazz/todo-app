import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'logout_request.g.dart';

@JsonSerializable()
class LogoutRequest with EquatableMixin {
  final String? userId;

  const LogoutRequest({
    this.userId,
  });

  factory LogoutRequest.fromJson(Map<String, dynamic> json) =>
      _$LogoutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutRequestToJson(this);

  @override
  List<Object?> get props => [userId];

  LogoutRequest copyWith({
    String? userId,
  }) {
    return LogoutRequest(
      userId: userId ?? this.userId,
    );
  }
}
