import 'package:flutter/material.dart';

class Staff {
  String firstName = '';
  String lastName ='';
  String department='';
  String staffID;
  String imageUrl;
  String designation='';
  String email='';
  int phone;
  bool teaching;

  Staff(
    {required this.firstName,
    required this.lastName,
    required this.department,
    required this.staffID,
    required this.imageUrl,
    required this.designation,
    required this.email,
    required this.phone,
    required this.teaching

  });
}
List<Staff> itemList = staffList();
List<Staff> staffList(){
  return [Staff(
    firstName: 'Gokul', 
    lastName: ' R', 
    department: 'IT', 
    staffID: '202IT135', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'STUDENT', 
    email: "gokul.it20@bitsathy.ac.in",
    phone: 6385246003,
    teaching: true
    ),

    Staff(
    firstName: 'Barath', 
    lastName: ' V', 
    department: 'IT', 
    staffID: '202IT118', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'STUDENT', 
    email: 'barath.it20@bitsathy.ac.in',
    phone: 9585293544,
    teaching: true),

    Staff(
    firstName: 'Harish ', 
    lastName: 'J', 
    department: 'IT', 
    staffID: '202IT139', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'STUDENT', 
    email: 'harish.it20@bitsathy.ac.in',
    phone: 6303347821,
    teaching: true),

    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR',
    email: 'sundaramurthy@bitsathy.ac.in', 
    phone: 9959595,
    teaching: true),

    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR',
    email: 'sundaramurthy@bitsathy.ac.in', 
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR', 
    email: 'sundaramurthy@bitsathy.ac.in',
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR',
    email: 'sundaramurthy@bitsathy.ac.in', 
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR',
    email: 'sundaramurthy@bitsathy.ac.in', 
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR',
    email: 'sundaramurthy@bitsathy.ac.in', 
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR', 
    email: 'sundaramurthy@bitsathy.ac.in',
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR', 
    email: 'sundaramurthy@bitsathy.ac.in',
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR', 
    email: 'sundaramurthy@bitsathy.ac.in',
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR', 
    email: 'sundaramurthy@bitsathy.ac.in',
    phone: 9959595,
    teaching: true),
    Staff(
    firstName: 'Sundara', 
    lastName: 'Murthy', 
    department: 'IT', 
    staffID: '7854', 
    imageUrl: 'assets/images/IMG.jpg',
    designation: 'PROFESSOR', 
    email: 'sundaramurthy@bitsathy.ac.in',
    phone: 9959595,
    teaching: true),
  ];}

