import 'package:flutter/material.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';
import 'package:money_manager/presentation/utils/dimension.dart';
import 'package:money_manager/presentation/widgets/account_info_tile.dart';
import 'package:money_manager/presentation/widgets/general_info_tile.dart';
import 'package:money_manager/presentation/widgets/profile_card.dart';

class HomeProfileTab extends StatelessWidget {
  const HomeProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: CustomColors.fontSubHeading,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Dimensions.defaultSpacing),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: CustomColors.fontSubHeading,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const ProfileCard(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.defaultSpacing),
                  child: Text(
                    "General",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: CustomColors.fontDark,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const GeneralInfoTile(
                  title: "Bank Location",
                  subtitle: "7307 Grand, Ava, flushing NY1347",
                  imageIconUrl: "assets/icons/location-1.png",
                ),
                const GeneralInfoTile(
                  title: "My wallet",
                  subtitle: "Manage your saved wallet",
                  imageIconUrl: "assets/icons/wallet.png",
                ),
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.defaultSpacing, top: 5),
                  child: Text(
                    "Account",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: CustomColors.fontDark,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const AccountInfoTile(imageIconUrl: "assets/icons/user-1.png", title: "My Account"),
                const AccountInfoTile(imageIconUrl: "assets/icons/bell.png", title: "Notification "),
                const AccountInfoTile(imageIconUrl: "assets/icons/lock-on.png", title: "Privacy"),
                const AccountInfoTile(imageIconUrl: "assets/icons/info-circle.png", title: "About"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
