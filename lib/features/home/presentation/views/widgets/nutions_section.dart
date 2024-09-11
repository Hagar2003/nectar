
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/utils/styles.dart';


class NutionsSection extends StatelessWidget {
  const NutionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [  Text('Nutritions',style: Styles.Text23),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('100 gr',style:
               TextStyle(fontSize: 15,color:Colors.grey.shade800),),
            ),
            
                IconButton(onPressed: (){},icon: Icon(FontAwesomeIcons.chevronRight,  color: Colors.black,
                      size: 22,))
      
                  
          ],
        ),
        ]
      ),
    );
  }
}

