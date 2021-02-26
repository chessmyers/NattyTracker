 import PropTypes from 'prop-types'; 
 import React from 'react';
 import '../../../../assets/stylesheets/homepage.css';
 import '../../../../assets/stylesheets/Sidebar.css';
 import Sidebar from './Sidebar';

const HomePage = (props) => {
    //const parks = props.parks
    //const listParks = parks.map((park) =>
   // <li key = {park.toString()}>
    //    {park}
    //</li>); 
  return(
    //   <ul> listParks</ul>  
    <main> 
      <div className = "home" id = "outer-container">
        <Sidebar pageWrapId={'page-wrap'} outerContainerId={'outer-container'} />
        <div id="page-wrap">
          <h1> 
            Welcome to NattyTracker!
              {/* This is the main page
              {arr.map((num) => {
                return <li>{num} </li> 
              })} */}
          </h1>
          <h2> 
            Please click the button in the top-left, and choose a National Park!
          </h2> 
        </div>
      </div> 
    </main> 
  );
};
HomePage.propTypes = {
}
export default HomePage; 