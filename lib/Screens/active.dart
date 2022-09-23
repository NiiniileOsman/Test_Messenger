import 'package:flutter/material.dart';

class active extends StatelessWidget {
   active({
    Key? key,
     required this.image
  }) : super(key: key);
final image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, bottom: 15),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40,top: 5,right: 2),
                height: 13,
                width: 13,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(width: 1.0,color: Colors.white),
              ),
              ),
            ],
          ),
        ),
     
      ],
    );
  }
}
