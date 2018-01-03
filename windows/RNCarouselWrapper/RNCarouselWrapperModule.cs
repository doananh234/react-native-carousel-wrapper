using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNCarouselWrapper
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNCarouselWrapperModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNCarouselWrapperModule"/>.
        /// </summary>
        internal RNCarouselWrapperModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNCarouselWrapper";
            }
        }
    }
}
