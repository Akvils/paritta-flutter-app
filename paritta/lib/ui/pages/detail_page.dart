import 'package:flutter/material.dart';
import 'package:paritta/core/const.dart';
import 'package:paritta/widgets/custom_button.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final String purpose;
  final List sutta;
  final String audio;
  DetailPage({this.audio, this.sutta, this.title, this.purpose});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var isPlay;
  var isLoop;

  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    isPlay = true;
    isLoop = false;
    super.initState();
    initPlayer();
    _playFile();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.onDurationChanged.listen((Duration d) {
      setState(() => _duration = d);
    });

    advancedPlayer.onAudioPositionChanged.listen((Duration p) {
      setState(() => _position = p);
    });
  }

  void _playFile() async {
    advancedPlayer = await audioCache.play(widget.audio);
  }

  void _stopFile() {
    advancedPlayer?.stop();
  }

  void _loopFile() async {
    advancedPlayer = await audioCache.loop(widget.audio);
  }

//Duration values for slider stack
  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  Widget slider() {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        inactiveTickMarkColor: Color(0xFF8D8E98),
        activeTrackColor: AppColors.lightBlue,
        thumbColor: AppColors.darkBlue,
        overlayColor: Colors.white54,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
      ),
      child: Slider(
          value: _position.inSeconds.toDouble(),
          min: 0.0,
          max: _duration.inSeconds.toDouble(),
          onChanged: (double value) {
            setState(() {
              seekToSecond(value.toInt());
              value = value;
            });
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButton(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.styleColor,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      _stopFile();
                    },
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
            indent: 16,
            endIndent: 16,
          ),
          // SUTRA TEXT HERE
          Expanded(
            child: ListView.builder(
                itemCount: widget.sutta.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.sutta[index].sutta,
                        style: kSuttaStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.sutta[index].translation,
                        style: kTranslationStyle,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  );
                }),
          ),
          // SUTRA TEXT HERE

          Container(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                width: 2,
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
            child: Column(
              children: <Widget>[
                Text(
                  widget.title,
                  style: kTitlePlayingStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    widget.purpose,
                    style: kSubtitleStyle,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              _printDuration(_position),
                              style: TextStyle(
                                color: AppColors.styleColor,
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              _printDuration(_duration),
                              style: TextStyle(
                                color: AppColors.styleColor,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    slider(),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CustomButton(
                        child: Icon(
                          Icons.stop,
                          color: AppColors.styleColor,
                        ),
                        onTap: () {
                          _stopFile();
                          _controller.forward();
                          setState(() {
                            isPlay = false;
                            isLoop = false;
                          });
                        },
                        size: 80,
                        borderWidth: 5.0,
                      ),
                      CustomButton(
                        child: AnimatedIcon(
                          icon: AnimatedIcons.pause_play,
                          progress: _controller,
                          color: isPlay ? Colors.white : AppColors.styleColor,
                        ),
                        onTap: () {
                          if (isPlay) {
                            _controller.forward();
                            advancedPlayer.pause();
                            setState(() {
                              isPlay = false;
                            });
                          } else {
                            advancedPlayer.resume();
                            _controller.reverse();
                            setState(() {
                              isPlay = true;
                            });
                          }
                        },
                        size: 80,
                        borderWidth: 5.0,
                        isActive: isPlay,
                      ),
                      CustomButton(
                        child: Icon(
                          Icons.repeat,
                          color: isLoop ? Colors.white : AppColors.styleColor,
                        ),
                        onTap: () {
                          if (isLoop) {
                            _controller.forward();
                            setState(() {
                              isLoop = false;
                              isPlay = false;
                            });
                            _stopFile();
                          } else {
                            setState(() {
                              isLoop = true;
                            });
                            _loopFile();
                          }
                        },
                        size: 80,
                        borderWidth: 5.0,
                        isActive: isLoop,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
