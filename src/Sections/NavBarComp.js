import React, { Component } from 'react'
import { Navbar, Nav } from 'react-bootstrap'
import './NavbarComp.css'

class NavbarComp extends Component {
    render(){
        return (
            <Navbar id="navbarContainer" fixed="top" className="custom-navbar-bg">
                <Navbar.Brand className="smoothscroll" href="#home"><h1 id="navBarBrand">Sari Stissi</h1></Navbar.Brand>
                <Nav className="navBarLinkCont">
                    <Nav.Link className="navBarLink smoothscroll" href="#About">About</Nav.Link>
                    <Nav.Link className="navBarLink smoothscroll" href="#Resume">Resume</Nav.Link>
                    <Nav.Link className="navBarLink smoothscroll" href="#Portfolio">Portfolio</Nav.Link>
                    <Nav.Link className="navBarLink smoothscroll" href="#Contact">Contact</Nav.Link>
                </Nav>
            </Navbar>
        );
    } 
}

export default NavbarComp;

