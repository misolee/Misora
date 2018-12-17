import { connect } from "react-redux";
import Header from './header';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions';

const mstp = ({ session, entities: { users } }) => (
  {
    currentUser: users[session.id]
  }
);

const mdtp = (dispatch) => (
  {
    logout: () => dispatch(logout()),
    openModal: (modal) => dispatch(openModal(modal))
  }
);

export default connect(mstp, mdtp)(Header);