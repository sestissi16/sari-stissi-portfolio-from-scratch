
import { Route, BrowserRouter as Router } from 'react-router-dom'
import Main from './Main'
import './App.css';

function App() {
  return (
    <div className="App">
        <Router>    
            <Route exact path="/" component={Main} />
            {/* <Route exact path="/TheGuardian" component={theGuardian} />
            <Route exact path="/PlayTheGuardian" component={theGuardianPlay} />
            <Route exact path="/SpaceSafe" component={spaceSafe} /> */}
        </Router>
    </div>
  );
}

export default App;
