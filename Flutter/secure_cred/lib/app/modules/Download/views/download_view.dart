import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/download_controller.dart';

class DownloadView extends GetView<DownloadController> {
  const DownloadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DownloadView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DownloadView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
