import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mechin_test/models/joblist_item_model.dart';

class JobListCard extends StatelessWidget {
  const JobListCard({
    Key? key,
    required this.item,
  }) : super(key: key);
  final JobListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.orange),
      ),
      
      child: Row(
        children: [
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NewTag(),
              const SizedBox(height: 5),
              Text(item.title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              const SizedBox(height: 5),
               Row(
                 children: [
                  const Icon(Icons.location_pin),
                   Text(item.location,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                 ],
               ),
               const SizedBox(height: 5),
                 Row(
                 children: [
                  const Icon(Icons.person),
                   Text(item.person,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                 ],
               ),
            ],
          ),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [Text(item.timeAgo),Column(
              children: [
                const Text('priceper day'),
                Text('${item.price}',style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
              ],
            ), Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(4)),
      child: const Text('view Details'),
    )],))
        ],
      ),
    );
  }
}

class NewTag extends StatelessWidget {
  const NewTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(4)),
      child: const Text('New'),
    );
  }
}
