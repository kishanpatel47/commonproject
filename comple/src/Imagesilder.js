import { FlatList, Image, Text, View } from 'react-native'
import React, { Component } from 'react'
import ImageSlider from 'react-native-image-slider';
import MapView from 'react-native-maps'
export default class Imagesilder extends Component {
    constructor(props){
        super(props);
        this.state ={
            images : [],
           list:''
        }

    }
    componentDidMount(){
console.log(JSON.stringify(this.props.route.params.silder))
this.setState({images :this.props.route.params.silder})
// this.state.images =this.props.route.params.silder
console.log("imagesilder"+JSON.stringify(this.state.images))


// alert(this.state.imagesilder)
    }
  render() {

    return (
        
        <View>

        
        <View style={{ height:250,
            width:'100%',
            alignItems: 'center',
            justifyContent: 'center'}}>
        <ImageSlider
        //   loopBothSides
        
          autoPlayWithInterval={3000}
          images={this.state.images}
        />






      </View>
<View style={{backgroundColor:'red' ,flex:1}}>
      <MapView    
          style={{flex: 1}} 
                 region={{ latitude: 42.882004,  longitude: 74.582748,          latitudeDelta: 0.0922,          longitudeDelta: 0.0421        }}        showsUserLocation={true}      /> 
      </View>
      </View>
        
    )
  }
}