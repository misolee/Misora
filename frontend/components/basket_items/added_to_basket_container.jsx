import { connect } from 'react-redux';
import AddedToBasket from './added_to_basket';
import { closeModal } from '../../actions/modal_actions';

const mstp = (state) => {
  return ({
    formType: 'addedToBasket',
    errors: state.errors.session,
    modal: state.ui.modal,
  });
};

const mdtp = (dispatch) => (
  ({
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearErrors())
  })
);

export default connect(mstp, mdtp)(LoginForm);