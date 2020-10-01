import 'package:flutter/material.dart';
import 'package:paritta/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:paritta/widgets/custom_button.dart';
import 'package:paritta/core/const.dart';

class IntroductionPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const IntroductionPage({Key key, this.onMenuTap}) : super(key: key);

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
                "Introduction",
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
                  "The Sutta chanted for protection, etc., are known as Paritta which means ‘the Sutta that protects those who chant and who listen to it against dangers, calamities, etc., from all around.’",
                  style: kTranslationStyle,
                ),
                Text(
                  "\nThe collection presented here includes Ratana Sutta, Metta Sutta, Khandha Sutta, Mora Sutta, Dhajagga Sutta, Āṭānāṭiya Sutta, Angulimala Sutta, Bojjhaṅga Sutta, Marigala Sutta, Vaṭṭa Sutta and Pubbaṇa Sutta. These are the eleven Suttas chanted everyday in every monastery and nunnery and in some houses of lay people in all Theravada Buddhist countries. This collection is known in Myanmar as 'The Great Paritta', not because the Suttas in this collection are long ones, but probably because they have great power. If chanted and listened to in a correct way they could ward off dangers and bring in results.",
                  style: kTranslationStyle,
                ),
                Text(
                  "\nThe Translation",
                  style: kTitleTextStyle,
                ),
                Text(
                  "The translations does not contain poetic renderings, but are made to be as faithful to the original as possible. The relevant ancient Commentaries and the Burmese translations were consulted constantly in the process of translating, and every effort has been made to bring the translation to conform to the explanations given in these time-honored works. (Some English translations were also consulted.)",
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
