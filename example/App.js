/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';
import RNCarouselWrapper from 'react-native-carousel-wrapper';

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

export default class App extends Component<{}> {
  render() {
    return (
      <View style={styles.container}>
      <RNCarouselWrapper style={styles.container}  type={RNCarouselWrapper.Type.iCarouselTypeRotary}>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>1</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>2</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>3</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>4</Text></View>
        <View style={{width: 100, height: 100, backgroundColor: 'blue', margin: 5}}><Text>5</Text></View>
      </RNCarouselWrapper>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
