// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/checkbox_controller.dart';
//
// var controller = Get.put(CheckBoxController());
// Widget productShow({String? item, value,int? serial}) {
//   return CheckboxListTile(
//     value: value,
//     controlAffinity: ListTileControlAffinity.leading,
//     contentPadding: EdgeInsets.zero,
//     checkboxShape:
//         RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
//     onChanged: (val) {
//       val ?? true ? controller.selected.value = serial : controller.selected.value = null;
//       //controller.isCheck.value = val!;
//     },
//     title: Text(
//       item!,
//       style: TextStyle(
//           color:
//               controller.isCheck.value == serial ? Colors.purple : Colors.grey),
//     ),
//   );
// }
