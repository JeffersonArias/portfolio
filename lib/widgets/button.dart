import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 60,
      width: 160,
      child: OutlinedButton.icon(onPressed: () {
        //TODO: Functionality
      },
        icon: const Icon(Icons.mail,
          color: Color.fromRGBO(45, 66, 122, 1.0),
        ), label: const Text('Hear me',
          style: TextStyle(color: Color.fromRGBO(45, 66, 122, 1.0)),
        ),
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.white),
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),)
            ),
            side: MaterialStateProperty.all(const BorderSide(
                color: Colors.transparent,
                width: 1.0,
                style: BorderStyle.solid))
        ),
      ),
    );
  }
}