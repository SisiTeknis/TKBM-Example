import 'package:big_koperasi/common/widgets/modal/logout_ask_dynamic.dart';
import 'package:big_koperasi/config/routes.dart';
import 'package:flutter/material.dart';

List menus(BuildContext context) => [
      {
        'icon': Icons.account_circle_outlined,
        'name': 'Edit Profile',
        'action': () => gotoEditProfile(context),
      },
      {
        'icon': Icons.history,
        'name': 'History',
        'action': () => gotoHystory(context),
      },
      {
        'icon': Icons.info_outline_rounded,
        'name': 'Information About Cost',
        'action': () => null,
      },
      {
        'icon': Icons.info_outline_rounded,
        'name': 'Promotion',
        'action': () => null,
      },
      {
        'icon': Icons.feedback_outlined,
        'name': 'Feedback',
        'action': () => null,
      },
      {
        'icon': Icons.privacy_tip_outlined,
        'name': 'Privacy Policy',
        'action': () => null,
      },
      {
        'icon': Icons.assistant_photo_outlined,
        'name': 'About Us',
        'action': () => null,
      },
      {
        'icon': Icons.format_quote,
        'name': 'FAQ',
        'action': () => null,
      },
      {
        'icon': Icons.login_outlined,
        'name': 'Logout',
        'action': () => popupAskLogout(
            context, 'Logout', 'Are you sure to quit this account ?')
      },
    ];
