import 'package:bookapp/core/utilites/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, this.imageUrl}) : super(key: key);
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        
        aspectRatio: 2.7/3.5,
        child:CachedNetworkImage(
          imageUrl: imageUrl!,fit: BoxFit.fill,
        errorWidget: (context,url,error)=> const Icon(Icons.warning_rounded),
          placeholder: (context,url)=>const Center(child: CircularProgressIndicator()),
        )
      ),
    );
  }
}