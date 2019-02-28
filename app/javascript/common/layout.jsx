import React from 'react'
import { Navbar } from 'react-bootstrap' 

class ApplicationLayout extends React.Component {
    render() {
        return (
            <ul className="navbar">
                <li className="navbar-logo"><a href="#home">Rock'n Dress</a></li>
                <li className="navbar-item"><a href="#news">Home</a></li>
                <li className="navbar-item"><a href="#news">Agenda tu Hora</a></li>
                <li className="navbar-item"><a href="#contact">Cómo Funciona</a></li>
                <li className="navbar-item"><a href="#about">Arrendar</a></li>
                <li className="navbar-item"><a href="#about">More</a></li>
            </ul>
        )
    }
}

export default ApplicationLayout;