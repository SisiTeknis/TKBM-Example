import 'dart:io';

import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/button/normal_button.dart';
import 'package:big_koperasi/common/widgets/header/back_general_haader.dart';
import 'package:big_koperasi/common/widgets/input/text_input.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final nameController = TextEditingController();
  final numberPhoneController = TextEditingController();

  bool isLoading = false;
  File? fileImage;

  // onSubmit() async {
  //   setState(() => isLoading = true);
  //   try {
  //     await ProfileRepository().postEditProfile(
  //       nameController.text,
  //       fileImage,
  //     );
  //     await ProfileRepository().getDataProfile(context);
  //     setState(() => isLoading = false);
  //     // ignore: use_build_context_synchronously
  //     popupDynamic(context, "Success", 'Your profile updated');
  //   } catch (_) {
  //     gotoLogin(context);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              const BackGeneralHeader(title: 'Edit Profile'),
              Container(
                height: sHeightMinus(context, 70),
                width: sWidthFull(context),
                color: cBackround,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    const SizedBox(height: 30),
                    changeImage(
                      context,
                      'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg',
                    ),
                    const SizedBox(height: 20),
                    TextInput(
                      controller: nameController,
                      tag: "state.profiledata.data.name",
                      title: 'Name',
                      isPassword: false,
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      //onTap: () => isLoading ? null : onSubmit(),
                      child: NormalButton(
                        title: isLoading ? 'Loading' : 'Update',
                      ),
                    ),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget changeImage(BuildContext context, String image) {
    Future getImageGalery() async {
      final ImagePicker picker = ImagePicker();
      final XFile? imagePicker =
          await picker.pickImage(source: ImageSource.gallery);
      fileImage = imagePicker == null ? null : File(imagePicker.path);
      setState(() {});
    }

    return Stack(
      children: [
        fileImage != null
            ? CircleAvatar(
                radius: 50,
                backgroundImage: FileImage(fileImage!),
                backgroundColor: cGrey,
              )
            : CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/blossom-floral-bouquet-decoration-colorful-beautiful-flowers-background-garden-flowers-plant-pattern-wallpapers-greeting-cards-postcards-design-wedding-invites_90220-1103.jpg'),
                backgroundColor: cGrey,
                child: image == ''
                    ? const Icon(Icons.person, size: 60, color: cWhite)
                    : Container(),
              ),
        Container(
          margin: const EdgeInsets.only(left: 60, top: 60),
          child: GestureDetector(
            onTap: () => getImageGalery(),
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: cWhite,
              child: Icon(Icons.edit, color: cTersier),
            ),
          ),
        )
      ],
    );
  }
}
