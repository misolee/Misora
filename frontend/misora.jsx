import React from 'react';
import ReactDOM from 'react-dom';
// import * as sessionUtils from './util/session_api_util';
import configureStore from './store/store';
import Root from './components/Root';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let store;
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { id: window.currentUser.id }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  window.getState = store.getState;

  ReactDOM.render(<Root store={store} />, root);
});

// window.signup = sessionUtils.signup;
// window.login = sessionUtils.login;
// window.logout = sessionUtils.logout;
// window.dispatch = store.dispatch;