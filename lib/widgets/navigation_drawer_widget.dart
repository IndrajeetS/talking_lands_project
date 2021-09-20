import 'package:flutter/material.dart';
import 'package:talking_lands/global/globals.dart';
import 'package:talking_lands/views/homepage_view.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  var _chosenValue;

  var _countriesList = ['Australia', 'China', 'India', 'Uganda', 'UAE', 'US'];
  var _stateList = [
    'Andhra Pradesh',
    'Assam',
    'Bihar',
    'Chandigarh',
    'Chhattisgarh',
    'Delhi',
    'Goa',
    'Gujarat',
    'Haryana'
  ];

  @override
  Widget build(BuildContext context) {
    final name = '+91-8549949999';
    final email = 'support@gims.co';
    final urlImage =
        'https://talkinglands.com/frontend_assets/images/talkinglandsred-mini.png';

    return Drawer(
      child: Material(
        color: darkColor,
        child: ListView(
          children: <Widget>[
            buildHeader(urlImage: urlImage, name: name, email: email),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, bottom: 20, top: 0),
              child: Divider(color: Colors.white70),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 35,
                  color: orangeColor,
                ),
                title: Text(
                  "Location Intelligence",
                  style: TextStyle(color: orangeColor, fontSize: 18),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Access our diverse map library with deep insights relevant to your site",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildDropdownButton(_countriesList, "Select Country"),
                  buildDropdownButton(_stateList, "Select State"),
                  buildDropdownButton(_countriesList, "Select Category"),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 20),
                  buildSearchField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDropdownButton(List<String> listOfData, String hint) {
    final color = orangeColor;
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        border: Border.all(color: color),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          value: _chosenValue,
          items: listOfData.map((String dropDownItem) {
            return DropdownMenuItem(
              value: dropDownItem,
              child: Text(dropDownItem),
            );
          }).toList(),
          hint: Text(hint),
          onChanged: (value) {
            setState(() {
              _chosenValue = value;
            });
          },
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
  }) =>
      Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(urlImage),
              backgroundColor: darkColor,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, color: orangeColor),
                ),
                Text(
                  email,
                  style: TextStyle(fontSize: 14, color: orangeColor),
                ),
              ],
            ),
          ],
        ),
      );

  Widget buildSearchField() {
    final color = orangeColor;
    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = orangeColor;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Homepage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Homepage(),
        ));
        break;
    }
  }
}
