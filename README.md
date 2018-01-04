
# react-native-carousel-wrapper
This library is React Native wrapper of popular Native carousel library [iCarousel](https://github.com/PhilJay/MPAndroidChart)  for ios and [CarouselLayoutManager](https://github.com/Azoft/CarouselLayoutManager), [Coverflow](https://github.com/crosswall/Android-Coverflow) for Android.

Android is coming soon.

## Getting started

`$ npm install react-native-carousel-wrapper --save`

### Mostly automatic installation

`$ react-native link react-native-carousel-wrapper`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-carousel-wrapper` and add `RNCarouselWrapper.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCarouselWrapper.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNCarouselWrapperPackage;` to the imports at the top of the file
  - Add `new RNCarouselWrapperPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-carousel-wrapper'
  	project(':react-native-carousel-wrapper').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-carousel-wrapper/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-carousel-wrapper')
  	```

## Usage
### Carousel Types
#### Property Type

iCarousel supports the following built-in display types:

- iCarouselTypeLinear
- iCarouselTypeRotary
- iCarouselTypeInvertedRotary
- iCarouselTypeCylinder
- iCarouselTypeInvertedCylinder
- iCarouselTypeWheel
- iCarouselTypeInvertedWheel
- iCarouselTypeCoverFlow
- iCarouselTypeCoverFlow2
- iCarouselTypeTimeMachine
- iCarouselTypeInvertedTimeMachine

example: 
```javascript
<RNCarouselWrapper type={RNCarouselWrapper.Type.iCarouselTypeRotary}>
</RNCarouselWrapper>  
```

```javascript
import RNCarouselWrapper from 'react-native-carousel-wrapper';

// TODO: What to do with the module?

export default class App extends Component<{}> {
  render() {
    return (
      <RNCarouselWrapper style={styles.container}  type={RNCarouselWrapper.Type.iCarouselTypeRotary}>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>1</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>2</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>3</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>4</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>5</Text></View>
      </RNCarouselWrapper>
    );
  }
}

```
  