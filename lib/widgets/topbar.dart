import 'package:flutter/material.dart';
import 'package:mechin_test/widgets/progress_card.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      child: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcNPOPDCWiEvN0x11fc_02MzdhtzcLOwg-qg&usqp=CAU'),
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Samuel John',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_pin,
                        color: Colors.orange,
                      ),
                      Text(
                        'Trivandrum',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.notifications_active,
                color: Colors.white,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ProgresssCard(
                  title: '01',
                  status: 'Active',
                ),
                ProgresssCard(
                  title: '02',
                  status: 'Pending',
                ),
                ProgresssCard(
                  title: '10',
                  status: 'Compleated',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 50,
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Row(
                    children: const [
                      Icon(Icons.wallet),
                      Text('Earned'),
                      Spacer(),
                      Text('6000')
                    ],
                  ),
                )),
                const SizedBox(width: 10),
                Expanded(
                    child: Container(
                  height: 50,
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Row(
                    children: const [Text('Feedbacks'), Spacer(), Text('12')],
                  ),
                )),
              ],
            ),
          )
        ],
      )),
    );
  }
}