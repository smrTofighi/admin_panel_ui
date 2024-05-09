import 'package:admin_panel_ui/controllers/menu_controller.dart';
import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/components/slide_menu.dart';
import 'package:admin_panel_ui/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF190725),
      drawer: const SlideMenu(),
      key: context.read<AppMenuController>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
            Expanded(
              //? defualt flex is 1
              //? it take 1/6 part of the screen
              child: Drawer(
                child: SlideMenu(),
              ),
            ),
            Expanded(
              //? it take 5/6 part of the screen
              flex: 5,
              child: DashboardScreen()
            ),
          ],
        ),
      ),
    );
  }
}
