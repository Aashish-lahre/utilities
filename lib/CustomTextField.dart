import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 800,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          // minHeight: 40,
          maxHeight: 200,
        ),
        child: Container(
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 130),
                  child: const TextField(
                    style: TextStyle(fontSize: 18),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: 'Type...', border: InputBorder.none),
                  ),
                ),
                const Divider(thickness: 2),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: const [
                      Card(
                        color: Colors.grey,
                        child: Icon(
                          Icons.format_bold,

                          // color: Colors.amber,
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Icon(Icons.format_italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
