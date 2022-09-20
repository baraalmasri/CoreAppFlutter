import 'package:coreflutterapp/presentation/base/baseviewmodel.dart';

class OnBoardingViewModel extends BaseViewModel with OnBoardingViewModelInputs ,OnBoardingViewModelOutput{
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageCHanged(int index) {
    // TODO: implement onPageCHanged
  }

}
//this classes is special for onBoarding view  with its own inputs and outputs "not common"
abstract class OnBoardingViewModelInputs{
  void goNext(); //the right arrow button input
  void goPrevious();//the left arrow button input
void onPageCHanged(int index); // this when any action make the page print new page for new values
}
abstract class OnBoardingViewModelOutput{

}