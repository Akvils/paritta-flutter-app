import 'package:bloc/bloc.dart';
import 'package:paritta/ui/pages/introduction_page.dart';
import 'package:paritta/ui/pages/paritta_pali_page.dart';
import 'package:paritta/ui/pages/chanting_page.dart';
import 'package:paritta/ui/pages/using_parittas_page.dart';
import 'package:paritta/ui/pages/credits_page.dart';

enum NavigationEvents {
  DashboardClickedEvent,
  IntroductionClickedEvent,
  ChantingClickedEvent,
  UsingParittasClickedEvent,
  CreditsClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => ParittaPaliPage(
        onMenuTap: onMenuTap,
      );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield ParittaPaliPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.IntroductionClickedEvent:
        yield IntroductionPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ChantingClickedEvent:
        yield ChantingPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.UsingParittasClickedEvent:
        yield UsingParittasPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.CreditsClickedEvent:
        yield CreditsPage(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}
