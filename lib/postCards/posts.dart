import 'package:destinify/postCards/cardData.dart';

class PostData {
  final List<cardData> posts = [
    cardData(
        image: [
          'assets/munnar.jpg',
          'assets/munnar2.jpg',
          'assets/munnar1.jpeg'
        ],
        type: 'post',
        username: 'Faizy Faz',
        location: 'Munnar',
        description:
            'Very calm and peaceful place in calicut.  Android introduced a concept called intents to invoke components ',
        time: '12:30 PM'),
    cardData(
      image: ['assets/adyanpara.jpg'],
      type: 'guide',
      username: 'Lakshmi',
      title: 'Nilambur One Day trip',
      description: '5 Destinations',
    ),
   
    cardData(
        image: [
          'assets/indiagate.jpg',
          'assets/lotustemple.jpg',
          'assets/redfort.jpg'
        ],
        type: 'post',
        username: 'George',
        location: 'Delhi',
        description:
            'Very calm and peaceful place in calicut.  Android introduced a concept called intents to invoke components ',
        time: '06:00 PM'),

    cardData(
        image: ['assets/wayanad.jpg'],
        type: 'guide',
        username: 'Arun',
        title: 'Rice Bowl of Kerala',
        description: '5 Destinations'),
    cardData(
      image: ['assets/ooty.jpg'],
      type: 'trip',
      username: 'Faizy Faz',
      location: 'Ooty',
      description: 'Queen of Hill Stations',
    )
  ];
}
