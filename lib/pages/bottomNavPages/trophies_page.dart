import 'package:codeone/style/app_style.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';



class TrophiesPage extends StatefulWidget {
  const TrophiesPage({Key? key}) : super(key: key);




  @override
  State<TrophiesPage> createState() => _TrophiesPageState();
}

class _TrophiesPageState extends State<TrophiesPage> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Mat', 8.5, Colors.orange),
      _ChartData('Port', 7, Colors.teal),
      _ChartData('Geo', 10, Colors.red),
      _ChartData('Hist', 6.4, Colors.indigo),
      _ChartData('Filo', 6, Colors.purple),
      _ChartData('Ing', 9.9, Colors.deepOrange),
      _ChartData('Fis', 5.5, Colors.green),
      _ChartData('Ed.Fis', 10, Colors.blue),
      _ChartData('Info', 10, Colors.brown),
      _ChartData('Bio', 7, Colors.grey),
      _ChartData('Fis II', 8.3, Colors.cyanAccent),
      _ChartData('Mat II', 7, Colors.cyan),

    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 120,
          height: 60,
          child: Image.asset('assets/images/logo-educacao.png',),
        ),
        backgroundColor: AppStyle.secondColor,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,
            size: 25,
            color: Colors.white,
          ),
          ),

          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined,
            size: 25,
            color: Colors.white,
          ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.person,
            size: 25,
            color: Colors.white,
          ),
          ),
        ],

      ),
      backgroundColor: Color(0xfff1f3f5),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
              child: Container(
                padding: EdgeInsets.only(left: 12),
                child: Text("Minhas Notas", style: TextStyle(color: Colors.deepPurple,
            fontSize: 18,
            fontWeight: FontWeight.bold, fontFamily: "Roboto"),),
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                Container(
                  child: Image.asset('assets/images/grafico.png',
                  width: 30,
                  height: 30,),
                ),
                SizedBox(width: 15,),
                Text("Melhor matéria: "),
                Text("Geografia")
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                Container(
                  child: Image.asset('assets/images/relogio.png',
                    width: 30,
                    height: 30,),
                ),
                SizedBox(width: 15,),
                Text("Tempo na Plataforma: "),
                Text("15 Minutos")
              ],
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child:SfCartesianChart(
                    primaryXAxis: CategoryAxis(maximum: 12, minimum: 0),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 10, interval: 2),
                    tooltipBehavior: _tooltip,
                      series: <ChartSeries<_ChartData, String>>[
                        ColumnSeries<_ChartData, String>(
                          dataSource: data,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          pointColorMapper:(_ChartData data, _) => data.color,
                          borderWidth: 10,
                          name: 'Desempenho',
                          )
                      ]
                  )
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    headingRowHeight: 32,
                    dataRowHeight: 24,
                    sortAscending: true,
                    columns: [
                  DataColumn(label: Text("Material")),
                  DataColumn(label: Text("Frequência")),
                  DataColumn(label: Text("Atividades")),
                  DataColumn(label: Text("Médias")),
                ], rows:[
                  DataRow(
                      cells: [
                    DataCell(Text("Matemática")),
                    DataCell(Text("15")),
                    DataCell(Text("3")),
                    DataCell(Text("9,5")),
                  ]),
                  DataRow(
                      cells: [
                    DataCell(Text("Português")),
                    DataCell(Text("15")),
                    DataCell(Text("5")),
                    DataCell(Text("7,5")),
                  ]),
                  DataRow(
                      cells: [
                    DataCell(Text("Geografia")),
                    DataCell(Text("13")),
                    DataCell(Text("2")),
                    DataCell(Text("10")),
                  ]),
                  DataRow(
                      cells: [
                    DataCell(Text("História")),
                    DataCell(Text("10")),
                    DataCell(Text("0")),
                    DataCell(Text("6")),
                  ]),
                  DataRow(
                      cells: [
                    DataCell(Text("Filosofia")),
                    DataCell(Text("8")),
                    DataCell(Text("0")),
                    DataCell(Text("9")),
                  ]),
                ]),
              ),
            ),
            ElevatedButton(

              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff4263EB))),
              onPressed: (){},
              child: Text("Minhas Notas"),
            )
            ],
        ),
      ),

    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;


}



