import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest with EquatableMixin {
  final String? username;
  final String? name;
  final String? surname;
  final String? language;
  final String? password;
  final String? email;

  const RegisterRequest({
    this.username,
    this.name,
    this.surname,
    this.language,
    this.password,
    this.email,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);

  @override
  List<Object?> get props =>
      [username, name, surname, language, password, email];

  RegisterRequest copyWith({
    String? username,
    String? name,
    String? surname,
    String? language,
    String? password,
    String? email,
  }) {
    return RegisterRequest(
      username: username ?? this.username,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      language: language ?? this.language,
      password: password ?? this.password,
      email: email ?? this.email,
    );
  }
}
