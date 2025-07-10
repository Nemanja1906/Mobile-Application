import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/theme_provider.dart';
import 'package:flutter_application_1/services/assets_manager.dart';
import 'package:flutter_application_1/widgets/app_name_text.dart';
import 'package:flutter_application_1/widgets/custom_list_tile.dart';

import 'package:flutter_application_1/widgets/titles_text.dart';
import 'package:flutter_application_1/widgets/subtitles_text.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: AppNameTextWidget(),
        leading: Image.asset(AssetsManager.logo),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.all(20.0),

              child: TitleTextWidget(
                label: "Please login to have ultimate acess",
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.background,
                      width: 3,
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/005/005/788/non_2x/user-icon-in-trendy-flat-style-isolated-on-grey-background-user-symbol-for-your-web-site-design-logo-app-ui-illustration-eps10-free-vector.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(label: "Nemanja Blagojević"),
                    SubtitlesTextWidget(
                      label: "blagojevicnemanja2001@gmail.com",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                TitleTextWidget(label: "General"),
                CustomListTile(
                  imagePath: AssetsManager.order,
                  text: "All orders",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.wishlist,
                  text: "Wishlist",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.viewedRecently,
                  text: "Viewed recently",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.addressIcon,
                  text: "Address",
                  function: () {},
                ),
                Divider(thickness: 1),
                SizedBox(height: 10),
                TitleTextWidget(label: "Settings"),
                SwitchListTile(
                  title: Text(
                    themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode",
                  ),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(themevalue: value);
                  },
                ),
                Divider(thickness: 1),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: Center(child: const Text("Login")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
