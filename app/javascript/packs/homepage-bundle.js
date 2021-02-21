import ReactOnRails from 'react-on-rails';

import HomePage from '../bundles/homepage/components/HomePage';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HomePage,
});