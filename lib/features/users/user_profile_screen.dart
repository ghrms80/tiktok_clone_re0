import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktoc_clne_re0/constant/gaps.dart';
import 'package:tiktoc_clne_re0/features/settings/settings_screen.dart';
import 'package:tiktoc_clne_re0/features/users/widgets/persistent_tab_bar.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  void _onGearPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text('니꼬'),
                centerTitle: true,
                actions: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.gear),
                    onPressed: _onGearPressed,
                  )
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/3871193",
                      ),
                      child: Text('니꼬'),
                    ),
                    Gaps.v20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '@니꼬',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Gaps.h5,
                        FaIcon(
                          FontAwesomeIcons.solidCircleCheck,
                          size: 16,
                          color: Colors.blue.shade500,
                        )
                      ],
                    ),
                    Gaps.v20,
                    SizedBox(
                      height: 44,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const Text(
                                "97",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Gaps.v3,
                              Text(
                                "Following",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: 32,
                            thickness: 1,
                            color: Colors.grey.shade400,
                            indent: 10,
                            endIndent: 10,
                          ),
                          Column(
                            children: [
                              const Text(
                                "10M",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Gaps.v3,
                              Text(
                                "Follower",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: 32,
                            thickness: 1,
                            color: Colors.grey.shade400,
                            indent: 10,
                            endIndent: 10,
                          ),
                          Column(
                            children: [
                              const Text(
                                "194.3M",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Gaps.v3,
                              Text(
                                "Likes",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Gaps.v14,
                    FractionallySizedBox(
                      widthFactor: 0.33,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Gaps.v14,
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        "All highlights and where to watch live matches on FIFA+ I wonder how it would look..",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Gaps.v14,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.link,
                          size: 12,
                        ),
                        Gaps.h4,
                        Text(
                          "https://nomadcoders.co",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v20,
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTabBar(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.zero,
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: 9 / 14,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 9 / 14,
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/placeholder.jpg",
                        image:
                            "https://images.unsplash.com/photo-1673844969019-c99b0c933e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2080&q=80",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text('Page Two'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
