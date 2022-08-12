import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
// import 'package:flutter_launch/flutter_launch.dart';
import 'package:bitcontacts/lists/staffList.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_sms/flutter_sms.dart';

// final Staff staff;
// List<String> recipents = ;
// List<String> recepients = [];
class StaffDetailsScreen extends StatelessWidget {
  
  final Staff staff;

  StaffDetailsScreen(this.staff);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dr ' + staff.firstName + staff.lastName),
        ),
        body:ListView(
          
          children: [
            Container(
               padding: EdgeInsets.only(
                top: 50,
                left: 150,
                right: 150,
                bottom: 0
              ),
              
              child: Image.asset(
              staff.imageUrl,
              // scale: 2,
              alignment: Alignment.center,
        
            ),
            ),
            Container(
            padding: EdgeInsets.only(top: 30),
              child: Text(
                'Dr ' + staff.firstName + ' ' +staff.lastName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26.0, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
             padding: EdgeInsets.only(top: 15),
              child: Text(
                staff.staffID,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
             padding: EdgeInsets.only(top: 20),
              child: Text(
                staff.designation.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
            
            Container(
             padding: EdgeInsets.only(top: 20,
             bottom: 15),
              child: Text(
                staff.department,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Divider(color: Colors.black ),
            ),
            
            

            Container(
              padding: EdgeInsets.only(top: 5),
              child: ListTile(
                leading: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.mail_sharp)),
                  title: Text(staff.email),
                  
                  ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: ListTile(
                leading: IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.phone_android)),
                  title: Text(staff.phone.toString()),
                  trailing: IconButton(onPressed: ()async{
                   await FlutterPhoneDirectCaller.callNumber(
                     staff.phone.toString());
                  },
                   icon: Icon(Icons.call))
                  ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,),
              child: ListTile(
                leading: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.call)),
                  title: Text(staff.phone.toString()),
                  trailing: IconButton(onPressed: ()async {
                   await FlutterPhoneDirectCaller.callNumber(
                     staff.phone.toString());
                  }, icon: Icon(Icons.call))
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Divider(color: Color.fromARGB(221, 0, 0, 0) ),
            ),            
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,   
                          
                children: [
                  IconButton(
                    onPressed: ()async{
                      // await sendSMS(message: 'Hello', recipients: recipents, sendDirect: true)
                    }, 
                    icon: Icon(Icons.message),iconSize: 30,),
                    IconButton(
                      onPressed: () async{
                        bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");
                        if (whatsapp) {
                          await FlutterLaunch.launchWhatsapp(
                          phone: '+91' + staff.phone.toString(), message: "Hello");
                        } 
                        },
                      icon: Icon(Icons.whatsapp),iconSize: 30),
                      IconButton(
                    onPressed:(() {}) , 
                    icon: Icon(Icons.mail),iconSize: 30)
                ],
              ),
            )
            
          ],
        )
    );
  }
}

