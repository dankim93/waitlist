import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store'

document.addEventListener('DOMContentLoaded', () => {
  let store = configureStore();
  window.store = store;

  const root = document.getElementById('root');
  // ReactDOM.render(<Root store={store}/>, root);
  ReactDOM.render(<h1>react hello</h1>, root);
});
