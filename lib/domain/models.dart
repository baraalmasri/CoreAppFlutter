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
