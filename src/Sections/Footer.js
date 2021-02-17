import React, { Component } from 'react'
import { Navbar, Nav } from 'react-bootstrap'
import './Footer.css'

class Footer extends Component {
    render(){
        return (
            <Navbar id="navbarContainer" bg="dark" variant="dark">
                <Navbar.Brand href="#home">Navbar</Navbar.Brand>
                <Nav className="mr-auto">
                    <Nav.Link href="#home">Home</Nav.Link>
                    <Nav.Link href="#features">Features</Nav.Link>
                    <Nav.Link href="#pricing">Pricing</Nav.Link>
                </Nav>
            </Navbar>
        );
    } 
}

export default Footer;