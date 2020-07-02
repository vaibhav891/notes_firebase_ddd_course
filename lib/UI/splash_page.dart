import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_firebase_ddd_course/application/auth/bloc/auth_bloc.dart';
import 'package:notes_firebase_ddd_course/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, authState) {
        authState.map(
          initial: (e) {},
          authenticated: (e) {
            print('i am authenticated');
          },
          unauthenticated: (e) {
            ExtendedNavigator.of(context).pushReplacementNamed(Routes.appBodyRoute);
          },
        );
      },
      child: const Scaffold(body: Center(child: CircularProgressIndicator(),),),
    );
  }
}
