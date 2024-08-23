import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/media.dart';
import 'package:flutter_application_1/base/res/styles/app_style.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/utils/app_routes.dart';
import 'package:flutter_application_1/base/widgets/app_double_text.dart';
import 'package:flutter_application_1/base/widgets/ticket_view.dart';
import 'package:flutter_application_1/screens/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // row  and column
    return Scaffold(
      backgroundColor: AppStyles.bgColor,

      // we want  scrollable view effect thats why we using listView
      body: ListView(
        // list widget inside widhet hold childern
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            // container takes child
            padding: const EdgeInsets.symmetric(
                horizontal: 20), // padding inside container
            child: Column(
              // col holds childern
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3,
                        ), // we have to size the text
                        // line space betwenn two text in column we use sizeBox
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.red,
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("search"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                APPDoubleText(
                  bigText: 'Upcomming Flights',
                  smallText: 'View all',
                  function: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map((singleTicket) => TicketView(
                              ticket: singleTicket,
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                APPDoubleText(
                  bigText: 'Hotels ',
                  smallText: 'View all',
                  function: () => print(
                      "this is hotels data "), // we have to work for hotels data
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Hotel(),
                        Hotel(),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
