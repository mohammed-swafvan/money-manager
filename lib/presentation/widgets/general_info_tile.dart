import 'package:flutter/material.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';

class GeneralInfoTile extends StatelessWidget {
  const GeneralInfoTile({super.key, required this.title, required this.subtitle, required this.imageIconUrl});

  final String title;
  final String subtitle;
  final String imageIconUrl;

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
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: CustomColors.fontSubHeading,
              fontWeight: FontWeight.w600,
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
