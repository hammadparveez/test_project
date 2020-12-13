import 'package:flutter/material.dart';
import 'package:test_app/responsive_setup/responsive.dart';
import 'package:test_app/styles/text_style.dart';
import 'package:test_app/util/constants.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  TabController _tabController;
  TextEditingController _textEditingController;
  int _currentTabIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    _textEditingController = TextEditingController();
    _tabController.addListener(() {
      print("Listener Is being Called ${_tabController.index}");
      setState(() {
        _currentTabIndex = _tabController.index;
        print("Current Index ${_currentTabIndex}");
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: StyleText.textStyle4Black54,
        iconSize: Responsive.widgetScaleFactor * 4,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded),
              label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation), label: "Navigator"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "People"),
        ],
      ),
      appBar: AppBar(
        //leading: D,
        centerTitle: true,
        title: Text("Bolder", style: StyleText.textStyle1White),
        actions: [
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: Responsive.widgetScaleFactor * 8,
                  color: Colors.deepPurple,
                  child: TextFormField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                        hintText: "Type to Search", labelText: "Search"),
                  ),
                ),
              )
            ],
          ),
          DefaultTabController(
            initialIndex: _currentTabIndex,
            length: 2,
            child: TabBar(
              onTap: (index) {
                _tabController.index = index;
              },
              labelColor: Colors.black87,
              tabs: [
                Tab(
                  child: RichText(
                    text: TextSpan(
                      style: StyleText.textStyle3Black,
                      children: [
                        TextSpan(text: "People"),
                        TextSpan(text: "(788)")
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: RichText(
                    text: TextSpan(
                      style: StyleText.textStyle3Black,
                      children: [
                        TextSpan(text: "Post"),
                        TextSpan(text: "(351)")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Scrollbar(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (ctx, index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.black45),
                                  right: BorderSide(
                                      width: 0.5, color: Colors.black45))),
                          padding: EdgeInsets.symmetric(
                              horizontal: DEFAULT_PADDING * 2,
                              vertical: DEFAULT_PADDING),
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset("assets/images/avatar.webp")),
                              Text("Grace Mason",
                                  style: StyleText.textStyle3Black),
                              Text("Medical Center",
                                  style: StyleText.textStyle4Black54),
                              MaterialButton(
                                onPressed: () {},
                                height: Responsive.widgetScaleFactor * 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                color: Colors.deepPurpleAccent,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                child: Text("Follow",
                                    style: StyleText.textStyle4White),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Text("Nullify ${_tabController.index}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
