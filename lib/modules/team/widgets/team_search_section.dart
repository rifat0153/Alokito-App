import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../team_controller.dart';

class TeamSearchSection extends StatelessWidget {
  const TeamSearchSection({Key? key, required this.controller})
      : super(key: key);

  final TeamController controller;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(5.r)));
    return Container(
      color: Colors.grey,
      child: Stack(
        children: [
          //TODO: ADD IMAGE HERE
          const Placeholder(
            child: Center(
              child: Text('ADD IMAGE HERE'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(15.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: controller.searchTextController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffBFBFBF),
                        contentPadding: const EdgeInsets.all(10),
                        hintText: 'Search by country or team name',
                        border: border,
                        errorBorder: border,
                        disabledBorder: border,
                        focusedBorder: border,
                        focusedErrorBorder: border,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            controller.searchTextController.clear();
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff0D9BAD),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10))),
                    child: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
