import 'package:flutter/material.dart';
import 'package:portfolio/app/colors.dart';
import 'package:portfolio/app/configs.dart';
import 'package:portfolio/app/icons.dart';
import 'package:portfolio/core/utils/ScreenUiHelper.dart';
import 'package:portfolio/ui/views/contact%20me/contact_view_model.dart';
import 'package:portfolio/ui/widgets/contact_header_icon_widget.dart';
import 'package:portfolio/ui/widgets/fadeAnimation.dart';

class ContactDesktopView extends StatelessWidget {
  final ScreenUiHelper uiHelpers;
  final ContactViewModel model;

  const ContactDesktopView({Key key, this.uiHelpers, this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: model.formKey,
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Get In Touch!",
                  style: uiHelpers.headline.copyWith(fontSize: 45),
                ),
                SizedBox(
                  height: 8,
                ),
                FadeAnimation(
                  xDistance: 0,
                  delay: 1,
                  yDistance: 10,
                  child: Text(
                    "Contact me for hiring,or help me to join your team",
                    style: uiHelpers.body.copyWith(fontSize: 25),
                  ),
                ),
                uiHelpers.verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FadeAnimation(
                      xDistance: 00,
                      yDistance: 20,
                      delay: 1.25,
                      child: MouseRegion(
                        onEnter: (event) =>
                            model.changeSelected(true, "Github"),
                        onExit: (event) =>
                            model.changeSelected(false, "Github"),
                        child: ContactIconHeader(
                          onTap: () =>
                              model.navigateToSocial(SocialLinks.githubLink),
                          name: "Github",
                          icon: ContactIcons.githubIcon,
                          isActive: model.selected == "Github",
                        ),
                      ),
                    ),
                    FadeAnimation(
                      xDistance: 00,
                      yDistance: 20,
                      delay: 1.25,
                      child: MouseRegion(
                        onEnter: (event) =>
                            model.changeSelected(true, "Twitter"),
                        onExit: (event) =>
                            model.changeSelected(false, "Twitter"),
                        child: ContactIconHeader(
                          onTap: () =>
                              model.navigateToSocial(SocialLinks.twitterLink),
                          name: "Twitter",
                          icon: ContactIcons.twitterIcon,
                          isActive: model.selected == "Twitter",
                        ),
                      ),
                    ),
                    FadeAnimation(
                      xDistance: 00,
                      yDistance: 20,
                      delay: 1.25,
                      child: MouseRegion(
                        onEnter: (event) =>
                            model.changeSelected(true, "LinkedIn"),
                        onExit: (event) =>
                            model.changeSelected(false, "LinkedIn"),
                        child: ContactIconHeader(
                          onTap: () =>
                              model.navigateToSocial(SocialLinks.linkedinUrl),
                          name: "LinkedIn",
                          icon: ContactIcons.linkedinIcon,
                          isActive: model.selected == "LinkedIn",
                        ),
                      ),
                    ),
                  ],
                ),
                uiHelpers.verticalSpaceMedium,
                FadeAnimation(
                  xDistance: 00,
                  yDistance: 25,
                  delay: 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
                      width: uiHelpers.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact Form",
                            style: uiHelpers.headline,
                          ),
                          uiHelpers.verticalSpaceLow,
                          Row(
                            children: [
                              Container(
                                width: uiHelpers.width * 0.3,
                                child: Column(
                                    children: [
                                      Text(
                                        "Your Name",
                                        style: uiHelpers.body,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      TextFormField(
                                        controller: model.nameController,
                                        validator: (String value) {
                                          if (value.trim().isEmpty) {
                                            return "Please Enter Name";
                                          }

                                          return null;
                                        },
                                        focusNode: model.focusNodeMap["name"],
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              FormIcon.nameIcon,
                                              color: model.hasFocusMap["name"]
                                                  ? primaryColor
                                                  : textPrimaryColor,
                                            ),
                                            hintText: "Luffy San",
                                            hintStyle: TextStyle(
                                                color: textSecondaryColor),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: textPrimaryColor)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color:
                                                        textSecondaryColor))),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Your Email",
                                        style: uiHelpers.body,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      TextFormField(
                                        controller: model.emailController,
                                        validator: (String value) {
                                          if (value.trim().isEmpty) {
                                            return "Please Enter Email";
                                          } else if (!RegExp(
                                                  r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                                              .hasMatch(value)) {
                                            return "Please enter valid email";
                                          }

                                          return null;
                                        },
                                        focusNode: model.focusNodeMap["email"],
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              FormIcon.nameIcon,
                                              color: model.hasFocusMap["email"]
                                                  ? primaryColor
                                                  : textPrimaryColor,
                                            ),
                                            hintText: "youremail@gmail.com",
                                            hintStyle: TextStyle(
                                                color: textSecondaryColor),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: textPrimaryColor)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color:
                                                        textSecondaryColor))),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Subject",
                                        style: uiHelpers.body,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      TextFormField(
                                        controller: model.subjectController,
                                        validator: (String value) {
                                          if (value.trim().isEmpty) {
                                            return "Please Enter Subject";
                                          }

                                          return null;
                                        },
                                        focusNode:
                                            model.focusNodeMap["subject"],
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              FormIcon.nameIcon,
                                              color:
                                                  model.hasFocusMap["subject"]
                                                      ? primaryColor
                                                      : textPrimaryColor,
                                            ),
                                            hintText: "Hiring for...",
                                            hintStyle: TextStyle(
                                                color: textSecondaryColor),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: textPrimaryColor)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color:
                                                        textSecondaryColor))),
                                      ),
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Message",
                                        style: uiHelpers.body,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      TextFormField(
                                        controller: model.bodyController,
                                        validator: (String value) {
                                          if (value.trim().isEmpty) {
                                            return "Please Enter Message";
                                          }

                                          return null;
                                        },
                                        maxLines: 10,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: textPrimaryColor)),
                                            alignLabelWithHint: true,
                                            hintStyle: TextStyle(
                                                color: textSecondaryColor),
                                            hintText: "Your Messsage..",
                                            border: OutlineInputBorder(
                                              
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color:
                                                        textSecondaryColor))),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          uiHelpers.verticalSpaceHigh,
                          FadeAnimation(
                            xDistance: 00,
                            yDistance: 0,
                            delay: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: MaterialButton(
                                  visualDensity:
                                      VisualDensity.adaptivePlatformDensity,
                                  disabledTextColor: textSecondaryColor,
                                  disabledElevation: 0,
                                  disabledColor: Colors.grey,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  color: primaryColor,
                                  onPressed: () => model.openMail(),
                                  child: Text(
                                    "Send Message",
                                    style: uiHelpers.buttonStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
            ),
          ),
        ),
      ),
    );
  }
}
