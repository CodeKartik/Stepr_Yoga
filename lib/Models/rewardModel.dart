class Reward {
  final String rewardImage;
  final String rewardName;
  final String rewardCode;

  Reward(
      {required this.rewardImage,
      required this.rewardName,
      required this.rewardCode});
}

List<Reward> rewards = [
  Reward(
      rewardImage: 'asset/coupan_images/amazon.png',
      rewardName: "70% off on health deals",
      rewardCode: "Steper70"),
  Reward(
      rewardImage: 'asset/coupan_images/firstcry.png',
      rewardName: "40% off on kids deals",
      rewardCode: "Steper40"),
  Reward(
      rewardImage: 'asset/coupan_images/flipkart.png',
      rewardName: "75% off on health deals",
      rewardCode: "Steper75"),
  Reward(
      rewardImage: 'asset/coupan_images/mamaearth.png',
      rewardName: "30% off on ayurvedic deals",
      rewardCode: "SteperMama30"),
  Reward(
      rewardImage: 'asset/coupan_images/myntra.png',
      rewardName: "80% off on yoga wear",
      rewardCode: "SteperFashion80"),
  Reward(
      rewardImage: 'asset/coupan_images/zomato.png',
      rewardName: "Buy 1 get 1 free.",
      rewardCode: "HungrySteper"),
];
