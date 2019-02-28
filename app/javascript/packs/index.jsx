import React from 'react'
import ReactDOM from 'react-dom'
import {BrowserRouter as Router, Route} from 'react-router-dom'
import App from  '../components/App'
import ApplicationLayout from '../common/layout'


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ApplicationLayout>
      <Router>
        <Route path="/" component={App} />
      </Router>
    </ApplicationLayout>,
    document.body.appendChild(document.createElement('div')),
  )
})
