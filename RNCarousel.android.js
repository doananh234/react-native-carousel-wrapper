import React from 'react';
import { View } from 'react-native';

import PropTypes from 'prop-types';
import createClass from 'create-react-class';
const Carousel = createClass({
  propTypes: {
    wrap: PropTypes.bool,
    items: PropTypes.array,
    vertical: PropTypes.bool,
    bounces: PropTypes.bool,
    scrollEnabled: PropTypes.bool,
    type: PropTypes.number,
    perspective: PropTypes.number,
    decelerationRate: PropTypes.number,
    scrollSpeed: PropTypes.number,
    bounceDistance: PropTypes.number,
    onPressItem: PropTypes.func,
    autoscroll: PropTypes.number
  },
  render: function() {
    return <View {...this.props} />;
  }
});

Carousel.Type = {};
export default Carousel;
