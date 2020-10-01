class SuttaModel {
  final int id;
  final String title;
  final String purpose;
  final double duration;
  final String audio;

  SuttaModel({this.id, this.title, this.purpose, this.duration, this.audio});

  static List<SuttaModel> list = [
    SuttaModel(
        id: 0,
        title: "Parita Parikamma",
        purpose: "Preliminary of Paritta",
        duration: 3.47,
        audio: "assets/0ParittaParikammaPali.mp3"),
    SuttaModel(
        id: 1,
        title: "Maṅgala Sutta",
        purpose: "Blessings and prosperity",
        duration: 3.49,
        audio: "assets/1MangalaSuttaPali.mp3"),
    SuttaModel(
        id: 2,
        title: "Ratana Sutta",
        purpose:
            "Getting free from dangers caused by disease, evil spirits and famine",
        duration: 7.16,
        audio: "assets/2RatanaSuttaPali.mp3"),
    SuttaModel(
        id: 3,
        title: "Mettā Sutta",
        purpose: "Suffusing all kinds of beings with loving-kindness",
        duration: 2.58,
        audio: "assets/3MettaSuttaPali.mp3"),
    SuttaModel(
        id: 4,
        title: "Khandha Sutta",
        purpose: "Protecting against snakes and other creatures",
        duration: 1.45,
        audio: "assets/4KhandaSuttaPali.mp3"),
    SuttaModel(
        id: 5,
        title: "Mora Sutta",
        purpose: "Protection against snares, imprisonment and for safety",
        duration: 1.54,
        audio: "assets/5MoraSuttaPali.mp3"),
    SuttaModel(
        id: 6,
        title: "Vaṭṭa Sutta",
        purpose: "Protection against fire",
        duration: 1.21,
        audio: "assets/6VattaSuttaPali.mp3"),
    SuttaModel(
        id: 7,
        title: "Dhajagga Sutta",
        purpose: "Protection against fear, trembling and horror",
        duration: 8.26,
        audio: "assets/7DhajaggaSuttaPali.mp3"),
    SuttaModel(
        id: 8,
        title: "Āṭānāṭiya Sutta",
        purpose:
            "Protection against evil spirits, and gaining health and happiness",
        duration: 5.10,
        audio: "assets/8AtanatiyaSuttaPali.mp3"),
    SuttaModel(
        id: 9,
        title: "Aṅgulimāla Sutta",
        purpose: "Easy delivery for expectant mothers",
        duration: 0.56,
        audio: "assets/9AngulimalaSuttaPali.mp3"),
    SuttaModel(
        id: 10,
        title: "Bojjhaṅga Sutta",
        purpose: "Protection against from sickness and disease",
        duration: 2.23,
        audio: "assets/10BojjhangaSuttaPali.mp3"),
    SuttaModel(
        id: 11,
        title: "Pubbaṇha Sutta",
        purpose: "Protection against bad omens and gaining happiness",
        duration: 4.35,
        audio: "assets/11PubbanhaSuttaPali.mp3")
  ];
}
