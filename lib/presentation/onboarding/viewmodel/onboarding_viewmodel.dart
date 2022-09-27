import 'dart:async';
import 'package:coreflutterapp/domain/model/models.dart';
import 'package:coreflutterapp/presentation/base/baseviewmodel.dart';
import 'package:coreflutterapp/presentation/resources/assets_manager.dart';
import 'package:coreflutterapp/presentation/resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel with OnBoardingViewModelInputs ,OnBoardingViewModelOutput{
  late final List<SliderObject> _list ;
  int _currentPageIndex = 0;

  StreamController _streamController = StreamController<SliderViewObject>();
  @override
  void dispose() {
   _streamController.close();
  }

  @override
  void start() {
    _list= _getSliderData();
    // send the slider data to the view using stram
    _postDataToView();
  }
  @override
  int goPrevious(){
    int PreviousIndex = -- _currentPageIndex  ;
    if (PreviousIndex == -1 ){
      PreviousIndex=_list.length -1;
    }
    return PreviousIndex;
  }
  @override
  int goNext(){
    int NextIndex = ++ _currentPageIndex  ;
    if (NextIndex == _list.length ){
      NextIndex= 0;
    }
    return NextIndex;
  }
 
  @override
  void onPageCHanged(int index) {
    //update the index of slider view
    _currentPageIndex=index;
    //update the slider data
    _postDataToView();
  }

  @override
  // the input pool  for sliderView in Onboarding view
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  // the output pipe line for sliderView in Onboarding view
  //stream.map here is the function for changing the data or make any effects to the data
  // in the pipe line while data throwing in it
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream
      .map((SliderViewOpject) => SliderViewOpject);

  //onBoarding private functions --------------------------------------------------
  List<SliderObject> _getSliderData() => [
    SliderObject(AppStrings.onBoardingTitle1,
        AppStrings.onBoardingSubTitle1, ImageAssets.onboardingCarLogo),
    SliderObject(AppStrings.onBoardingTitle2,
        AppStrings.onBoardingSubTitle2, ImageAssets.onboardingHomeSetLogo),
    SliderObject(
        AppStrings.onBoardingTitle3,
        AppStrings.onBoardingSubTitle3,
        ImageAssets.onboardingElecitronicLogo),
    SliderObject(AppStrings.onBoardingTitle4,
        AppStrings.onBoardingSubTitle4, ImageAssets.onboardingHouseLogo),
  ];

  //-----------adding the data to the sink "pool"
void _postDataToView(){
  inputSliderViewObject.add(SliderViewObject(_currentPageIndex, _list.length, _list[_currentPageIndex]));
}

//-----------------------------------------------------------------------------------
}
//this classes is special for onBoarding view  with its own inputs and outputs "not common"
abstract class OnBoardingViewModelInputs{
  void goNext(); //the right arrow button input
  void goPrevious();//the left arrow button input
void onPageCHanged(int index); // this when any action make the page print new page for new values

//- stream controller input
Sink get inputSliderViewObject;
}
abstract class OnBoardingViewModelOutput{

  // stream controller output
  Stream <SliderViewObject> get outputSliderViewObject;
}

