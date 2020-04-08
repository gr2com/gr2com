
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/rounting/route_names.dart';
import 'package:web/views/episodes/episodes_view.dart';
import 'package:web/views/home/home_view.dart';
import 'package:web/views/about/about_view.dart';
import 'package:web/extensions/string_extensions.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
   var routingData = settings.name.getRoutingData; // Get the routing Data
  switch (routingData.route) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    // case EpisodeDetailsRoute:
    //   var id = int.tryParse(routingData['id']); // Get the id from the data.
    //   return _getPageRoute(EpisodeDetails(id: id), settings);
    default:
      return _getPageRoute(HomeView());
  }
}
      
PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
      child: child,
  );
}
  
class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}