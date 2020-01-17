import React, { Component } from 'react';
import { Menu, Input, Image } from 'semantic-ui-react';
import { Link } from 'react-router-dom';
import logo from '../res/home_logo.png';

class VerticalMenu extends Component {
    render() {
        return (
            <Menu vertical inverted borderless id='side-menu' size='large'>
                <Menu.Item>
                    <Link to='/'><Image size='small' centered src={logo}/></Link>
                </Menu.Item>
                <Menu.Item>
                    <Input icon='search' placeholder='Search..' />
                </Menu.Item>
                <Menu.Item active>
                <i className="fa fa-balance-scale" aria-hidden="true"></i>&nbsp;&nbsp;Cases
                </Menu.Item>
                <Menu.Item>
                <i className="fa fa-line-chart" aria-hidden="true"></i>&nbsp;&nbsp;Reports
                </Menu.Item>
                <Menu.Item>
                <i className="fa fa-users" aria-hidden="true"></i>&nbsp;&nbsp;Clients
                </Menu.Item>
                <Menu.Item>
                <i className="fa fa-comments" aria-hidden="true"></i>&nbsp;&nbsp;Message(s)
                </Menu.Item>
            </Menu>
        );
    }
}

export default VerticalMenu;