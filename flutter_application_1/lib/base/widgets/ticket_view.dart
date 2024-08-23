import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_style.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder.dart';
import 'package:flutter_application_1/base/widgets/big_circle_ticket.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(sizeScreen);
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      // this is the basics layout our ticker container
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              // color: Colors.red,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              // margin: EdgeInsets,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Container(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilder(
                                randomDevider: 6,
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            )),
                          ],
                        ),
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(ticket["to"]["code"],
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ), // this 1st row ended here

                  // show departure and destination  with first line
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["from"]["name"],
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["flying_time"],
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  // show departure and destination names with time
                  // Row()
                ],
              ),
            ),
            Container(
                // iski separate class bani gi
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircleTicket(
                      isRight: false,
                    ),
                    Expanded(
                        child: AppLayoutbuilder(
                      randomDevider: 16,
                      width: 6,
                    )), // this is space we added orange color
                    BigCircleTicket(
                      isRight: true,
                    ),
                  ],
                )),
            Container(
              // this is orange container
              // color: Colors.red,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              // margin: EdgeInsets,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(ticket["date"],
                              style: AppStyles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("DATE",
                              style: AppStyles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket["departure_time"],
                              style: AppStyles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Departure time",
                              style: AppStyles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket["number"].toString(),
                              style: AppStyles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Numner",
                              style: AppStyles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                    ],
                  ), // this 1st row ended here
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // will start from here
  }
}
