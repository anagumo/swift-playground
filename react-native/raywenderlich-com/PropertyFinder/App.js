/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */
'use strict';

import {
  StackNavigator,
} from 'react-navigation';
import SearchPage from './SearchPage';

const App = StackNavigator({
  Home: { screen: SearchPage },
});
export default App;
