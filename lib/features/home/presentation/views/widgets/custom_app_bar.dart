import 'package:bookapp/core/utilites/app_routes.dart';
import 'package:bookapp/core/utilites/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20,left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,height: 20,),
          IconButton( onPressed: () {
            GoRouter.of(context).push(AppRoutes.kSearchView);
          },
            icon: const Icon( FontAwesomeIcons.magnifyingGlass,size: 22),
          )
        ],
      ),
    );
  }
}