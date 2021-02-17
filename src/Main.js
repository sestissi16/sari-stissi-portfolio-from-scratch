import React, { Component } from 'react'
import NavbarComp from './Sections/NavBarComp'
import Header from './Sections/Header'
import About from './Sections/About'
import Resume from './Sections/Resume'
import Portfolio from './Sections/Portfolio'
import Contact from './Sections/Contact'
import './Main.css'

class Main extends Component {
    render(){
        return (
            <div className="Main">
                <NavbarComp/>
                <Header/>
                <About/>
                <Resume/>
                <Portfolio/>
                <Contact/>
            </div>
        );
    } 
}

export default Main;
