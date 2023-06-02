import 'package:flutter/cupertino.dart';

import '../../../common/common_libs.dart';
import '../../../common/common_widgets/CustomTextFields.dart';

class SearchBarHome extends StatefulWidget {
  const SearchBarHome({Key? key}) : super(key: key);

  @override
  State<SearchBarHome> createState() => _SearchBarHomeState();
}

class _SearchBarHomeState extends State<SearchBarHome> {

  TextEditingController _searchCtr = TextEditingController();

  @override
  void dispose() {
    _searchCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldNew(
        controller: _searchCtr,
        onChanged: (val) {},
        onFieldSubmitted: (val) {},
        labelText: '',
        hintText: 'Search your favorite course ...',
        obscure: false, iconData: Icons.search,

    );
  }
}
