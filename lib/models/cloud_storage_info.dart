import 'package:admin_panel_ui/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorageInfo({
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.numOfFiels,
    required this.percentage,
    required this.color,
  });
}

List demoMyFiels = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: Colors.purpleAccent,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Colors.blueAccent,
    percentage: 78,
  ),
];
