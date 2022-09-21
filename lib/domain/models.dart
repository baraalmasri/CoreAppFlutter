//  Slider  OnBoarding models
class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class SliderViewOpject {
  SliderObject sliderObject;
  int nunmberOfSlides;
  int currentIndex;

  SliderViewOpject(this.currentIndex, this.nunmberOfSlides, this.sliderObject);
}
//---------------------------------------------------------------------------
