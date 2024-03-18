import 'package:bookapp/core/utilites/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorPage extends StatelessWidget {
  const CustomErrorPage({Key? key,required this.errMessage}) : super(key: key);
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage,style: Styles.textStyle18,textAlign: TextAlign.center,));
  }
}
