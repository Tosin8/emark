
class hTopAppliance {
  final String title, description; 
  final List<String> image; 
  final double price;

  hTopAppliance({required this.price, required this.title, required this.description, required this.image}); 

}
    List<hTopAppliance> htopAppliances = [
      hTopAppliance(
        // id: 1, 
        image: ['assets/images/appliance/air_condition.png'], 
        price: 30.44,
        title: "Aeon 1Hp Split Air Condition", 
        description: 'This is the best product ever made', 
      ), 

       hTopAppliance(
        // id: 2, 
        image: ['assets/images/appliance/blender.png'], 
        price: 24.14,
        title: "Binaton 1.5 Litres Blender", 
        description: 'This is the best product ever made', 
      ), 
       hTopAppliance(
        // id: 3, 
        image: ['assets/images/appliance/dry_iron.png'], 
        price: 30.44,
        title: "Binaton Smoother Dry Iron", 
        description: 'This is the best product ever made', 
      ), 
       hTopAppliance(
        // id: 4, 
        image: ['assets/images/appliance/humidifier.png'], 
        price: 14.24,
        title: "21 double spray humidifier", 
        description: 'This is the best product ever made', 
      ), 
      

    ];

       class lTopAppliance {
        final String title, description;
        final List<String> image;
        final double price;

  lTopAppliance({required this.title, required this.description, required this.image, required this.price});
       }

       List<lTopAppliance> ltopAppliances = [
        

        lTopAppliance(
        // id: 5, 
        image: ['assets/images/appliance/microwave.png'], 
        price: 30.44,
        title: "Hisense 20 Litres Microwave", 
        description: 'This is the best product ever made', 
      ), 
       lTopAppliance(
        // id: 6, 
        image: ['assets/images/appliance/refrigerator.png'], 
        price: 30.44,
        title: "Midea 43 Litres Refrigerator", 
        description: 'This is the best product ever made', 
      ), 
       lTopAppliance(
        // id: 7, 
        image: ['assets/images/appliance/sandwich.png'], 
        price: 30.44,
        title: "2 Slice Sandwich Maker", 
        description: 'This is the best product ever made', 
      ), 
       lTopAppliance(
        // id: 8, 
        image: ['assets/images/appliance/washing_machine.png'], 
        price: 30.44,
        title: "Twin Tub Washing Machine", 
        description: 'This is the best product ever made', 
      ), 
       ];