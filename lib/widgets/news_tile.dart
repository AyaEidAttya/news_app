import 'package:flutter/material.dart';
import 'package:news_app/Model/Artical_Model.dart';

class NewStile extends StatelessWidget {
  const NewStile({super.key, required this.articalModel});
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align texts to the start
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
         child: articalModel.image != null
    ? Image.network(
        articalModel.image!,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      )
    : Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey, // You can use a placeholder color or widget
        child: Icon(Icons.image, color: Colors.white),
      ),

        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articalModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 14,
              color: Colors.black), // Corrected Colors.grau to Colors.grey
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articalModel.subTitle ??'',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey), // Adjusted font size for readability
        ),
      ],
    );
  }
}
