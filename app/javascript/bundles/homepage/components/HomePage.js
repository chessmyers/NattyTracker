 import PropTypes from 'prop-types'; 
 import React from 'react';
 import '../../../../assets/stylesheets/homepage.css';
 import '../../../../assets/stylesheets/Sidebar.css';
 import Sidebar from './Sidebar';

const HomePage = (props) => {
  const parks = props.parks;
  console.log({parks});
  return(
    <main> 
      <div className = "home" id = "outer-container">
        <Sidebar pageWrapId={'page-wrap'} outerContainerId={'outer-container'} />
        <div id="page-wrap">
          <h1> 
            Welcome to NattyTracker!
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
  parks: PropTypes.array.isRequired
}
export default HomePage; 