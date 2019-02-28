import React from 'react'
import ReactDOM from 'react-dom'
import {Route, Switch} from 'react-router-dom'
import Home from './Home'
import How from './How'
import About from './About'
import Rent from './Rent'

class App extends React.Component {
    render() {
        return (
            <div>
                <Switch>
                    <Route exact path="/" component={Home} />
                    <Route exact path="/how" component={How} />
                    <Route exact path="/about" component={About} />
                    <Route exact path="/rent" component={Rent} />
                </Switch>                
            </div>
        )
    }
}

export default App;