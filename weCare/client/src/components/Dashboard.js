import React, { Component } from 'react';
import VerticalMenu from './VerticalMenu';
import DisplayCard from './DisplayCard';

class Dashboard extends Component {
    render() {
        return (
            <div className='dashboard'>
                <div className='dashboard-section-1'>
                    <VerticalMenu />
                </div>
                <div className='dashboard-section-2'>
                    <DisplayCard />
                </div>
            </div>
        );
    }
}

export default Dashboard;