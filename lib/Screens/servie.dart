import 'package:flutter/material.dart';

class service extends StatelessWidget {
  const service({
    Key? key,
  }) : super(key: key);
// final Widget Color1;
// final Text;
// final Widget TextColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 65,
              width: 65,
              margin: EdgeInsets.only(left: 20,right: 10,bottom: 10,top: 10),
              decoration: BoxDecoration(
                color: Color(0xffFAEAEF),
                borderRadius: BorderRadius.circular(10),
                // shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(
                    'images/hear.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
           Text(
          "Heart",
          style: TextStyle(
              fontSize: 15, color: Color(0xffE696A8),),        
        ),
          ],
        ),
       
        Column(
          children: [
            Container(
              height: 65,
              width: 65,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffEFF6FC),
                borderRadius: BorderRadius.circular(10),
                // shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(
                    'images/ddd.png',
                  ),
                  fit: BoxFit.contain,
                  alignment: Alignment.centerRight
                ),
              ),
            ),
           Text(
          "Dental",
          style: TextStyle(
              fontSize: 15,   color: Color(0xff5A77BA),),        
        ),
          ],
        ),
          Column(
          children: [
            Container(
              height: 65,
              width: 65,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffF6F7FB),
                borderRadius: BorderRadius.circular(10),
                // shape: BoxShape.circle,
              ),
              child: Image(
                image: AssetImage(
                  'images/gg.png',
                ),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
           Text(
          "Ear",
          style: TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 112, 142, 212),),        
        ),
          ],
        ),
          Column(
          children: [
            Container(
              height: 65,
              width: 65,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffF6E9EF),
                borderRadius: BorderRadius.circular(10),
                // shape: BoxShape.circle,
              ),
              child: ClipRect(
                child: Image(
                  image: AssetImage(
                    'images/sd.png',
                  ),
                  fit: BoxFit.fill,
                  // alignment: Alignment.center,
                ),
              ),
            ),
           Text(
          "Brain",
          style: TextStyle(
              fontSize: 15, color: Color(0xffE5C2BE),),        
        ),
          ],
        ),
       
  
      ],
    );
  }
}