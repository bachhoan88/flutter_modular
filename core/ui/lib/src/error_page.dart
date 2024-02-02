import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String message;
  final Function? retry;

  const ErrorPage({Key? key, required this.message, this.retry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: () {
              if (retry != null) {
                retry!();
              }
            },
            child: Text('retry'.tr()),
          ),
        ],
      ),
    );
  }
}
