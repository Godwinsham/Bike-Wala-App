

class Repair {
  final int id;
  final String title,image,description,offers,details,submitted;
  Repair({this.id,  this.title, this.offers, this.image, this.description, this.details,this.submitted});
}

// list of products

List<Repair> repairs = [
 Repair(
    id: 1,
    title: "Custom",
    image: "assets/images/Gen.png",
    offers:('Custom')
  ),
Repair(
    id: 4,
    title: "General",
    image: "assets/images/Custom.png",
    offers:('General')
   
  ),
Repair(
    id: 9,
    title: "Washing",
    image: "assets/images/Wash.png",
    offers: ('Washing'),
   
    )
 ];
