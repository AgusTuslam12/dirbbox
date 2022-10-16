import 'package:dirbbox/theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/storage_details_controller.dart';
import 'indicatorr.dart';

class StorageDetailsView extends GetView<StorageDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        leadingWidth: 60,
        backgroundColor: Colors.white,
        title: Text(
          'StorageDetailsView',
          style: TextappBarr,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff22215B),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Color(0xff22215B),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Expanded(
            child: StorageDetail(),
          ),
          Footer(
            child: Text('Export Details'),
            padding: EdgeInsets.all(20.0),
            backgroundColor: Colors.white,
          ),
          //default flex is 2
        ],
      ),
    );
  }
}

class StorageDetail extends StatefulWidget {
  const StorageDetail({super.key});

  @override
  State<StorageDetail> createState() => _StorageDetailState();
}

class _StorageDetailState extends State<StorageDetail> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.7,
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: Column(children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                        pieTouchData: PieTouchData(touchCallback:
                            (FlTouchEvent event, pieTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                pieTouchResponse == null ||
                                pieTouchResponse.touchedSection == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex = pieTouchResponse
                                .touchedSection!.touchedSectionIndex;
                          });
                        }),
                        borderData: FlBorderData(show: false),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections()),
                  ),
                ),
              ),
            ]),
          ),
        ),
        Column(children: [
          Text(
            "Available",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff22215B),
            ),
          ),
          Text(
            "84.64 GB",
            style: GoogleFonts.poppins(
              color: Color(0xff22215B),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Total 128 GB",
            style: GoogleFonts.poppins(
              color: Color(0xff22215B),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Indicator(
                color: Color(0xff22215B),
                text: 'Design Files',
                isSquare: true,
                datavalue: 0.68,
                indicatColor: Color(0xff22215B),
                textValue: "38.66 GB",
              ),
              SizedBox(
                height: 24,
              ),
              Indicator(
                color: Color(0xffFFC700),
                text: 'Images',
                isSquare: true,
                datavalue: 0.54,
                indicatColor: Color(0xffFFC700),
                textValue: "24.80 GB",
              ),
              SizedBox(
                height: 24,
              ),
              Indicator(
                color: Color(0xff4CE364),
                text: 'Video',
                isSquare: true,
                datavalue: 0.42,
                indicatColor: Color(0xff4CE364),
                textValue: "12.60 GB",
              ),
              SizedBox(
                height: 24,
              ),
              Indicator(
                color: Color(0xff567DF4),
                text: 'Documents',
                isSquare: true,
                datavalue: 0.3,
                indicatColor: Color(0xff567DF4),
                textValue: "6.57 GB",
              ),
              SizedBox(
                height: 24,
              ),
              Indicator(
                color: Color(0xffFF842A),
                text: 'Others',
                isSquare: true,
                datavalue: 0.2,
                indicatColor: Color(0xffFF842A),
                textValue: "2.01 GB",
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(5, (index) {
      final isTouched = index == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;

      TextStyle textAppChart = GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: colorWhite,
      );

      switch (index) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff22215B),
            value: 38.66,
            title: '',
            radius: radius,
            titleStyle: textAppChart,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xffFFC700),
            value: 24.80,
            title: '',
            radius: radius,
            titleStyle: textAppChart,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff4CE364),
            value: 12.60,
            title: '',
            radius: radius,
            titleStyle: textAppChart,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff567DF4),
            value: 6.57,
            title: '',
            radius: radius,
            titleStyle: textAppChart,
          );
        case 4:
          return PieChartSectionData(
            color: const Color(0xffFF842A),
            title: '',
            value: 2.01,
            radius: radius,
            titleStyle: textAppChart,
          );
        default:
          throw Error();
      }
    });
  }
}
