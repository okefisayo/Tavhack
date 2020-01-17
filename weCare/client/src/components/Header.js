import React from 'react';
import { Menu, Icon } from 'semantic-ui-react';
import { Link } from 'react-router-dom';

const Header = () => {
    return (
        <Menu borderless inverted size='huge'>
            <Menu.Item id='banner-text'>WeCare</Menu.Item>
            <Menu.Menu position='right'>
                <Menu.Item as={Link} to='/dashboard'>
                    <Icon name='sign-in' />Login
            </Menu.Item>
            </Menu.Menu>
        </Menu>
    );
}

export default Header;