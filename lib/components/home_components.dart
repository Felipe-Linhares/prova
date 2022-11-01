import 'package:flutter/material.dart';

class HomeComponents {
  cards(BuildContext context, {IconData? icon, String? title, Color? color}) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: color,
      child: SizedBox(
        width: width * 0.4,
        height: height * 0.2,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 150, bottom: 80),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(
                icon,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20),
            child: Row(
              children: [
                Text(
                  title!,
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
