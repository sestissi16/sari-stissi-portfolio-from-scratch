import React, { Component } from 'react'
import NavbarComp from './Sections/NavBarComp'
import Header from './Sections/Header'
import About from './Sections/About'
import Resume from './Sections/Resume'
import Portfolio from './Sections/Portfolio'
import Contact from './Sections/Contact'
import './Main.css'

class Main extends Component {
    constructor(props) {
        super(props);
        this.state = { height: 500 };
        this.updateWindowDimensions = this.updateWindowDimensions.bind(this);
    }
    
    componentDidMount() {
        this.updateWindowDimensions();
        window.addEventListener('resize', this.updateWindowDimensions);
    }
    
    componentWillUnmount() {
        window.removeEventListener('resize', this.updateWindowDimensions);
    }
    
    updateWindowDimensions() {
        this.setState({ height: window.innerHeight });
    }

    render(){
        return (
            <div className="Main">
                <NavbarComp/>
                <Header height={this.state.height}/>
                <About/>
                <Resume/>
                <Portfolio/>
                <Contact/>
            </div>
        );
    } 
}

export default Main;
