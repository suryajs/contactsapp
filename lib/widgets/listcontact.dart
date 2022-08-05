import 'package:flutter/material.dart';
import 'package:bitcontacts/lists/staffList.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import '../screens/details_screen.dart';

Widget listContact = ListView.builder(
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        Staff staff = itemList[index];
        return Card(
          child: ListTile(
            tileColor: Color.fromARGB(255, 172, 221, 244),
            title: Text(
              staff.firstName + staff.lastName,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  // color: Colors.black87,
                  fontFamily: 'Asap'),
            ),
            subtitle: Text(staff.department,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    // color: Colors.black87,
                    fontFamily: 'Asap')),
            leading: Image.asset(staff.imageUrl),
            trailing: IconButton(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber(
                    staff.phone.toString());
              },
              icon: Icon(Icons.call),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StaffDetailsScreen(staff)));
            },
          ),
        );
      });