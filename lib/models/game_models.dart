class GameModel{
  GameModel({
    this.target,
    this.current= sliderStart,
    this.totalScore = scoreStart,
    this.round = roundStart
});
  static const sliderStart = 50;
  static const roundStart = 1;
  static const scoreStart = 0;

  int? target;
  int? current;
  int? totalScore;
  int? round;

}