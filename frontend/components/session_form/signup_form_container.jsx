import { connect } from 'react-redux';
import SignupForm from './signup_form';
import { signup } from '../../actions/session_actions';
import { closeModal } from "../../actions/modal_actions";

const mstp = (state) => (
  ({
    formType: 'signup',
    errors: state.errors.session,
    modal: state.ui.modal
  })
);

const mdtp = (dispatch) => (
  ({
    signup: (user) => dispatch(signup(user)),
    closeModal: () => dispatch(closeModal())
  })
);

export default connect(mstp, mdtp)(SignupForm);
