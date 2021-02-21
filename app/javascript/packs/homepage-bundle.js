import ReactOnRails from 'react-on-rails';

import HomePage from '../bundles/homepage/components/HomePage';
import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';
// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HomePage,
});