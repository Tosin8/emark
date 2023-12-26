
class TopAppliance {
  final String title, description; 
  final List<String> image; 
  final double price;

  TopAppliance({required this.price, required this.title, required this.description, required this.image}); 

}



    List<TopAppliance> topAppliances = [
      TopAppliance(
        // id: 1, 
        image: ['assets/images/appliance/air_condition.png'], 
        price: 30.44,
        title: "Aeon 1Hp Split Air Condition", 
        description: 'This is the best product ever made', 
      )
    ];
       