import { connect } from 'react-redux';
import { closeModal } from "../../actions/modal_actions";
import CheckoutModal from './checkout_modal';

const mstp = (state) => {
  return ({
    formType: 'checkout',
    modal: state.ui.modal,
  });
};

const mdtp = (dispatch) => (
  ({
    closeModal: () => dispatch(closeModal())
  })
);

export default connect(mstp, mdtp)(CheckoutModal);