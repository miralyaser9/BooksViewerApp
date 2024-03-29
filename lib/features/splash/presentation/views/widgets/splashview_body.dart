import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utilites/app_routes.dart';
import 'package:bookapp/core/utilites/assets.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:bookapp/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {

   late AnimationController animationController;
    late Animation<Offset> slidingAnimation;

    @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigatorToHome();

  }




  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 5,),
        SlidingText(slidingAnimation: slidingAnimation)

      ],
    );
  }
   void initSlidingAnimation() {
     animationController=AnimationController(vsync: this,duration: const Duration(seconds: 2));
     slidingAnimation=Tween<Offset>(begin:const Offset(0, 10) ,end:Offset.zero ).animate(animationController);
     animationController.forward();
   }

   void navigatorToHome() {
     Future.delayed(const Duration(seconds: 2),(){

       GoRouter.of(context).push(AppRoutes.kHomeView);

     });
   }
}



