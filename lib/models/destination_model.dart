import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String city;
  final String nation;
  final String imageUrl;
  final String about;
  final String interestOne;
  final String interestTwo;
  final String interestThree;
  final String interestFour;
  final String photosOne;
  final String photosTwo;
  final String photosThree;
  final double rating;
  final int price;

  DestinationModel({
    required this.id,
    this.city = '',
    this.nation = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
    this.about = '',
    this.interestOne = '',
    this.interestTwo = '',
    this.interestThree = '',
    this.interestFour = '',
    this.photosOne = '',
    this.photosTwo = '',
    this.photosThree = '',
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        city: json['city'],
        nation: json['nation'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        price: json['price'],
        about: json['about'],
        interestOne: json['interestOne'],
        interestTwo: json['interestTwo'],
        interestThree: json['interestThree'],
        interestFour: json['interestFour'],
        photosOne: json['photosOne'],
        photosTwo: json['photosTwo'],
        photosThree: json['photosThree'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'city': city,
        'nation': nation,
        'imageUrl': imageUrl,
        'rating': rating,
        'price': price,
        // 'about': about,
        // 'interestOne': interestOne,
        // 'interestTwo': interestTwo,
        // 'interestThree': interestThree,
        // 'interestFour': interestFour,
        // 'photosOne': photosOne,
        // 'photosTwo': photosTwo,
        // 'photosThree': photosThree,
      };

  @override
  List<Object?> get props => [
        id,
        city,
        nation,
        imageUrl,
        rating,
        price,
        about,
        interestOne,
        interestTwo,
        interestThree,
        interestFour,
        photosOne,
        photosTwo,
        photosThree,
      ];
}
