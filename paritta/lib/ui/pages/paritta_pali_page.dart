import 'package:flutter/material.dart';
import 'package:paritta/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:paritta/core/const.dart';
import 'package:paritta/widgets/sutta_card.dart';
import 'package:paritta/widgets/custom_button.dart';

import 'package:paritta/models/0_paritta_sutta.dart';
import 'package:paritta/models/1_mangala_sutta.dart';
import 'package:paritta/models/2_ratana_sutta.dart';
import 'package:paritta/models/3_metta_sutta.dart';
import 'package:paritta/models/4_khanda_sutta.dart';
import 'package:paritta/models/5_mora_sutta.dart';
import 'package:paritta/models/6_vatta_sutta.dart';
import 'package:paritta/models/7_dhajagga_sutta.dart';
import 'package:paritta/models/8_atanatiya_sutta.dart';
import 'package:paritta/models/9_angulimala_sutta.dart';
import 'package:paritta/models/10_bojjhanga_sutta.dart';
import 'package:paritta/models/11_pubbanha_sutta.dart';

class ParittaPaliPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  final List<ParittaSutta> list0 = ParittaSutta.list;
  final List<MangalaSutta> list1 = MangalaSutta.list;
  final List<RatanaSutta> list2 = RatanaSutta.list;
  final List<MettaSutta> list3 = MettaSutta.list;
  final List<KhandaSutta> list4 = KhandaSutta.list;
  final List<MoraSutta> list5 = MoraSutta.list;
  final List<VattaSutta> list6 = VattaSutta.list;
  final List<DhajaggaSutta> list7 = DhajaggaSutta.list;
  final List<AtanatiyaSutta> list8 = AtanatiyaSutta.list;
  final List<AngulimalaSutta> list9 = AngulimalaSutta.list;
  final List<BojjhangaSutta> list10 = BojjhangaSutta.list;
  final List<PubbanhaSutta> list11 = PubbanhaSutta.list;

  ParittaPaliPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: AppColors.mainColor,
      ),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomButton(
                        child: Icon(
                          Icons.menu,
                          color: AppColors.styleColor,
                        ),
                        onTap: onMenuTap,
                        size: 50),
                    Text(
                      "Paritta Pāli",
                      style: kTitleTextStyle,
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.white38,
                height: 2,
                thickness: 2,
                indent: 7,
                endIndent: 7,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(12),
                  children: <Widget>[
                    SuttaCard(
                      title: 'Paritta Parikamma',
                      purpose: 'Preliminary of Paritta',
                      audio: '0ParittaParikammaPali.mp3',
                      day: 'All days',
                      sutta: list0,
                    ),
                    SuttaCard(
                        title: 'Maṅgala Sutta',
                        purpose: 'Blessings and prosperity',
                        audio: '1MangalaSuttaPali.mp3',
                        day: 'Monday',
                        sutta: list1),
                    SuttaCard(
                        title: 'Ratana Sutta',
                        purpose:
                            'Getting free from disease, evil spirits and famine',
                        audio: '2RatanaSuttaPali.mp3',
                        day: 'Tuesday',
                        sutta: list2),
                    SuttaCard(
                        title: 'Mettā Sutta',
                        purpose:
                            'Suffusing all kinds of beings with loving-kindness',
                        audio: '3MettaSuttaPali.mp3',
                        day: 'Wednesday',
                        sutta: list3),
                    SuttaCard(
                        title: 'Khandha Sutta',
                        purpose:
                            'Protection against snakes and other creatures',
                        audio: '4KhandaSuttaPali.mp3',
                        day: 'Thursday',
                        sutta: list4),
                    SuttaCard(
                        title: 'Mora Sutta',
                        purpose:
                            'Protection against snares, imprisonment and for safety',
                        audio: '5MoraSuttaPali.mp3',
                        day: 'Thursday',
                        sutta: list5),
                    SuttaCard(
                        title: 'Vaṭṭa Sutta',
                        purpose: 'Protection against fire',
                        audio: '6VattaSuttaPali.mp3',
                        day: 'Thursday',
                        sutta: list6),
                    SuttaCard(
                        title: 'Dhajagga Sutta',
                        purpose:
                            'Protection against fear, trembling and horror',
                        audio: '7DhajaggaSuttaPali.mp3',
                        day: 'Friday',
                        sutta: list7),
                    SuttaCard(
                        title: 'Āṭānāṭiya Sutta',
                        purpose:
                            'Protection against evil spirits, and gaining health and happiness',
                        audio: '8AtanatiyaSuttaPali.mp3',
                        day: 'Saturday',
                        sutta: list8),
                    SuttaCard(
                        title: 'Aṅgulimāla Sutta',
                        purpose: 'Easy delivery for expectant mothers',
                        audio: '9AngulimalaSuttaPali.mp3',
                        day: 'Saturday',
                        sutta: list9),
                    SuttaCard(
                        title: 'Bojjhaṅga Sutta',
                        purpose:
                            'Protection against and getting free from sickness and disease',
                        audio: '10BojjhangaSuttaPali.mp3',
                        day: 'Sunday',
                        sutta: list10),
                    SuttaCard(
                        title: 'Pubbaṇha Sutta',
                        purpose:
                            'Protection against bad omens, etc., and gaining happiness',
                        audio: '11PubbanhaSuttaPali.mp3',
                        day: 'Sunday',
                        sutta: list11),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.mainColor.withAlpha(0),
                    AppColors.mainColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
