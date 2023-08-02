import { Dimensions, FlatList, Image, Text, TouchableOpacity, View } from 'react-native'
import React, { Component } from 'react'

export default class Apicalling extends Component {
  constructor(props) {
    super(props)
    this.state = {
       profileData: {},
    }
 }
 componentDidMount(){
 this.apicalling()
 }
 apicalling(){
  fetch('https://dummyjson.com/products').then((res)=>res.json()).then((resdata)=>{
    console.log(JSON.stringify(resdata,null,2))
  this.setState({profileData:resdata})
  })
 }
  render() {
 const listdisplayitem =({item,index})=>{

  return(
<View style={{flex:1,margin:5}}>
  <TouchableOpacity onPress={() =>{this.props.navigation.navigate('Imagesilder',{silder :item.images})}}  >
<View style={{flexDirection:'row',marginRight:'5%',width:'100%',backgroundColor:'whitegrey',marginLeft:5}}>
<View>
<Image style={{height:100,width:120}} source={{uri:item.thumbnail}}  />
</View>
<View style={{flex:1,justifyContent:'center',marginLeft:10}}>
  <Text style={{color:'red'}}>{item.title}</Text>
  
  <Text style={{color:'black'}}>{ `$ ${item.price}`}</Text>
  
  <Text style={{color:'black'}}>{`productname:- ${item.category}`}</Text>
</View>

</View>
</TouchableOpacity>
</View>
  )
 }
    return (
      <View>
<FlatList data={this.state.profileData.products}
keyExtractor={(item)=>item.id}
renderItem={listdisplayitem}



/>
      </View>
    )
  }
}
