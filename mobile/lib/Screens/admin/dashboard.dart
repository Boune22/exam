import 'package:flutter/material.dart';
import 'sidebar.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Sidebar(),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DashSelector(),
                              Text(
                                'Laurent Gina',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: GridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16.0,
                              crossAxisSpacing: 16.0,
                              childAspectRatio: 1.5,
                              children: [
                                DashboardItem(
                                  color: Colors.teal,
                                  title: "Chiffre d'affaire anzzznueleeeeeeeeeeeeeees",
                                  value: "1 550 000€",
                                ),
                                DashboardItem(
                                  color: Colors.orange,
                                  title: "Chiffre d'affaire mensuel",
                                  value: "550 000€",
                                ),
                                DashboardItem(
                                  color: Colors.purple,
                                  title: "Nombre clients",
                                  value: "75",
                                  isCircle: true,
                                ),
                                Container(
                                  color: Colors.teal,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Historique',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal:15.0),
                                    child:Table(
                                        border: TableBorder.all(color: Colors.white),
                                        children: [
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: Text(
                                                  'Damn',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "That's a test brother",
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  'another col',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  '01/02/2023',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: Text(
                                                  'Damn',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "That's a test brother",
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  'another col',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  '01/02/2023',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: Text(
                                                  'Damn',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "That's a test brother",
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  'another col',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  '01/02/2023',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    ],
                                  ),
                                ),

                                DashboardItem(
                                  color: Colors.orange,
                                  title: "Commandes en cours",
                                  value: "75",
                                ),
                                DashboardItem(
                                  color: Colors.orange,
                                  title: "Commandes annulées",
                                  value: "75",
                                ),
                                DashboardItem(
                                  color: Colors.purple,
                                  title: "Commandes terminées",
                                  value: "75",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1.0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}


class DashSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Votre code pour le sélecteur de mois ici
    return Container();
  }
}

class DashboardItem extends StatelessWidget {
  final Color color;
  final String title;
  final String value;
  final bool isCircle;
  final Widget? child;

  DashboardItem({
    required this.color,
    required this.title,
    required this.value,
    this.isCircle = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          if (isCircle)
            Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          else
            Text(
              value,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          if (child != null) child!,
        ],
      ),
    );
  }
}
