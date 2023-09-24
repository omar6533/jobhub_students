import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Information "),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text("Student’s Information",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Name",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Full name in Arabic",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Full name in english",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Education",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Major",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("GPA",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Nationality",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Nationality",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("National/Iqama number",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Contact info",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("PSU Email",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Professional Email",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Mobile number",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Parent mobile number ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Extra mobile number ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 327,
                                height: 0,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 22,
                            height: 11.333333015441895,
                          ),
                          Container(
                            width: 1.328037977218628,
                            height: 4,
                          ),
                          Container(
                            width: 18,
                            height: 7.333333492279053,
                          )
                        ],
                      ),
                      Container(
                        width: 15.27237606048584,
                        height: 10.965572357177734,
                      ),
                      Container(
                        width: 17,
                        height: 10.666666984558105,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Text("9:41",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                          width: 134,
                          height: 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black))
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("Q",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("W",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("E",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("R",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("T",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("Y",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("U",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("I",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("O",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("P",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("A",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("S",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("D",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("F",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("G",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("H",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("J",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("K",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("L",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Container(
                            width: 19,
                            height: 16.299999237060547,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [],
                              ),
                              Text("Z",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [],
                              ),
                              Text("X",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [],
                              ),
                              Text("C",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [],
                              ),
                              Text("V",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [],
                              ),
                              Text("B",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [],
                              ),
                              Text("N",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [],
                              ),
                              Text("M",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Container(
                            width: 23,
                            height: 17,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("123",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("space",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [],
                          ),
                          Text("return",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 27,
                        height: 27,
                      ),
                      Container(
                        width: 15,
                        height: 25.00015640258789,
                      )
                    ],
                  )
                ],
              ),
              Container(
                  width: 134,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
