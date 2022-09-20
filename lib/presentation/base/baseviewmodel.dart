//the common view model for all other models functions or variables
abstract class BaseViewModel extends BaseViewModelInput with BaseViewModelOutput{

}


abstract class BaseViewModelInput{
  void start();
  void dispose();
}

abstract class BaseViewModelOutput {}