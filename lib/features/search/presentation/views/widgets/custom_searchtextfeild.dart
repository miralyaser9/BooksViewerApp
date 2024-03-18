import 'package:bookapp/features/home/presentation/manager/searched_books_cubit/searched_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);
  static final TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey=GlobalKey();
    return  Form(
      key: formKey,
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return 'This field is required';

          }
        },
        controller: textEditingController,
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder()
          ,
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon:    Opacity(opacity: 0.8,
              child: IconButton(onPressed: () {
                if(formKey.currentState!.validate()){
                  BlocProvider.of<SearchedBooksCubit>(context).fetchSearchedBooks(category: textEditingController.text);
                  textEditingController.clear();
                }

              }, icon: const Icon( FontAwesomeIcons.magnifyingGlass,size: 22),)),),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),borderSide: const BorderSide(color: Colors.white)
    );
  }
}
