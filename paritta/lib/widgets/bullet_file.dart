import 'package:flutter/material.dart';
import 'package:paritta/core/const.dart';

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint(this.text);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.star_border,
                  size: 16,
                  color: Colors.blueGrey,
                ),
              ),
              TextSpan(
                text: text,
                style: kTranslationStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
