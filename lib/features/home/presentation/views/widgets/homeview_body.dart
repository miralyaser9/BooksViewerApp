import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utilites/assets.dart';
import 'package:bookapp/core/utilites/styles.dart';
import 'package:bookapp/features/home/presentation/views/widgets/bestseller_item.dart';
import 'package:bookapp/features/home/presentation/views/widgets/bestseller_listview.dart';
import 'package:bookapp/features/home/presentation/views/widgets/books_listview.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/homeview_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double height=MediaQuery.of(context).size.height*0.1;
    return    const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BooksListView(),
              SizedBox(height: 20,),
              Padding(
                padding:kHorizontalPadding30,
                child: Text("Newest Books",style: Styles.textStyle20,),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child:   BestSellerListView(),
        )
      ],

    );
  }
}











