import React from 'react';
import { slide as Menu } from 'react-burger-menu';

export default props => {
  var parks = props.parks; 
  // var arrayLength = props.parks.length;
  for (var i = 0; i < parks.length; i++) {
    console.log(props.parks[i]['name']);
    //Do something
  }

  return (
    <Menu>
      <a className="menu-item" href="/homepage">
        Home
      </a>
      <br/>


      {/* I think this would be how we get all the parks to show? */}

       {/* {arr.map((parks) => { 
        return (
        { <a href = {"/parks/" + parks.id}>
          <input type = "checkbox" className="menu-item"></input>
          <label for="menu-item"> {parks.name} </label>
          <br/>
        </a>
        )
      })} */}


      <a href = "/parks/1">
        <input type = "checkbox" className="menu-item"></input>
        <label htmlFor="menu-item"> Arcadia </label>
      </a> 
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label htmlFor="menu-item"> Arches </label>
      </a> 
      <br/>
      <a href = "/parks/3">
        <input type = "checkbox" className="menu-item"></input>
        <label htmlFor="menu-item"> Badlands </label>
      </a>
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label htmlFor="menu-item"> Big Bend </label>
      </a>
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label htmlFor="menu-item"> Grand Canyon </label>
      </a>
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label htmlFor="menu-item"> Yosemite </label>
      </a>
    </Menu>
  );
};
