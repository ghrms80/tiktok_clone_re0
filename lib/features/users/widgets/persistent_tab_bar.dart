import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersistentTabBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      child: const TabBar(
        tabs: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.grid_4x4_outlined),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FaIcon(
              FontAwesomeIcons.heart,
            ),
          ),
        ],
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.black,
        labelColor: Colors.black,
        labelPadding: EdgeInsets.symmetric(
          vertical: 20,
          // horizontal: 10,
        ),
      ),
    );
  }

  @override
  double get maxExtent => 68;

  @override
  double get minExtent => 68;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
