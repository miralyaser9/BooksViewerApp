import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utilites/styles.dart';
import 'package:bookapp/features/home/presentation/views/widgets/bestseller_item.dart';
import 'package:bookapp/features/home/presentation/views/widgets/search_result_listview.dart';
import 'package:bookapp/features/search/presentation/views/widgets/custom_searchtextfeild.dart';
import 'package:bookapp/features/search/presentation/views/widgets/searchview_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);

          }, icon: const Icon(Icons.arrow_back_outlined))
             , const CustomSearchTextField(),
          const SizedBox(height: 16,),
          const Text("Search Result",style: Styles.textStyle18,),
          const SizedBox(height: 16,),
          const Expanded(child: SearchResultListView())

        ],
      ),
    );
  }
}




