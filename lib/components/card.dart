import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String text;
  final String teacher;
  final String description;

  const Cards({
    super.key,
    required this.text,
    required this.teacher,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        height: 150,
        child: Card(
          color: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage('assets/sugu.png'), fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 15, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 21),
                          ),
                          Text(
                            description,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    teacher,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
