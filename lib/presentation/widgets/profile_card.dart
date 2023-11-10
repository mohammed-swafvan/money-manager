import 'package:flutter/material.dart';
import 'package:money_manager/models/user_info_model.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';
import 'package:money_manager/presentation/utils/custom_size.dart';
import 'package:money_manager/presentation/utils/dimension.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.defaultRadius),
              child: Image.asset(
                "assets/images/avatar.jpeg",
                width: 100,
              ),
            ),
            CustomSize.height5,
            Text(
              userData.userName,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            Text(
              userData.userEmail,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: CustomColors.fontSubHeading,
                  ),
            ),
            CustomSize.height5,
            Chip(
              labelPadding: EdgeInsets.zero,
              backgroundColor: Colors.green.withOpacity(0.1),
              label: const Text("Edit Profile"),
              labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
