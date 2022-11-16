import 'package:flutter/material.dart';
import 'package:mechin_test/widgets/list_item.dart';

import '../models/joblist_item_model.dart';
import '../widgets/topbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBar(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBar(),
                  const SizedBox(height: 10),
                  Text(
                    'Job List (${jobList.length})',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return JobListCard(item: jobList[index]);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  final List<JobListItem> jobList = [
    JobListItem(
        title: 'Ceiling Light Repairing',
        location: 'Trivandrum,palayam',
        person: 'Deepesh',
        price: 1000,
        isFav: true,
        timeAgo: '1day ago'),
  ];
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: const [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Search'),
            ),
          ),
          VerticalDivider(color: Colors.black, thickness: 1),
          Icon(
            Icons.filter_alt,
            size: 30,
          ),
        ],
      ),
    );
  }
}
