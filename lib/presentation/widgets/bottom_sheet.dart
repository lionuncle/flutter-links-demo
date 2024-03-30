import 'package:flutter/material.dart';
import 'package:flutter_link_feature_app/presentation/getx/url_deatil_controller.dart';
import 'package:flutter_link_feature_app/presentation/widgets/primary_button.dart';
import 'package:flutter_link_feature_app/utils/utils.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../../data/model/social_media_link_model.dart';
import 'app_text_field.dart';

class AddEditLinkBottomSheet extends StatelessWidget {
  final TextEditingController urlController1;
  final TextEditingController customUrlController1;
  final TextEditingController urlController2;
  final TextEditingController customUrlController2;
  final TextEditingController urlController3;
  final TextEditingController customUrlController3;
  final SocialMediaLink? initialData1;
  final SocialMediaLink? initialData2;
  final SocialMediaLink? initialData3;
  final GlobalKey<FormState> formKey;

  final UrlDetailController c;

  AddEditLinkBottomSheet({
    super.key,
    required this.urlController1,
    required this.customUrlController1,
    required this.formKey,
    required this.urlController2,
    required this.customUrlController2,
    required this.urlController3,
    required this.customUrlController3,
    required this.c,
    this.initialData1,
    this.initialData2,
    this.initialData3,
  }) {
    _setInitialData();
  }


  void _setInitialData() {
    if (initialData1 != null) {
      urlController1.text = initialData1!.link;
      customUrlController1.text = initialData1!.customTitle ?? '';
    }
    if (initialData2 != null) {
      urlController2.text = initialData2!.link;
      customUrlController2.text = initialData2!.customTitle ?? '';
    }
    if (initialData3 != null) {
      urlController3.text = initialData3!.link;
      customUrlController3.text = initialData3!.customTitle ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height*0.25 ,
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// for first
              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Icon'),
                    Text(c.hostDomain.toString() ?? 'domain'),
                    Text(c.hostTitle.toString() ?? 'title'),
                  ],
                );
              }),

              AppTextField(
                controller: urlController1,
                backgroundColor: const Color(0xffe9fafd),
                borderRadius: 12,
                label: 'Enter URL',
                borderColor: const Color(0xff00AE9A),
                hint: 'Enter URL',
                onChanged: (value) {
                  if (value!.length < 25) {
                    if (isValidUrl(value)) {
                      c.getUrlDetail(url: value, i: 0);
                      print("value: ${true}");
                    } else {
                      print("value: ${false}");
                    }
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'url cannot empty!';
                  }
                  if (!isValidUrl(value)) {
                    return 'Enter correct url';
                  }
                  if (value.length > 25) {
                    return 'length cannot greater than 25';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              AppTextField(
                controller: customUrlController1,
                backgroundColor: const Color(0xffe9fafd),
                borderRadius: 12,
                label: 'Custom title',
                borderColor: const Color(0xff00AE9A),
                hint: 'Custom title',
              ),
              const SizedBox(height: 10),

              /// for second

              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Icon '),
                    Text(c.hostDomain1.toString() ?? 'domain'),
                    Text(c.hostTitle1.toString() ?? 'title'),
                  ],
                );
              }),

              AppTextField(
                controller: urlController2,
                backgroundColor: const Color(0xffe9fafd),
                borderRadius: 12,
                label: 'Enter URL',
                borderColor: const Color(0xff00AE9A),
                hint: 'Enter URL',
                onChanged: (value) {
                  if (value!.length < 25) {
                    if (isValidUrl(value)) {
                      c.getUrlDetail(url: value, i: 1);
                      print("value: ${true}");
                    } else {
                      print("value: ${false}");
                    }
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'url cannot empty!';
                  }
                  if (!isValidUrl(value)) {
                    return 'Enter correct url';
                  }
                  if (value.length > 25) {
                    return 'length cannot greater than 25';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),
              AppTextField(
                controller: customUrlController2,
                backgroundColor: const Color(0xffe9fafd),
                borderRadius: 12,
                label: 'Custom title',
                borderColor: const Color(0xff00AE9A),
                hint: 'Custom title',
              ),
              const SizedBox(height: 10),

              /// for third
              ///

              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Icon'),
                    Text(c.hostDomain2.toString() ?? 'domain'),
                    Text(c.hostTitle2.toString() ?? 'title'),
                  ],
                );
              }),

              AppTextField(
                controller: urlController3,
                backgroundColor: const Color(0xffe9fafd),
                borderRadius: 12,
                label: 'Enter URL',
                borderColor: const Color(0xff00AE9A),
                hint: 'Enter URL',
                onChanged: (value) {
                  if (value!.length < 25) {
                    if (isValidUrl(value)) {
                      c.getUrlDetail(url: value, i: 2);
                      print("value: ${true}");
                    } else {
                      print("value: ${false}");
                    }
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'url cannot empty!';
                  }
                  if (!isValidUrl(value)) {
                    return 'Enter correct url';
                  }
                  if (value.length > 25) {
                    return 'length cannot greater than 25';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 10),
              AppTextField(
                controller: customUrlController3,
                backgroundColor: const Color(0xffe9fafd),
                borderRadius: 12,
                label: 'Custom title',
                borderColor: const Color(0xff00AE9A),
                hint: 'Custom title',
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                radius: BorderRadius.circular(10),
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    final box = await Hive.openBox<SocialMediaLink>(
                        'social_media_links');
                    box.put(
                        'link1',
                        SocialMediaLink(
                            title: c.hostTitle.toString(),
                            link: urlController1.text,
                            customTitle: customUrlController1.text.isNotEmpty
                                ? customUrlController1.text
                                : null));
                    box.put(
                        'link2',
                        SocialMediaLink(
                            title: c.hostTitle1.toString(),
                            link: urlController2.text,
                            customTitle: customUrlController2.text.isNotEmpty
                                ? customUrlController2.text
                                : null));
                    box.put(
                        'link3',
                        SocialMediaLink(
                            title: c.hostTitle2.toString(),
                            link: urlController3.text,
                            customTitle: customUrlController3.text.isNotEmpty
                                ? customUrlController3.text
                                : null));
                    // Close the bottom sheet
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
