import React,  { Component } from 'react'
import { Route, BrowserRouter as Router, Switch } from 'react-router-dom'
import Main from './Main'
import theGuardian from './Components/theGuardian'
import theGuardianPlay from './Components/theGuardianPlay'
import spaceSafe from './Components/spaceSafe'
import './App.css';

class App extends Component {
    render() {
        return (
            <div className="App">
                <Router>  
                    <Switch>  
                        <Route exact path="/" component={ Main } />
                        <Route exact path="/TheGuardian" component={theGuardian} />
                        <Route exact path="/PlayTheGuardian" component={theGuardianPlay} />
                        <Route exact path="/SpaceSafe" component={spaceSafe} />
                    </Switch>
                </Router>
            </div>
        );
    }
}

export default App;
