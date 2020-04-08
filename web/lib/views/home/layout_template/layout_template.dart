import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/locator.dart';
import 'package:web/rounting/route_names.dart';
import 'package:web/rounting/router.dart';
import 'package:web/services/navigation_service.dart';
import 'package:web/widgets/centered_view/centered_view.dart';
import 'package:web/widgets/navigation_bar/navigator_bar.dart';
import 'package:web/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Navigator(
                     key: locator<NavigationService>().navigatorKey,
                     onGenerateRoute: generateRoute,
                     initialRoute: HomeRoute,
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}