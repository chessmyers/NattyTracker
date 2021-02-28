import React from 'react';
import { slide as Menu } from 'react-burger-menu';

export default props => {
  return (
    <Menu>
      <a className="menu-item" href="/">
        Home
      </a>
      <br/>
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
      </a>
    </Menu>
  );
};

