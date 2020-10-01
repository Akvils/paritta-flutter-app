import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paritta/ui/pages/detail_page.dart';
import 'package:paritta/core/const.dart';

class SuttaCard extends StatefulWidget {
  final String title;
  final String purpose;
  final String day;
  final String audio;
  final List sutta;

  SuttaCard(
      {@required this.title,
      @required this.purpose,
      this.audio,
      this.day,
      this.sutta});

  @override
  _SuttaCardState createState() => _SuttaCardState();
}

class _SuttaCardState extends State<SuttaCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailPage(
              audio: widget.audio,
              sutta: widget.sutta,
              title: widget.title,
              purpose: widget.purpose,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            width: 2,
//          color: AppColors.mainColor,
            color: Colors.white38,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightBlueShadow,
              blurRadius: 10,
              offset: Offset(5, 5),
              spreadRadius: 3,
            ),
            BoxShadow(
              color: Colors.white70,
              blurRadius: 5,
              offset: Offset(-5, -5),
              spreadRadius: 3,
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        child: Wrap(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.title,
                  style: kCardTitleStyle,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.day,
                    style: kDayStyle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: 350.0,
                  child: Text(
                    widget.purpose,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: kSubtitleStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
