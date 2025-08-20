import 'package:flutter/widgets.dart';
import 'package:tempsensor/model/graph_model.dart';
import 'package:tempsensor/model/bar_graph_model.dart'; // make sure you import this

class BarGraphData {
  final List<BarGraphModel> data = [
    BarGraphModel(
      label: "Average Temp",
      color: Color.fromRGBO(200, 10, 10, 1), // alpha should be 1 (0 is fully transparent)
      graph: [
        GraphModel(x: 0, y: 32),
        GraphModel(x: 1, y: 30),
        GraphModel(x: 2, y: 28),
        GraphModel(x: 3, y: 29),
        GraphModel(x: 4, y: 31),
        GraphModel(x: 5, y: 34),
        GraphModel(x: 6, y: 35),
      ],
    ),
    BarGraphModel(
      label: "Average Humidity",
      color: Color.fromRGBO(10, 100, 200, 1),
      graph: [
        GraphModel(x: 0, y: 60),
        GraphModel(x: 1, y: 58),
        GraphModel(x: 2, y: 65),
        GraphModel(x: 3, y: 62),
        GraphModel(x: 4, y: 64),
        GraphModel(x: 5, y: 66),
        GraphModel(x: 6, y: 63),
      ],
    ),
        BarGraphModel(
      label: "Average light intensity",
      color: Color.fromRGBO(223, 250, 22, 1),
      graph: [
        GraphModel(x: 0, y: 600),
        GraphModel(x: 1, y: 580),
        GraphModel(x: 2, y: 650),
        GraphModel(x: 3, y: 620),
        GraphModel(x: 4, y: 640),
        GraphModel(x: 5, y: 660),
        GraphModel(x: 6, y: 630),
      ],
    ),
        BarGraphModel(
      label: "Average Air Quality",
      color: Color.fromRGBO(110, 198, 225, 1),
      graph: [
        GraphModel(x: 0, y: 60),
        GraphModel(x: 1, y: 58),
        GraphModel(x: 2, y: 65),
        GraphModel(x: 3, y: 62),
        GraphModel(x: 4, y: 64),
        GraphModel(x: 5, y: 66),
        GraphModel(x: 6, y: 63),
      ],
    ),
  ];
  final label =['S','M','T','W','T','F','S'];
}
