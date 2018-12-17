import { connect } from 'react-redux';
import LoginForm from './login_form';
import { login } from '../../actions/session_actions';
import { closeModal } from '../../actions/modal_actions';
import { clearErrors } from '../../actions/session_actions';

const mstp = (state) => (
  ({
    formType: 'login',
    errors: state.errors.session,
    modal: state.ui.modal
  })
);

const mdtp = (dispatch) => (
  ({
    login: (user) => dispatch(login(user)),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearErrors())
  })
);

export default connect(mstp, mdtp)(LoginForm);