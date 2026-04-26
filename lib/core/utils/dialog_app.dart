import 'package:flutter/material.dart';
import 'package:tasky/core/utils/app_colors.dart';

void showLoadingUi(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.secondaryColor,
        content: SizedBox(
          height: 40,
          width: 40,
          child: Center(
            child: Row(
              spacing: 30,
              mainAxisAlignment: .center,
              children: [
                CircularProgressIndicator(color: AppColors.primaryColor),
                Text(
                  "Loading...",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: .w400,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }