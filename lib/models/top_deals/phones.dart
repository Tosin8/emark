
class hTopPhone {
  final String title, description; 
  final List<String> image; 
  final double price;

  hTopPhone({required this.price, required this.title, required this.description, required this.image}); 

}
    List<hTopPhone> htopPhones = [
      hTopPhone(
        // id: 1, 
        image: ['assets/images/phone/umigidi.png'], 
        price: 30.44,
        title: "Umigidi A11 Mist Blue", 
        description: 'This is the best product ever made', 
      ), 

       hTopPhone(
        // id: 2, 
        image: ['assets/images/phone/samsung.png'], 
        price: 24.14,
        title: "Samsung Galaxy A04 Black", 
        description: 'This is the best product ever made', 
      ), 
       hTopPhone(
        // id: 3, 
        image: ['assets/images/phone/spark10c.png'], 
        price: 30.44,
        title: "Tecno Spark 10C Blue", 
        description: 'This is the best product ever made', 
      ), 
       hTopPhone(
        // id: 4, 
        image: ['assets/images/phone/redmia2.png'], 
        price: 14.24,
        title: "Redmi A2 Light Blue", 
        description: 'This is the best product ever made', 
      ), 
      

    ];

       class lTopPhone {
        final String title, description;
        final List<String> image;
        final double price;

  lTopPhone({required this.title, required this.description, required this.image, required this.price});
       }

       List<lTopPhone> ltopPhones = [
        

        lTopPhone(
        // id: 5, 
        image: ['assets/images/phone/redmi12.png'], 
        price: 30.44,
        title: "Redmi 12 Midnight Black", 
        description: 'This is the best product ever made', 
      ), 
       lTopPhone(
        // id: 6, 
        image: ['assets/images/phone/spark10c_black.png'], 
        price: 30.44,
        title: "Tecno Spark 10C Black", 
        description: 'This is the best product ever made', 
      ), 
       lTopPhone(
        // id: 7, 
        image: ['assets/images/phone/hot30i.png'], 
        price: 30.44,
        title: "Infinix Hot 30i", 
        description: 'This is the best product ever made', 
      ), 
       lTopPhone(
        // id: 8, 
        image: ['assets/images/phone/redmia2dark.png'], 
        price: 30.44,
        title: "Redmi A2 Dark", 
        description: 'This is the best product ever made', 
      ), 
       ];