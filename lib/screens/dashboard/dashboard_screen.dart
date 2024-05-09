import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/gen/assets.gen.dart';
import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/dashboard/components/chart.dart';
import 'package:admin_panel_ui/screens/dashboard/components/header.dart';
import 'package:admin_panel_ui/screens/dashboard/components/my_files.dart';
import 'package:admin_panel_ui/screens/dashboard/components/recent_file_widget.dart';
import 'package:admin_panel_ui/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const Header(),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    RecentFileWidget(),
                    if (Responsive.isMobile(context))
                      const SizedBox(
                        height: defaultPadding,
                      ),
                    if (Responsive.isMobile(context)) StorageDetials(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                const SizedBox(
                  width: defaultPadding,
                ),

              //! On mobile means if the screen is less than 850 we dont want to show it.
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: StorageDetials(),
                ),
            ],
          )
        ],
      ),
    ));
  }
}

class StorageDetials extends StatelessWidget {
  const StorageDetials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Storage Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Chart(),
          StorageInfoCard(
            title: 'Documents Files',
            svg: Assets.icons.documents,
            amountOfFiles: '14.5GB',
            numberOfFiles: 1359,
            color: Colors.purpleAccent,
          ),
          StorageInfoCard(
            title: 'Media Files',
            svg: Assets.icons.media,
            amountOfFiles: '12.4GB',
            numberOfFiles: 543,
            color: Colors.blueAccent,
          ),
          StorageInfoCard(
              title: 'Other Files',
              svg: Assets.icons.folder,
              amountOfFiles: '7.1GB',
              numberOfFiles: 121,
              color: Colors.greenAccent),
          StorageInfoCard(
            title: 'Unknow Files',
            svg: Assets.icons.unknown,
            amountOfFiles: '1.1GB',
            numberOfFiles: 132,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
