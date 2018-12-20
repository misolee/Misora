import React from "react";

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      havePassword: "null"
    };
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit() {
    return (e) => {
      e.preventDefault();
      let user = Object.assign({}, this.state);
      this.props.login(user).then(this.props.closeModal);
      // this.props.history.push('/');
    };
  }

  handleDemoUser() {
    return (e) => {
      e.preventDefault();
      let user = { email: 'demo@misora.com', password: 'password' };
      this.props.login(user).then(this.props.closeModal);
    };
  }

  renderPasswordField(field) {
    return () => {
      this.setState({ havePassword: field }, this.props.clearErrors);
    };
  }

  render() {
    let { email, password, havePassword } = this.state;
    let error = this.props.errors.map((error, i) => <div key={i} className="signin-error">{error}</div>);
    let passwordField;

    if (havePassword === "no") {
      passwordField = (
        <div className="demo-user-wrapper">
          <button className="demo-user" onClick={this.handleDemoUser()}>Demo Sign In</button>
        </div>
      )
    } else if (havePassword === "yes") {
      passwordField = (
        <div className="pwBox">
          <input type="password" value={password} onChange={this.update("password")} placeholder="Password" />
        </div>
      )
    } else {
      passwordField = (
        <div className="empty-div"></div>
      )
    }

    return (
      <form className="signinPage" onClick={e => e.stopPropagation()} onSubmit={this.handleSubmit()}>
        <div className="pleasesignin">
          <div className="pleasesigninMessage">Please sign in to Misora</div>
          <button className="pleasesignin" onClick={this.props.closeModal}>x</button>
        </div>

        {error}

        <div className="email-div">
          <div className="emailQ">1. What is your email address?</div>
          <input className="emailInput" type="text" value={email} onChange={this.update("email")} placeholder="Email address" />
          <div className="haveAccount">Have a Beauty Insider account? Use the email you signed up with.</div>
        </div>

        <div className="pw-div">
          <div className="pwquestion">2. Do you have a misora.com password?</div>
          <div className="pwField">
            <div className="pwGroup">
              <label className="control pw-radio"> No, I am new to the website
							<input name="password" id="noPassword" type="radio" onClick={this.renderPasswordField("no")} />
                <div className="pw-indicator" />
              </label>
              <label className="control pw-radio"> Yes, I have a password
							<input name="password" id="yesPassword" type="radio" onClick={this.renderPasswordField("yes")} />
                <div className="pw-indicator" />
              </label>
            </div>
          </div>
        </div>
        {passwordField}
        <div className="cancel-submit-button">
          <button className="cancel-button" onClick={ this.props.closeModal }>Cancel</button>
          <button className="continue-button">Continue</button>
        </div>
      </form>
    )
  }
}

export default LoginForm;