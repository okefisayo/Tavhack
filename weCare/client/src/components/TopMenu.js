import React, { Component } from 'react';
import { Menu, Dropdown, Input } from 'semantic-ui-react';

class TopMenu extends Component {
    render() {
        return (
            <Menu inverted position='left' borderless>
                <Menu.Menu position='left'>
                    <Menu.Item>
                        <Dropdown placeholder='All' />
                    </Menu.Item>
                    <Menu.Item>
                        <Input icon='search' placeholder='Search..' />
                    </Menu.Item>
                </Menu.Menu>
            </Menu>
        );
    }
}

export default TopMenu;