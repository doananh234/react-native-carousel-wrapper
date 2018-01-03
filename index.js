
import { NativeModules } from 'react-native';

const { RNCarouselManager } = NativeModules;

var Carousel = createClass({
    propTypes: {
        wrap:  PropTypes.bool,
        items: PropTypes.array,
        vertical: PropTypes.bool,
        bounces: PropTypes.bool,
        scrollEnabled: PropTypes.bool,
        type: PropTypes.number,
        perspective: PropTypes.number,
        decelerationRate: PropTypes.number,
        scrollSpeed: PropTypes.number,
        bounceDistance: PropTypes.number
    },
    render: function () {
        return (
            <RNCarousel {...this.props} />
        );
    }
});

var RNCarousel = requireNativeComponent('RNCarousel', Carousel);
Carousel.Type = RNCarouselManager.Type;
export default Carousel;
