import 'package:flutter/material.dart';

// コンテナ1つ分
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, @required this.cardChild, @required this.onPress});

  // final：プログラム開始後のある時点で一回だけ初期化される。再代入不可。
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}