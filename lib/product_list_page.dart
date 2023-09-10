import 'package:flutter/material.dart';
import 'product_details_page.dart';

class ProductListPage extends StatelessWidget {
  final List<String> nfsGames = [
    'Need for Speed: Most Wanted', 'Need for Speed: Underground 2', 'Need for Speed: Hot Pursuit',
    'Need for Speed: Carbon', 'Need for Speed: ProStreet', 'Need for Speed: Shift',
    'Need for Speed: The Run', 'Need for Speed: Most Wanted (2012)', 'Need for Speed: Rivals',
    'Need for Speed: No Limits', 'Need for Speed: Payback', 'Need for Speed: Heat'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogos Need for Speed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Lista de Jogos da Franquia Need for Speed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: Card(
                  elevation: 4.0,
                  child: ListView.builder(
                    itemCount: nfsGames.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(nfsGames[index]),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductDetailsPage(nfsGames[index])),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
