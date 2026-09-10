import 'package:flutter/material.dart';

class AnotherLogin extends StatefulWidget {
  final String path;
  const new({super.key, required this.path});

  @override
  State<AnotherLogin> createState() => _AnotherLoginState();
}

class _AnotherLoginState extends State<AnotherLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62.5,
      height: 48,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(widget.path)),
      ),
      child: InkWell(onTap: () {}, child: Container()),
    );
  }
}
