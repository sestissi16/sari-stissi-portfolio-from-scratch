import React, { Component } from 'react'
import { Navbar, Nav } from 'react-bootstrap'
import { animateScroll as scroll, scroller } from "react-scroll";
import './NavbarComp.css'

class NavbarComp extends Component {

    render(){
        return (
            <Navbar id="navbarContainer" fixed="top" className="custom-navbar-bg">
                <Navbar.Brand 
                    onClick={() => scroller.scrollTo('Header', {
                        spy: true,
                        smooth: true,
                        offset: -70,
                        duration: 500,
                    })}
                    href="/"
                >
                    <h1 id="navBarBrand">Sari Stissi</h1>
                </Navbar.Brand>
                <Nav className="navBarLinkCont">
                    <Nav.Link 
                        className="navBarLink"
                        onClick={() => scroller.scrollTo('About', {
                            spy: true,
                            smooth: true,
                            offset: -70,
                            duration: 500,
                        })}
                        href="#About"
                    >
                        About
                    </Nav.Link>
                    <Nav.Link 
                        className="navBarLink"
                        onClick={() => scroller.scrollTo('Resume', {
                            smooth: true,
                            offset: -70,
                            duration: 500,
                        })}
                        href="#Resume"
                    >
                        Resume
                    </Nav.Link>
                    <Nav.Link 
                        className="navBarLink"
                        onClick={() => scroller.scrollTo('Portfolio', {
                            smooth: true,
                            offset: -70,
                            duration: 500,
                        })}
                        href="#Portfolio"
                    >
                        Portfolio
                    </Nav.Link>
                    <Nav.Link 
                        className="navBarLink"
                        onClick={() => scroller.scrollTo('Contact', {
                            smooth: true,
                            offset: -70,
                            duration: 500,
                        })}
                        href="#Contact"
                    >
                        Contact
                    </Nav.Link>
                </Nav>
            </Navbar>
        );
    } 
}

export default NavbarComp;

