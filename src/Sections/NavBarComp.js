import React, { Component } from 'react'
import { Navbar, Nav } from 'react-bootstrap'
import './NavbarComp.css'

class NavbarComp extends Component {
    render(){
        return (
            <Navbar id="navbarContainer" bg="dark" variant="dark" fixed="top" className="custom-navbar-bg">
                <Navbar.Brand href="#home">Sari Stissi</Navbar.Brand>
                <Nav className="ml-auto">
                    <Nav.Link href="#About">About</Nav.Link>
                    <Nav.Link href="#Resume">Resume</Nav.Link>
                    <Nav.Link href="#Portfolio">Portfolio</Nav.Link>
                    <Nav.Link href="#Contact">Contact</Nav.Link>
                </Nav>
            </Navbar>
        );
    } 
}

export default NavbarComp;

