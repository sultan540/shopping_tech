import 'package:flutter_bloc/flutter_bloc.dart';

class Passwordstate {
  final bool isvalid;
  final String messagePassword;
  final String messageConfirmPassword;
  Passwordstate({
    required this.isvalid,
    required this.messagePassword,
    required this.messageConfirmPassword,
  });
}

class CubitPassword extends Cubit<Passwordstate> {
  CubitPassword()
    : super(
        Passwordstate(
          isvalid: false,
          messagePassword: "",
          messageConfirmPassword: "",
        ),
      );

  void validatePassword(String password) {
    final regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$');
    if (password.isEmpty) {
      emit(
        Passwordstate(
          isvalid: false,
          messagePassword: "password is required",
          messageConfirmPassword: "",
        ),
      );
    } else if (!regex.hasMatch(password)) {
      emit(
        Passwordstate(
          isvalid: false,
          messagePassword:
              "The password must contain letters and numbers and be at least 6 characters long.",
          messageConfirmPassword: "",
        ),
      );
    } else {
      emit(
        Passwordstate(
          isvalid: true,
          messagePassword: "password is Valid",
          messageConfirmPassword: "",
        ),
      );
    }
  }

  void confirmPassword(String password, String confirmPassword) {
    if (confirmPassword.isEmpty) {
      emit(
        Passwordstate(
          isvalid: false,
          messagePassword: "",
          messageConfirmPassword: "confirm password is required",
        ),
      );
    } else if (password != confirmPassword) {
      emit(
        Passwordstate(
          isvalid: false,
          messagePassword: "",
          messageConfirmPassword: "passwords do not  match",
        ),
      );
    } else if (password == confirmPassword) {
      emit(
        Passwordstate(
          isvalid: true,
          messagePassword: "",
          messageConfirmPassword: "password match",
        ),
      );
    } else {
      emit(
        Passwordstate(
          isvalid: true,
          messagePassword: "",
          messageConfirmPassword: "Error",
        ),
      );
    }
  }
}
