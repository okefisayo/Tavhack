import React, { Component } from 'react';
import { Card } from 'semantic-ui-react';

class DisplayCard extends Component {
    render() {
        return (
            <div>
            <h2 className='dashboard-tab-heading'>My Cases</h2>
            <Card.Group>
                <Card fluid>
                    <Card.Content
                        header='Kids Peace Foster Care'
                        meta='Friend'
                        description='Elliot is a music producer living in Chicago.'
                    />
                </Card>

                <Card fluid>
                    <Card.Content
                        header="Children's Home Society of North Caroline"
                        meta='Friend'
                        description='Jenny is a student studying Media Management at the New School'
                    />
                </Card>
            </Card.Group>
            </div>
        );
    }
}

export default DisplayCard;