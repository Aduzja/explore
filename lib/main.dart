import 'package:explore/src/application/app.dart';
import 'package:explore/src/application/cubit/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    BlocProvider(
      create: (context) => RootCubit()..start(),
      child: const MyApp(),
    ),
  );
}
