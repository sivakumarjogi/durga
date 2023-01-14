import 'package:durga/for/cubit.dart';
import 'package:durga/for/repo.dart';
import 'package:durga/for/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  bool _autoValidate = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(LoginRepo()),
      child:   BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginFailure) {
            _onWidgetDidBuild(() {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
            });
          } else if (state is LoginLoading) {
             const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is LoginSuccess) {
            _onWidgetDidBuild(() {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text("OK")),
                );
            });
          }
        },
        child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              if (state is LoginFailure) {
                _onWidgetDidBuild(() {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                });
              } else if (state is LoginLoading) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is LoginLoading) {
                _onWidgetDidBuild(() {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(content: Text("OK")),
                    );
                });
              }
              return SafeArea(
                child: Scaffold(
                  body: SizedBox(
                    child: Form(
                      key: loginKey,
                      autovalidateMode:_autoValidate? AutovalidateMode.always: AutovalidateMode.disabled ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          TextFormField(
                            // decoration: const InputDecoration(
                            //   labelText: 'Email address',
                            //   filled: true,
                            //   isDense: true,
                            // ),
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            // autocorrect: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email is required.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            // decoration: const InputDecoration(
                            //   labelText: 'Password',
                            //   filled: true,
                            //   isDense: true,
                            // ),
                            obscureText: true,
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password is required.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            child:  const Text('LOG IN'),
                            onPressed: (){
                              if (loginKey.currentState!.validate()) {
                                BlocProvider.of<LoginCubit>(context).add(Login(email: _emailController.text, password: _passwordController.text));
                              } else {
                                setState(() {
                                  _autoValidate = true;
                                });
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
      ),

    );
  }

  void _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }
}
