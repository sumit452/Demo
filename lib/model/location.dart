import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imgpath;
  final List<LocationFact> facts;
  Location(this.id, this.name, this.imgpath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Keshab', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('About', 'hlo hlo hlo.'),
        LocationFact('Contact', '980.....'),
      ]),
      Location(2, 'Sabiran', 'assets/images/bitcoin.jpg', [
        LocationFact('About', 'hlo hlo hlo hloh lho '),
        LocationFact('Number', '98421.....'),
      ]),
      Location(3, 'Sandes', 'assets/images/litecoin.jpg', [
        LocationFact('About',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, 'Sabiran', 'assets/images/bitcoin.jpg', [
        LocationFact('About',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports'),
        LocationFact('Number', '98421.....'),
      ]),
    ];
  }

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
