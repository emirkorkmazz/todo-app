import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '/core/core.dart';
import 'auth/auth.dart';
import 'auth/login/bloc/login_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => getIt<LoginBloc>(),
        ),
        BlocProvider<SignupBloc>(
          create: (context) => getIt<SignupBloc>(),
        )
      ],
      child: MaterialApp.router(
        /// [Router]
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,

        /// [L10n]
        /// Delegate: Temsilci Listesi
        localizationsDelegates: AppLocalizations.localizationsDelegates,

        /// Desteklenen Diller
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
