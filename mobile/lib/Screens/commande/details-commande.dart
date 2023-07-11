import 'package:flutter/material.dart';

class RecapPage extends StatelessWidget {
  const RecapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Text(
            'Récapitulatif',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajoute une marge horizontale de 16 pixels
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Commande N° 713702',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajoute une marge horizontale de 16 pixels
              child: Column(
                children: [
                  Text(
                    'En cours de traitement',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

              SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    border: Border.all(
    color: Colors.black,
    width: 1.0,
    ),
    ),
    child: DataTable(
    columnSpacing: 16.0,
    headingRowColor: MaterialStateColor.resolveWith((states) => Colors.orange),
    columns: [
    DataColumn(
    label: Text(
    'Produits',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ),
    DataColumn(
    label: Text(
    'Quantité',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ),
    DataColumn(
    label: Text(
    'Prix',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ),
    ],
      rows: [
              DataRow(
                cells: [
                  DataCell(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Peachy Burger',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'Double Steak, Fromage, Bacon, Cornichon, Sauce Maison, Pain céréale.',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    Text(
                      '1',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  DataCell(
                    Text(
                      '78,00 €',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mama Burger',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'Double Steak, Fromage, Bacon, Cornichon, Sauce Maison, Pain céréale.',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    Text(
                      '1',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  DataCell(
                    Text(
                      '55,00 €',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
        ),
        SizedBox(height: 24.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajoute une marge horizontale de 16 pixels
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  // Code pour l'action du bouton "Retour"
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Retour',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Code pour l'action du bouton "Confirmer"
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Confirmer',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.0),
        Container(
          height: 1.0,
          color: Colors.black,
        ),
      ],
    );

  }
}