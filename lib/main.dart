import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyAlertDialogPage(title: 'alert Dialog example'),
    );
  }
}

class MyAlertDialogPage extends StatelessWidget {
  const MyAlertDialogPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              // ✅ style personnalisé
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              // ✅ Bouton actif
              onPressed: () {
                // ✅ Affichage du AlertDialog
                showDialog(
                  context: context,
                  barrierDismissible: false, // empêcher la fermeture en dehors
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.amber,
                      title: const Text('Important !'),
                      content: const Text('This is an important message.'),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Ferme la boîte
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Launch AlertDialog'),
            ),
          ],
        ),
      ),
    );
  }
}
