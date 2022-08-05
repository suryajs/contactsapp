import 'package:flutter/material.dart';
import 'package:bitcontacts/lists/staffList.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../screens/details_screen.dart';

  
  Widget gridContact = Container(
      margin: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: staffList().length,
        itemBuilder: (context, index) {
          var imageData = itemList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StaffDetailsScreen(imageData)));
            },
            child: GridTile(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(imageData.imageUrl),
                  )),
                  Text(
                    imageData.firstName +
                        imageData.lastName +
                        imageData.department,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          );
        },
        // crossAxisCount: 2,
        // childAspectRatio: 1.5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5),
        // children: itemList.map((Staff imageData) {
        //   return ;
        // }).toList(),
      ));