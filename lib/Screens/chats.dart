import 'package:flutter/material.dart';
class chats extends StatelessWidget {
  const chats({
    Key? key, required this.image, required this.name, required this.skill,required  this.message,required this.time,
  }) : super(key: key);
final name;
final skill;
final message;
final time;
final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(left:18,right: 18,top: 9,bottom: 9),
      width: double.infinity,
      decoration: BoxDecoration(color:Theme.of(context).cardColor,
      boxShadow: [
       BoxShadow(
        color: Colors.grey.shade300,
          
      
        blurRadius:2
       )
      ],
      borderRadius: BorderRadius.circular(15)
      ),
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
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
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5, top: 40, right: 2),
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(width: 1.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
         Expanded(
          flex: 3,
           child: Container(
            // color: Colors.red,
            margin: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                
                  
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(skill,style: TextStyle(color: Colors.grey.shade600,fontSize: 18),),
                 SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Text(message,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,),
                ),
              ],
            ),
           ),
         ),
          Expanded(child: Column(
            children: [
             Container(
              margin: EdgeInsets.only(top:14),
              child: Row(
                children: [
                  Icon(Icons.visibility,color: Colors.grey.shade500,size: 15,),
                  Text(time,style: TextStyle(fontSize: 13,color: Colors.grey.shade500,
                  ),)
    
                ],
              ),
             ),
            ],
          ))
          
          ],
        ),
      ),
    );
  }
}
