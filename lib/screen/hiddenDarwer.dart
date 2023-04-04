import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hitachi_test/screen/category.dart';
import 'package:hitachi_test/screen/homeScreen.dart';
import 'package:hitachi_test/screen/signUp.dart';
import 'package:hitachi_test/screen/subCategoryList.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

String profilePicture = '';
String username = '';
String email = '';

class _HiddenDrawerState extends State<HiddenDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('NEO JASON'),
            accountEmail: const Text('neojason98@gmail.com'),
            currentAccountPicture: Image.asset(
              'asset/images/comany.jpg',
              fit: BoxFit.cover,
              width: 90,
              height: 90,
            ),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('asset/images/canada1.jpg'),
              ),
            ),
          ),
          const Divider(height: 0.2),
          ListTile(
            title: const Text('Categories'),
            onTap: () {
              Get.to(const Categories());
            },
          ),
          const Divider(height: 0.2),
          ListTile(
            title: const Text('Sub Catehories'),
            onTap: () {
              Get.to(const SubcategoryList());
            },
          ),
          const Divider(height: 0.2),
          ListTile(
            title: const Text('Reviews'),
            onTap: () {},
          ),
          const Divider(height: 0.2),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
