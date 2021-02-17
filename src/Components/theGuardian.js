import React, { Component } from 'react';
import CoverArt from '../Media/mediumCoverArt.jpg'
import LargeCoverArt from '../Media/coverArt.jpg'
import './theGuardian.css'

class theGuardian extends Component {
  render() {

    return (
        <div id="theGuardianContainer">
            <div id="gameHomeContainer">
                <div id="gameHomeSidebar">
                    <div id="coverimage">
                        <span>
                            <a href={LargeCoverArt}>
                                <img src={CoverArt} alt="Drawing of the island of Serpedon Cover Art" border="1"/>
                            </a>
                        </span>
                    </div>
                    <div id="links">
                        <h1 id="navTitle">Navigation Links:</h1>
                        <ul id="linksList">
                            <li>
                                <div id="downloadGameFile">
                                    <a href="The Guardian.gblorb">Story File</a> <span className="guardianHomeFileType">(Blorb,&nbsp;727KB)</span>
                                </div>
                            </li>
                            <li>
                                <div id="playGameLink">
                                    <a href="/PlayTheGuardian">Play In-Browser</a> <span className="guardianHomeFileType">(link)</span>
                                </div>
                            </li>
                            <li>
                                <div id="portfolioLink">
                                    <a href="/">Go back to portfolio site</a> <span className="guardianHomeFileType">(link)</span>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>
                <div id="gameHomeMainContainer">
                    <div id="introduction">
                        <h1 className="informGameTitle"><span>The Guardian</span></h1>
                        <h2 className="informAuthor">Sari Stissi</h2>
                        <div id="bibliography"><span>Release 1</span></div>
                        <div id="madeWith"><span>Made with inform 7</span></div>
                    </div>
                    
                    <div id="gameAbout">
                        <span>
                            <h5>Info on Project:</h5>
                            <p>
                                This is a text based story based game I created based an ancient Greek myth. 
                                You would play as a woman who wakes up without her memory on an island.
                                The goal is to explore the island and uncover the story to find out who you are!
                            </p>
                            <h5>Premise:</h5>
                            <p>
                                The exact premise is that you are a woman in ancient Greece on the Island of Sarpedon and you have no idea who you are. 
                                What happened? Who are you really?
                            </p>
                            <h5>How to Play:</h5>
                            <p>
                                To play this game, click "Play In-Browser" under the Naviagtin Links. 
                                This will allow you to play the game without downloading any software. 
                                Once you navigation to the Play In-Browser page, you will see a large panel with bar at the top and words underneath.
                                That's where you will actually play the game. 
                                The bar at the top is the information bar and if you scroll down underneath the bar, you'll see the ">" symbol at the very bottom.
                                That is where you will type in commands to play the game like "go west".
                                For more information on how to play and what things mean, type in "help" without the quotes.
                            </p>
                        </span>
                        <div id="playinfo">
                            <p>
                                The Guardian was created with <a href="http://inform7.com/">Inform</a> and has IFID 96DCD0D5-F8CE-467A-9038-F6E9E741E9ED. To play a work like this one, you need an interpreter program: many are available, among them <a href="http://www.logicalshift.demon.co.uk/mac/zoom.html">Zoom
                        for Mac OS X</a> and for <a href="http://www.logicalshift.demon.co.uk/unix/zoom/">Unix</a>; <a href="http://freespace.virgin.net/davidk.kinder/frotz.html">Windows Frotz</a> or <a href="http://freespace.virgin.net/davidk.kinder/glulxe.html">Windows Glulxe</a> for Windows.  
                        Or you can play without downloading anything by following the 'Play In-Browser'
                        link, using the Quixe interpreter. You'll need to have Javascript enabled
                        on your web browser.
                            </p>
                        </div>
                    </div>
                
                    
                </div>        
            </div>
        </div>
    );
  }
}

export default theGuardian;
