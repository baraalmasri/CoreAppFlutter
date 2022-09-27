//  Slider  OnBoarding models
class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class SliderViewObject {
  SliderObject sliderObject;
  int nunmberOfSlides;
  int currentIndex;

  SliderViewObject(this.currentIndex, this.nunmberOfSlides, this.sliderObject);
}

//---------------------------------------------------------------------------
// login models
class Customer {
  String id;
  String name;
  int numOfNotifications;

  Customer(this.id, this.name, this.numOfNotifications);
}

class Contects {
  String phone;
  String email;
  String link;

  Contects(this.phone, this.email, this.link);
}

class Authentication {
  Customer customer;
  Contects contects;

  Authentication(this.customer, this.contects);
}
//---------------------------------------------------------------------------