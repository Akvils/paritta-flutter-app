import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paritta/bloc/navigation_bloc/navigation_bloc.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final int selectedIndex;
  final Function onMenuItemClicked;

  const Menu(
      {Key key,
      this.slideAnimation,
      this.menuAnimation,
      this.selectedIndex,
      @required this.onMenuItemClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.DashboardClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: selectedIndex == 0
                          ? FontWeight.w700
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.IntroductionClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Introduction",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: selectedIndex == 1
                          ? FontWeight.w700
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.ChantingClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Chanting",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: selectedIndex == 2
                          ? FontWeight.w700
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.UsingParittasClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Using Parittas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: selectedIndex == 3
                          ? FontWeight.w700
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.CreditsClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Credits",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: selectedIndex == 4
                          ? FontWeight.w700
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
