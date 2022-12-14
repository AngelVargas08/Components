
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screen.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    //MenuOptions(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOptions(route: 'listview1', name: 'List View1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOptions(route: 'listview2', name: 'List View2', screen: const Listview2Screen(), icon: Icons.line_style),
    MenuOptions(route: 'cardscreen', name: 'Cards Screen', screen: const CardScreen(), icon: Icons.sd_card_sharp),
    MenuOptions(route: 'alertscreen', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.crisis_alert_sharp),
    MenuOptions(route: 'avatartscreen', name: 'Avatar Screen', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_rounded),
    MenuOptions(route: 'animatedscreen', name: 'Animated Screen', screen: const AnimatedScreen(), icon: Icons.animation_outlined),
    MenuOptions(route: 'inputscreen', name: 'Input Screen', screen: const InputScreen(), icon: Icons.format_align_justify),
    MenuOptions(route: 'sliderscreen', name: 'Slider Screen', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOptions(route: 'listviewbuilderscreen', name: 'List View & Infinite Scroll', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_sharp),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes()  {

      Map<String, Widget Function(BuildContext)> appRoutes = {};
      appRoutes.addAll({'home':(BuildContext context)=>const HomeScreen()});

      for (final options in menuOptions) {
        appRoutes.addAll({options.route:(BuildContext context)=>options.screen});
      }

      return appRoutes;
  }

//  static Map<String, Widget Function(BuildContext)> routes = {
          //  'home'        : (BuildContext context) => const HomeScreen(),
      //  'listview1'   : (BuildContext context) => const Listview1Screen(),
      //  'listview2'   : (BuildContext context) => const Listview2Screen(),
      //  'cardscreen'  : (BuildContext context) => const CardScreen(),
      //  'alertscreen' : (BuildContext context) => const AlertScreen(),
     // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
      );
  }    

}