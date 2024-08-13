import 'package:flutter/material.dart';
import 'package:pay_in_app/src/config/locale/app_localizations.dart';
import 'package:pay_in_app/src/core/widgets/icon_container.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/transactions_card.dart';
import 'package:pay_in_app/src/features/profile/presentation/widgets/profile_pic.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ProfilePic(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Mohamed Aly",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const Text(
                            "01000300500",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const Text(
                            "example@gmail.com",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: IconContainer(
                            icon: Icons.settings, color: Colors.blue),
                        title: Text(AppLocalizations.of(context)!
                            .translate('settings')!),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {},
                        ),
                      ),
                      ListTile(
                        leading: IconContainer(
                            icon: Icons.translate, color: Colors.black),
                        title: Text(AppLocalizations.of(context)!
                            .translate('change_language')!),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            //TODO: Adjust the BlocProvider to add logic to change language on press
                          },
                        ),
                      ),
                      ListTile(
                        leading: IconContainer(
                            icon: Icons.help, color: Colors.green),
                        title: Text(
                            AppLocalizations.of(context)!.translate('help')!),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {},
                        ),
                      ),
                      ListTile(
                        leading: IconContainer(
                            icon: Icons.logout_rounded,
                            color: Colors.redAccent),
                        title: Text(
                          AppLocalizations.of(context)!.translate('logout')!,
                          style: const TextStyle(color: Colors.red),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
