import  React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {createNativeStackNavigator} from '@react-navigation/native-stack';

import Apicalling from './src/Apicalling';
import Imagesilder from './src/Imagesilder';
const Stack = createNativeStackNavigator();

const MyStack = () => {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="Apicalling" component={Apicalling} />
        <Stack.Screen name="Imagesilder" component={Imagesilder} />
     
      </Stack.Navigator>
    </NavigationContainer>
  );
};
export default MyStack;