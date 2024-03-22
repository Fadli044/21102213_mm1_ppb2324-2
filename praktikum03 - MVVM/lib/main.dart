// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(providers: [
//       BlocProvider(
//         create: (context) => ContactCubit(),
//       )
//     ],
//     child: const MaterialApp(
//       home: HomeScreen(),
//     ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum03/bloc/contact_cubit.dart'; // Pastikan import ContactCubit
import 'package:praktikum03/views/home_screen.dart'; // Pastikan import HomeScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactCubit(),
        ),
      ],
      child: const MaterialApp(
        home:
            HomeScreen(), // Pastikan HomeScreen sudah diimport dan didefinisikan
      ),
    );
  }
}
