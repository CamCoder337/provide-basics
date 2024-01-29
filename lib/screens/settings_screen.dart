import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basics/providers/user_provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        backgroundColor: ThemeData.light().primaryColorDark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "Username:  ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  context.watch<UserProvider>().userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              context.read<UserProvider>().changeUserName(newUserName: _usernameController.text);
              FocusManager.instance.primaryFocus?.unfocus();
              _usernameController.clear();
            },
                child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}
