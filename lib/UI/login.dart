import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_firebase_ddd_course/application/auth/bloc/auth_bloc.dart';
import 'package:notes_firebase_ddd_course/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:notes_firebase_ddd_course/injection.dart';
import 'package:notes_firebase_ddd_course/presentation/routes/router.gr.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (BuildContext context) => getIt<SignInFormBloc>(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        builder: ExtendedNavigator(router: Router()),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (BuildContext context, state) {
      state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
              (failure) => const SnackBar(
                    content: Text('cancelled'),
                  ), (r) {/**route to next page */}));
      const SnackBar(content: Text('User Cancelled'));
    }, builder: (BuildContext context, state) {
      bool hidePassword = true;
      return Scaffold(
        appBar: AppBar(title: const Text('Notes App')),
        body: Form(
          autovalidate: state.showErrorMsg,
          child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                '🗒',
                style: TextStyle(fontSize: 200.0),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.email),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                onChanged: (str) {
                  context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(str));
                }, // emailChanges event of bloc should be triggered
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                        (l) => 'INVALID EMAIL',
                        (r) =>
                            null), // check value of state.emailAddress and display message accordingly
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {
                      hidePassword = !hidePassword;
                    },
                  ),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                autocorrect: false,
                obscureText: hidePassword,
                onChanged: (str) {
                  context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(str));
                }, // emailChanges event of bloc should be triggered
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .password
                    .value
                    .fold(
                        (l) => 'INVALID PASSWORD',
                        (r) =>
                            null), // check value of state.emailAddress and display message accordingly
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Expanded(
                      child: FlatButton(
                    onPressed: () {
                      context.bloc<SignInFormBloc>().add(const SignInFormEvent
                          .signInWithEmailnPasswordPressed());
                    },
                    child: const Text('Sign In'),
                  )),
                  Expanded(
                      child: FlatButton(
                    onPressed: () {
                      context.bloc<SignInFormBloc>().add(const SignInFormEvent
                          .registerWithEmailnPasswordPressed());
                    },
                    child: const Text('Register'),
                  )),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                child: const Text('Sign In with Google'),
              ),
            ]),
          ),
        ),
      );
    });
  }
}
