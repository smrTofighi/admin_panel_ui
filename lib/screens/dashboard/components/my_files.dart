import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/models/cloud_storage_info.dart';
import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/dashboard/components/file_info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add New'),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile:  FileInfoCardGridView(
            crossAxisCount: size.width<650 ?2 :4,
            childAspectRatio:size.width<650 ? 1.3 : 1 ,
          ),
          tablet:  FileInfoCardGridView(),
          desktop:  FileInfoCardGridView(
            childAspectRatio: size.width<1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: demoMyFiels.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => FileInfoCard(
          info: demoMyFiels[index],
        ),
      ),
    );
  }
}
