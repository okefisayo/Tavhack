import React from 'react';

import logo from '../res/home_logo.png';

const HomeScreen = () => {
    return(
        <div>
        <img src={logo} id='home-logo' alt='homepage-logo'/>
        <h2>The next generation foster care data management system</h2>
        <div className='customer-container'>
          <div>
            <img src={logo} className='customers' alt='customers' />
            <h2>Family</h2>
          </div>
          <div>
            <img src={logo} className='customers' alt='customers' />
            <h2>Charities</h2>
          </div>
          <div>
            <img src={logo} className='customers' alt='customers' />
            <h2>Children</h2>
          </div>
        </div>
        </div>
    );
}

export default HomeScreen;