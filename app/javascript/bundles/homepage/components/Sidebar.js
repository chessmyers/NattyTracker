import React from 'react';
import { slide as Menu } from 'react-burger-menu';

export default props => {
  // CODE BROKEN RIGHT NOW. NEED TO FIND WAY TO PASS IN DATABASE INFO
  return (
    <Menu>
      <a className="menu-item" href="/homepage">
        Home
      </a>
      <br/>


      {/* I think this would be how we get all the parks to show? */}

      {arr.map((parks) => {
        return (
        <a href = {"/parks/" + parks.id}>
          <input type = "checkbox" className="menu-item"></input>
          <label for="menu-item"> {parks.name} </label>
          <br/>
        </a>
        )
      })}


      {/* 
        copied code (sidebar works with this): 
      <a href = "/parks/1">
        <input type = "checkbox" className="menu-item"></input>
        <label for="menu-item"> Arcadia </label>
      </a> 
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label for="menu-item"> Arches </label>
      </a> 
      <br/>
      <a href = "/parks/3">
        <input type = "checkbox" className="menu-item"></input>
        <label for="menu-item"> Badlands </label>
      </a>
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label for="menu-item"> Big Bend </label>
      </a>
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label for="menu-item"> Grand Canyon </label>
      </a>
      <br/>
      <a href = "/parks/2">
        <input type = "checkbox" className="menu-item"></input>
        <label for="menu-item"> Yosemite </label>
      </a> */}
    </Menu>
  );
};

