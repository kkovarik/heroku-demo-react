import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Heroku DEMO
        </p>
        <a
          className="App-link"
          href="https://github.com/kkovarik/heroku-demo-react"
          target="_blank"
          rel="noopener noreferrer"
        >
          https://github.com/kkovarik/heroku-demo-react
        </a>
      </header>
    </div>
  );
}

export default App;
