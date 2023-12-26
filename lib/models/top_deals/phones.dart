
class hTopPhones {
  final String title, description; 
  final List<String> image; 
  final double price;

  hTopPhones({required this.price, required this.title, required this.description, required this.image}); 

}
    List<hTopPhones> htopPhones = [
      hTopPhones(
        // id: 1, 
        image: ['assets/images/phone/umigidi.png'], 
        price: 30.44,
        title: "Umigidi A11 Mist Blue", 
        description: 'This is the best product ever made', 
      ), 

       hTopPhones(
        // id: 2, 
        image: ['assets/images/appliance/samsung.png'], 
        price: 24.14,
        title: "Samsung Galaxy A04 Black", 
        description: 'This is the best product ever made', 
      ), 
       hTopPhones(
        // id: 3, 
        image: ['assets/images/appliance/spark10c.png'], 
        price: 30.44,
        title: "Tecno Spark 10C Blue", 
        description: 'This is the best product ever made', 
      ), 
       hTopPhones(
        // id: 4, 
        image: ['assets/images/appliance/redmia2.png'], 
        price: 14.24,
        title: "Redmi A2 Light Blue", 
        description: 'This is the best product ever made', 
      ), 
      

    ];

       class lTopPhones {
        final String title, description;
        final List<String> image;
        final double price;

  lTopPhones({required this.title, required this.description, required this.image, required this.price});
       }

       List<lTopPhones> lTopPhoness = [
        

        lTopPhones(
        // id: 5, 
        image: ['assets/images/appliance/redmi12.png'], 
        price: 30.44,
        title: "Redmi 12 Midnight Black", 
        description: 'This is the best product ever made', 
      ), 
       lTopPhones(
        // id: 6, 
        image: ['assets/images/appliance/spark10c_black.png'], 
        price: 30.44,
        title: "Tecno Spark 10C Black", 
        description: 'This is the best product ever made', 
      ), 
       lTopPhones(
        // id: 7, 
        image: ['assets/images/appliance/hot30i.png'], 
        price: 30.44,
        title: "Infinix Hot 30i", 
        description: 'This is the best product ever made', 
      ), 
       lTopPhones(
        // id: 8, 
        image: ['assets/images/appliance/redmia2dark.png'], 
        price: 30.44,
        title: "Redmi A2 Dark", 
        description: 'This is the best product ever made', 
      ), 
       ];