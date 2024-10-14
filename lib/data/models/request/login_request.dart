import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest with EquatableMixin {
  final String? username;
  final String? password;

  const LoginRequest({
    this.username,
    this.password,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  List<Object?> get props => [username, password];

  LoginRequest copyWith({
    String? username,
    String? password,
  }) {
    return LoginRequest(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
