import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/features/account/presentation/controllers/list_menu.dart';
import 'package:big_koperasi/features/account/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final ScrollController controller;
  const ProfileScreen({required this.controller, super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.controller,
      child: Column(
        children: [
          const ProfileHeader(),
          const SizedBox(height: 10),
          Column(
            children: menus(context).map((value) {
              return GestureDetector(
                onTap: value['action'],
                child: Container(
                  width: sWidthFull(context),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(bottom: 2),
                  color: cWhite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(value['icon'], color: cGrey, size: 30),
                          const SizedBox(width: 10),
                          Text(
                            value['name'],
                            style: h3(cBlack),
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: cBlack,
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}



// _launchEmailApp(BuildContext context) async {
//   final Uri emailLaunchUri = Uri(scheme: 'mailto', path: ' admin@hirenapp.com');

//   try {
//     // ignore: deprecated_member_use
//     await launch(emailLaunchUri.toString());
//   } catch (e) {
//     // ignore: use_build_context_synchronously
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text("Can't get aplocation"),
//       ),
//     );
//   }
// }
