

import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utilites/api_services.dart';
import 'package:bookapp/core/utilites/app_routes.dart';
import 'package:bookapp/core/utilites/service_locator.dart';
import 'package:bookapp/features/home/data/repo/homerepo_implmentation.dart';
import 'package:bookapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookapp/features/home/presentation/manager/newest_books_cubit/newest_books_cibit.dart';
import 'package:bookapp/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(getIt.get<HomeRepoImpl>()
        )..fetchFearturedBooks()
        ),
        BlocProvider(create: (context)=> NewestBooksCubit(getIt.get<HomeRepoImpl>()
        )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(

        routerConfig: AppRoutes.router,


        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,

        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),

      ),
    );
  }
}



