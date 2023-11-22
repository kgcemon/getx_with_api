import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_api/getx/postgetx.dart';

class Home_Screen extends StatelessWidget {
  var myallpost = Get.put(mystategetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(
          () => ListView.builder(
            itemCount: myallpost.MyallPost.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    trailing: IconButton(
                      onPressed: () {
                        myallpost.DelteData(index);
                      },
                      icon: Icon(Icons.delete),
                    ),
                    title: Text(myallpost.MyallPost[index].title),
                    subtitle: Text(myallpost.MyallPost[index].body),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
