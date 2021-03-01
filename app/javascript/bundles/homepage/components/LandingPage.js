import PropTypes from 'prop-types'; 
import React from 'react';
import '../../../../assets/stylesheets/homepage.css';
import '../../../../assets/stylesheets/Sidebar.css';

const LandingPage = () => {
    return(
        <main> 
            <header> 
                This is the landing page
                {/* insert natty tracker logo here */}
            </header>
            <body> 
                <form> 
                    <h1> 
                        Login
                    </h1>
                    <div class = "Container">
                        <label for="uname"> <b>Username</b></label>
                        <input type = "text" placeholder="Username" name="uname" required></input>
                        <button type = "submit"> Login</button> 
                        <label> 
                            <input type = "checkbox" checked = "checked" name="remember"> Remember me </input>
                        </label>
                        <br></br> {/*not sure why just </br> doesn't work*/}
                        <button type = "submit">Sign Up</button>
                    </div> 
                </form>
            </body> 
        </main>
    );
}

LandingPage.propTypes = {

}
export default LandingPage;