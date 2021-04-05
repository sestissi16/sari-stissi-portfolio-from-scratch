import React, { Component } from 'react'
import portfolioInfo from '../portfolioData'
import Tooltip from 'react-bootstrap'
import './Header.css'

class Header extends Component {
    render(){
        const { height } = this.props
        const {
            briefDescrip,
            city,
            currentOccupation,
            social
        } = portfolioInfo.main

        var networks= function(social) {
            for(const item in social){
                return <li key={item.name}><a href={item.url}><i className={item.className}> {item.name}</i></a></li>
            }
        }

        return (
            <section id="Header" style={{ height: height }}>
                <div id="headerBanner">
                    <h1 id="headerBannerTitle">I'm Sari Stissi</h1>
                    <h2>{briefDescrip}</h2>
                    <h3>I'm currently working as <span>{currentOccupation}</span> based in {city}</h3>
                    <ul className="social">
                        {networks}
                    </ul>
                </div>
            </section>
        );
    } 
}

export default Header;
