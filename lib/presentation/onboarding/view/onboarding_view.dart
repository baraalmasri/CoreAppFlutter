import 'package:coreflutterapp/presentation/onboarding/viewmodel/onboarding_viewmodel.dart';
import 'package:coreflutterapp/presentation/resources/assets_manager.dart';
import 'package:coreflutterapp/presentation/resources/color_manager.dart';
import 'package:coreflutterapp/presentation/resources/routes_manager.dart';
import 'package:coreflutterapp/presentation/resources/strings_manager.dart';
import 'package:coreflutterapp/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView>
    with SingleTickerProviderStateMixin {

  final PageController _pageController = PageController();
OnBoardingViewModel _viewModel = OnBoardingViewModel();


//a private function  to starting the model
  //the name not important `bind` means baglandir
 _bind (){
  _viewModel.start();
}
@override
void initState(){
   _bind();
   super.initState();

}
  @override
  Widget build(BuildContext context) {
    return _getContentWidget();
  }
  Widget _getContentWidget(){
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.talaColor,
            statusBarBrightness: Brightness.light),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(_list[index]);
          }),
      bottomSheet: Container(
        color: ColorManager.white,

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                child: Text(
                  AppStrings.skip,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            _getBottomSheetWidget()
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //left arrow as svg and gesture detector
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            onTap: ()=> _pageController.animateToPage(_getPreviousIndex(), duration: Duration(milliseconds: 300), curve: Curves.bounceOut),
            child: SizedBox(
              width: AppSize.s20,
              height: AppSize.s20,
              child: SvgPicture.asset(ImageAssets.leftArrowLogo),

            ),
          ),
        ),

        Row(children: [
          for (int i =0;i<_list.length;i++)
            Padding(padding: const EdgeInsets.all(AppPadding.p14),
            child: _getProperCircle(i),)
        ],),

        //right  arrow as svg and gesture detector
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            onTap: ()=> _pageController.animateToPage(_getNextIndex(), duration: Duration(milliseconds: 300), curve: Curves.bounceOut),
            child: SizedBox(
              width: AppSize.s20,
              height: AppSize.s20,
              child: SvgPicture.asset(ImageAssets.rightArrowLogo),
            ),
          ),
        )
      ],
    );
  }

  Widget _getProperCircle(int index) {
    if (index == _currentPageIndex) {
      return SizedBox(width: AppSize.s12 , height: AppSize.s20,child:SvgPicture.asset(ImageAssets.dotCircleLogo));
    } else {
      return SizedBox(width: AppSize.s12 , height: AppSize.s20,child:SvgPicture.asset(ImageAssets.circleDotLogo));
    }
  }
  //closing the model stream data ,for avoiding crashes after showing all data
  @override
  void dispose(){
    _viewModel.dispose();
    super.dispose();
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s20),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Text(
              _sliderObject.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Text(
              _sliderObject.subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: AppSize.s20),
          SizedBox(
            height: 250,
              width: 250,
              child: SvgPicture.asset(_sliderObject.image)),
        ],
      ),
    );
  }
}
