import React from 'react';
import { connect } from "react-redux";
import { closeModal } from "../../actions/modal_actions";
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';

function LoginSignupModal({ modal, closeModal }) {
  if (!modal) {
    return null;
  }

  let component;
  switch (modal) {
    case 'login':
      component = <LoginFormContainer />;
      break;
    case 'signup':
      component = <SignupFormContainer />;
      break;
    default:
      return null;
  }

  return (
    <div className="outsideSigninSignup" onClick={closeModal}>
      {component}
    </div>
  );
}

const mstp = (state) => {
  return ({
    modal: state.ui.modal
  });
};

const mdtp = (dispatch) => {
  return ({
    closeModal: () => dispatch(closeModal())
  });
};

export default connect(mstp, mdtp)(LoginSignupModal);