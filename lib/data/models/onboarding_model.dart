class OnBoardingModel {
  final String? imgUrl;
  final String? desc;
  final String? subDesc;

  OnBoardingModel({
    this.imgUrl,
    this.desc,
    this.subDesc,
  });
}

List<OnBoardingModel> onBoardinglist = [
  OnBoardingModel(
    desc:
        'Finding enough customers for your store sucks, and you have a business to run.',
    subDesc: 'We\'re here to help',
    imgUrl: 'assets/call.png',
  ),
  OnBoardingModel(
    desc: 'Use the business portal to track your orderflow and total earnings.',
    subDesc: 'Let us focus on getting you newand loyal customers.',
    imgUrl: 'assets/plan.png',
  ),
  OnBoardingModel(
    desc: 'Refer other stores to avail cashbacks yourself.',
    subDesc: 'Customers don\'t gelto have all the fun.',
    imgUrl: 'assets/Task.png',
  ),
  OnBoardingModel(
    desc:
        'You just took the first step to make your store an a worldwide brand.',
    subDesc: 'Welcome to Tharasis.',
    imgUrl: 'assets/Globe.png',
  ),
];
