## 0.6.0 [2022-07-05]
- minor fixes
- fixes #1
- BREAKING: renames `onSlide` to `action` in `ActionSlider.standard`

## 0.5.0 [2022-03-17]
- adds `stateChangeCallback`, `actionThreshold` and `actionThresholdType`
- BREAKING: renames `onSlide` to `action`
- BREAKING: renames `SlideCallback` to `Action`

## 0.4.0 [2022-03-17]
- major customizability improvements
- adds `outerBackgroundBuilder` and `outerBackgroundChild` to constructor `ActionSlider.custom`
- adds `crossFadeDuration`, `customBackgroundBuilder`, `customBackgroundBuilderChild`, `customOuterBackgroundBuilder` and `customOuterBackgroundBuilderChild` to constructor `ActionSlider.standard`
- BREAKING: renames `SlidingState.loading` to `SlidingState.compact`
- BREAKING: renames `CrossFade` to `SliderCrossFade`
- BREAKING change for constructor `ActionSlider.standard`:
  - removes `circleRadius` and adds `borderWidth` instead
- BREAKING change for constructor `ActionSlider.custom`:
  - removes `toggleHeight` and adds `toggleMargin` instead

## 0.3.0 [2022-03-12]
- adds `onTap` parameter
- adds jump method to `ActionSliderController`
- minor gesture detection improvements

## 0.2.1 [2022-02-28]
- changes README.md

## 0.2.0 [2022-02-28]
- BREAKING: changes parameters of `ForegroundBuilder` and `BackgroundBuilder`
- adds `SliderBehaviour.stretch`

## 0.1.2 [2022-02-25]
- BREAKING: changes parameters of `SlideCallback`
- optimizes fade animation

## 0.1.1 [2022-02-21]
- fixes README.md

## 0.1.0 [2022-02-21]
- initial release
