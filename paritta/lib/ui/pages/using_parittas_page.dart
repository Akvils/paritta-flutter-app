import 'package:flutter/material.dart';
import 'package:paritta/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:paritta/widgets/custom_button.dart';
import 'package:paritta/core/const.dart';
import 'package:paritta/widgets/bullet_file.dart';

class UsingParittasPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const UsingParittasPage({Key key, this.onMenuTap}) : super(key: key);

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
                "Usage",
                style: kTitleTextStyle,
              ),
              SizedBox(
                width: 50,
                height: 50,
              ),
//
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
                  "Although the Parittas are for chanting in general, some of the Parittas are to be practiced as well. Only the Ratana Sutta, Mora Sutta, Vaṭṭa Sutta, Āṭānāṭiya Sutta, Arigulimala Sutta and Pubbanha Sutta are meant for chanting only; the other are for both chanting and practicing. And there are specific uses for the Parittas although generally they are meant for protection against dangers. The specific uses can be obtained from the introductory verses of each Sutta.\nThey are, in brief, as follows:\n",
                  style: kTranslationStyle,
                ),
                BulletPoint("Maṅgala Sutta for blessings and prosperity\n"),
                BulletPoint(
                    "Ratana Sutta for getting free from dangers caused by disease, evil spirits and famine\n"),
                BulletPoint(
                    "Mettā Sutta for suffusing all kinds of beings with loving-kindness\n"),
                BulletPoint(
                    "Khandha Sutta for protection against snakes and other creatures\n"),
                BulletPoint(
                    "Mora Sutta for protection against snares, imprisonment and for safety\n"),
                BulletPoint("Vaṭṭa Sutta for protection against fire\n"),
                BulletPoint(
                    "Dhajagga Sutta for protection against fear, trembling and horror\n"),
                BulletPoint(
                    "Āṭānāṭiya Sutta for protection against evil spirits, and gaining health and happiness\n"),
                BulletPoint(
                    "Aṅgulimāla Sutta for easy delivery for expectant mothers\n"),
                BulletPoint(
                    "Bojjhaṅga Sutta for protection against and getting free from sickness and disease\n"),
                BulletPoint(
                    "Pubbaṇha Sutta for protection against bad omens, etc., and gaining happiness\n"),
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
