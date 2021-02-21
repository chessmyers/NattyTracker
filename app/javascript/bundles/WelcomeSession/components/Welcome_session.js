import PropTypes from 'prop-types';
import React, { useState } from 'react';
import '../../../../assets/stylesheets/welcome_session.css'

const WelcomeSession = (props) => {
    const [name, setName] = useState(props.name);
  
    return (
      <div className = "WelcomeScreen">
        <h3>Welcome, {name}!</h3>
        <hr />
        <form>
          <label htmlFor="name">
            You are logged in as: 
            <input id="name" type="text" value={name} onChange={(e) => setName(e.target.value)} />
          </label>
        </form>
      </div>
    );
  };
  
  WelcomeSession.propTypes = {
    name: PropTypes.string.isRequired, // this is passed from the Rails view
  };
  
  export default WelcomeSession;