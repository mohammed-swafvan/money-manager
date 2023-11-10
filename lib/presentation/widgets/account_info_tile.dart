import 'package:flutter/material.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';

class AccountInfoTile extends StatelessWidget {
  const AccountInfoTile({super.key, required this.imageIconUrl, required this.title});

  final String imageIconUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image.asset(imageIconUrl),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: CustomColors.fontDark,
              fontWeight: FontWeight.bold,
            ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_ios_rounded,
          color: CustomColors.fontSubHeading,
        ),
      ),
    );
  }
}
