import 'package:flutter/material.dart';

class NumberRow extends StatelessWidget {
  final int number;

  const NumberRow({required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: number
          // .toInt() -> 애초에 int로 변경해서 받을 수 있도록 변경하여 제거 가능
          .toString()
          .split('')
          .map(
            (e) => Image.asset(
              'asset/img/$e.png',
              width: 50,
              height: 70,
            ),
          )
          .toList(),
    );
  }
}
