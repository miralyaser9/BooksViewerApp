import 'package:bookapp/core/utilites/functions/helper_functions.dart';

import 'package:bookapp/core/utilites/styles.dart';
import 'package:bookapp/core/widgets/custom_button.dart';
import 'package:bookapp/features/home/data/models/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key,required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(onPress: () async {

            },borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16))
              , height: 48, child: Text("19.99E",style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w900,color: Colors.black),)
              ,),
          ),
          Expanded(
            child: CustomButton(onPress: ()async{

              await lanchCustomUrl(context,bookModel.volumeInfo.previewLink!);
            }
              ,borderRadius: const BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16))
              , height: 48,backgroundColor: const Color(0xefee8262),
              child: Text(getText()
                ,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900,color: Colors.white),)
              ,),
          )
        ],
      ),
    );
  }



   String getText() {
    if(bookModel.volumeInfo.previewLink==null){
      return 'Not Available';
    }
    else{
      return 'Preview';
    }
   }
}