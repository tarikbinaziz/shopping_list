import 'package:bazar_list/const/strings.dart';
import 'package:bazar_list/controller/checkbox_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'const/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var controller = Get.put(CheckBoxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            shoppingList,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                // Text("Data",style: TextStyle(color: Colors.black,fontSize: 20),),
                //  CheckboxListTile(
                //    value: controller.selected.value==1,
                //    controlAffinity: ListTileControlAffinity.leading,
                //    contentPadding: EdgeInsets.zero,
                //    checkboxShape: RoundedRectangleBorder(
                //        borderRadius: BorderRadius.circular(3)),
                //    onChanged: (val) {
                //      val ?? true ? controller.selected.value = 1 : controller.selected.value = null;
                //      //controller.isCheck.value = val!;
                //    },
                //    title: Text(
                //      chal,
                //      style: TextStyle(
                //          color: controller.selected.value == 1
                //              ? Colors.purple
                //              : Colors.grey),
                //    ),
                //  ),
                //  CheckboxListTile(
                //    value: controller.selected.value==2,
                //    controlAffinity: ListTileControlAffinity.leading,
                //    contentPadding: EdgeInsets.zero,
                //    checkboxShape: RoundedRectangleBorder(
                //        borderRadius: BorderRadius.circular(3)),
                //    onChanged: (val) {
                //      val ?? true ? controller.selected.value = 2 : controller.selected.value = null;
                //      //controller.isCheck.value = val!;
                //    },
                //    title: Text(
                //      chal,
                //      style: TextStyle(
                //          color: controller.selected.value == 2
                //              ? Colors.purple
                //              : Colors.grey),
                //    ),
                //  ),
                // productShow(item: "dal",value: controller.selected.value==2,serial: 2),
                //  productShow(item: "tel",value: controller.selected.value==3,serial: 3),
                // productShow(item: "dal")

                ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.checkboxList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Obx(
                            ()=> CheckboxListTile(
                            title: Text(controller.checkboxList[index]),
                            value: controller.checkedList[index],
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (value) {
                                controller.checkedList[index] = value!;

                            },
                          ),
                        );
                      }),

              ])),
        ));
  }
}
