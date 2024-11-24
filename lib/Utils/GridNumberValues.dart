import 'package:flutter/material.dart';

class GridNumberValues {
  static Map<dynamic, List> vedicValues = {
    0: [[], []],
    4: [
      ['Lucky', 'Money', 'Discipline', 'Self-Worth', 'Power'],
      [
        'Element : Soft wood',
        'Planet; Rahu',
        'Merit: Wealth',
        'Direction: South-East'
      ]
    ],
    9: [
      ['Prosperity', 'Humanity', 'Social Life', 'Fame', 'Reputation'],
      ['Element : Fire', 'Merit : Fmae', 'Direction : South']
    ],
    2: [
      [
        'Marriage',
        'Love',
        'Relationship',
        'Sensitivity',
        'Intuition',
        'Mother'
      ],
      [
        'Element : Earth',
        'Planet : Moon',
        'Merit : Marriage and Relation',
        'Direction : South-West'
      ]
    ],
    3: [
      ['Healthy', 'Planning', 'Imagination', 'Family', 'Wisdom', 'Past'],
      [
        'Element : Hard wood',
        'Planet : Jupiter',
        'Merit : Healthy, Family',
        'Direction : East'
      ]
    ],
    5: [
      ['Balance', 'Stability', 'Fortune', 'Mental health', 'Freedom'],
      [
        'Element : Earth',
        'Planet : Mercury',
        'Merit : Work Energy',
        'Direction : Center'
      ]
    ],
    7: [
      ['Children', 'Creativity', 'Disappointment', 'Entertainment', 'Future'],
      [
        'Element : Soft metal',
        'Planet : Ketu',
        'Merit : Children',
        'Direction : West'
      ]
    ],
    8: [
      [
        'Knowledge',
        'Motivation',
        'Intuition',
        'Organised',
        'Spirituality',
        'Study'
      ],
      [
        'Element : Earth',
        'Planet : Saturn',
        'Merit : Knowledge',
        'Direction : North-East'
      ]
    ],
    1: [
      ['Career', 'Success', 'Job', 'Bussiness', 'Communication'],
      ['Element : Water', 'Planet : Sun', 'Merit : Career', 'Direction : North']
    ],
    6: [
      ['Friends', 'Travelling', 'New Beginnings', 'Spirituality'],
      [
        'Element : Hard metal',
        'Planet : Venus',
        'Merit : Friends',
        'Direction : North-West'
      ]
    ],
  };

  static Map<int, List> vedicColors = {
    0: [Colors.blueAccent, Colors.black],
    1: [Colors.black, Colors.white],
    2: [Colors.pinkAccent, Colors.black],
    3: [Colors.greenAccent, Colors.black],
    4: [Colors.purpleAccent, Colors.white],
    5: [Colors.yellowAccent, Colors.black],
    6: [Colors.white, Colors.black],
    7: [Colors.grey, Colors.black],
    8: [Colors.blueAccent, Colors.white],
    9: [Colors.red, Colors.white],
  };

  static List<dynamic> getVadicValue1(int number) {
    return vedicValues[number]![0];
  }

  static List<dynamic> getVadicValue2(int number) {
    return vedicValues[number]![1];
  }

  static Color getVadicBgColor(int number) {
    return vedicColors[number]![0];
  }

  static Color getVadicTextColor(int number) {
    return vedicColors[number]![1];
  }
}
