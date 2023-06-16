class PosterModel {
  final String img;
  final String title;
  final String eunra;
  final String discription;
  final int price;

  final List<String> actorList;
  PosterModel({
    required this.discription,
    required this.eunra,
    required this.img,
    required this.title,
    required this.price,
    required this.actorList,
  });

  static List<PosterModel> posterList = [
    PosterModel(
        price: 20,
        discription:
            'Set in 1981, it follows Arthur Fleck, a failed clown and aspiring stand-up comic whose descent into mental illness and nihilism inspires a violent countercultural revolution against the wealthy in a decaying Gotham City.',
        eunra: 'Psyco thriller',
        img: 'assets/img/1.jpeg',
        title: 'Joker',
        actorList: [
          'assets/actorImg/p1.jpeg',
          'assets/actorImg/p2.jpeg',
          'assets/actorImg/p3.jpeg',
          'assets/actorImg/p4.jpeg',
          'assets/actorImg/p5.jpeg',
        ]),
    PosterModel(
        price: 15,
        discription:
            'Wick continues his struggle against the High Table, which is the ultimate authority in the criminal world.',
        eunra: 'Action-Crime',
        img: 'assets/img/2.jpeg',
        title: 'John Wick 4',
        actorList: [
          'assets/actorImg/j1.jpeg',
          'assets/actorImg/j2.jpeg',
          'assets/actorImg/j3.jpeg',
          'assets/actorImg/j4.jpeg',
          'assets/actorImg/j5.jpeg',
          'assets/actorImg/j6.jpeg',
        ]),
    PosterModel(
        price: 12,
        discription:
            'It follows a couple and their baby travelling in remote Australia amid a deadly disease outbreak.',
        eunra: 'Action-Thriller',
        img: 'assets/img/3.jpeg',
        title: 'Cargo',
        actorList: [
          'assets/actorImg/c1.jpeg',
          'assets/actorImg/c2.jpeg',
        ]),
    PosterModel(
        price: 08,
        discription:
            'Set in the future, Harp (Damson Idris), a drone pilot, is sent into a deadly militarized zone where he finds himself working for Leo ',
        eunra: 'Scfi-Action',
        img: 'assets/img/4a.jpeg',
        title: 'OutSide Wire',
        actorList: [
          'assets/actorImg/o1.png',
          'assets/actorImg/o2.png',
          'assets/actorImg/o3.png',
        ]),
    PosterModel(
        price: 10,
        discription:
            'A man desperate struggle to survie Jung-su, an ordinary car dealer, is on his way home with a birthday cake for his daughter.',
        eunra: 'Survival',
        img: 'assets/img/5.jpeg',
        title: 'Tunnel',
        actorList: [
          'assets/actorImg/t1.jpeg',
          'assets/actorImg/t2.jpeg',
          'assets/actorImg/t3.jpeg',
          'assets/actorImg/t4.jpeg',
        ]),
  ];
}
