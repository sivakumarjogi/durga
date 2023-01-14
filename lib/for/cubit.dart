
import 'package:durga/for/event.dart';
import 'package:durga/for/repo.dart';
import 'package:durga/for/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Bloc<LoginEvent, LoginState> {
  LoginRepo repo;

  LoginCubit(this.repo) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginInitial) {
        print("hello2");
        emit(LoginInitial());
      } else if (event is Login) {
        emit(LoginLoading());
        var body = {
          "Email": event.email,
          "password": event.password,
        };
        print(body.toString());
        try {
          emit(LoginLoading());
          var data = await repo.login(body);
          print("data.toString()");
          print(data.toString());
          if (data.statusCode == 200) {
            debugPrint(data.toString());
            emit(LoginSuccess());
          } else {
            // emit(LoginLoading());
            emit(LoginFailure(error: "No data"));
          }
        } catch (e) {
          emit(LoginFailure(error: "No Error "));
          // emit(LoginLoading());
        }
      } else {
        print("hello3");
      }
    });
  }
}
