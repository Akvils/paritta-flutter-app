import 'package:flutter/material.dart';
import 'package:paritta/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:paritta/widgets/custom_button.dart';
import 'package:paritta/core/const.dart';

class CreditsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const CreditsPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: AppColors.mainColor,
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CustomButton(
                  child: Icon(
                    Icons.menu,
                    color: AppColors.styleColor,
                  ),
                  onTap: onMenuTap,
                  size: 50),
              Text(
                "Credits",
                style: kTitleTextStyle,
              ),
              SizedBox(
                width: 50,
                height: 50,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.white38,
            height: 2,
            thickness: 2,
            indent: 12,
            endIndent: 12,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(12),
              children: <Widget>[
                Text(
                  "Paritta text by Sayadaw U Sīlānanda.\n",
                  style: kTranslationStyle,
                ),
                Text(
                  "\Chanting by Sayadaw U Pandita.\n",
                  style: kTranslationStyle,
                ),
                Text(
                  "Designed and Developed by Akvil during Varshavasa, 2020.\n",
                  style: kTranslationStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
