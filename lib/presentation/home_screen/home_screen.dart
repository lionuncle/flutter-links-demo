import 'package:flutter/material.dart';
import 'package:flutter_link_feature_app/presentation/getx/url_deatil_controller.dart';
import 'package:flutter_link_feature_app/presentation/tabs/empty_tab/empty_tab.dart';
import 'package:flutter_link_feature_app/presentation/tabs/link_tab/link_tab.dart';
import 'package:flutter_link_feature_app/presentation/widgets/bottom_sheet.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController urlController1 = TextEditingController();
  TextEditingController customUrlController1 = TextEditingController();
  TextEditingController urlController2 = TextEditingController();
  TextEditingController customUrlController2 = TextEditingController();
  TextEditingController urlController3 = TextEditingController();
  TextEditingController customUrlController3 = TextEditingController();

  final UrlDetailController c = Get.put(UrlDetailController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => AddEditLinkBottomSheet(
                formKey: formKey,
                urlController1: urlController1,
                customUrlController1: customUrlController1,
                urlController2: urlController2,
                customUrlController2: customUrlController2,
                urlController3: urlController3,
                customUrlController3: customUrlController3, c: c,
              ),
            );
          },
          tooltip: 'add link',
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Link Manager'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Empty'),
              Tab(text: 'Links'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            EmptyTab(),
            LinkTab(),
          ],
        ),
      ),
    );
  }
}
