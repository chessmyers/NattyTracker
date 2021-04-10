import React from 'react';
import { slide as Menu } from 'react-burger-menu';

//creates burger menu checkbox 
function ParkItems(props){
  return <a href = {"/parks/" + props.id}>
  <input type = "checkbox" className="menu-item"></input>
  <label htmlFor="menu-item"> {props.name} </label>
  <br/> <br/>
  </a>; 
}

export default props => {
  // const parks = props.parks

  //use first 62 IDs (reduces size by ~95%)
  var parks = []; 
  for(var i = 0; i < 61; i++){ //should probably remove hard coding
    parks[i] = props.parks[i]; 
    if(i == 28)
      parks[i].name = "Haleakala National Park"; //last "a" in parks[28].name is a special character; will tackle this issue later
  }

  //parkItems = react elements for each iteration of parks
  const parkItems = parks.map((park) => 
    <ParkItems key={park.id.toString()} id={park.id} name={park.name}/> 
  );
  
  return (
    <Menu> 
      <a className="menu-item" href="/homepage">
        Home
      </a>
      <br/>

      {parkItems} {/* yay */}
    </Menu>
  );
};
