import React from "react";

class SignupForm extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			first_name: '',
			last_name: '',
			email: '',
			password: '',
			birthday: '',
			month: '',
			day: '',
			year: ''
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
			this.props.signup(this.state).then(this.props.closeModal);
		};
	}

	handleOptionChange(field) {
		return (e) => this.mergeDate(field, e.target.value);
	}

	postUpdate() {
		let { year, month, day } = this.state;
		let newDate = `${year}-${month}-${day}`;
		this.setState({ birthday: newDate });
	}

	mergeDate(type, value) {
		this.setState({ [type]: value }, () => this.postUpdate());
	}

	getAllDays() {
		let result = [];
		for (let i = 1; i < 32; i++) {
			result.push(<option key={i} value={`${i}`}>{i}</option>);
		}
		return result;
	}

	getAllYears() {
		let result = [];
		for (let i = 1900; i < 2020; i++) {
			result.unshift(<option key={i} value={`${i}`}>{i}</option>);
		}
		return result;
	}

	render() {
		let { first_name, last_name, email, password } = this.state;
		let error = this.props.errors.map((error, i) => <div key={i} className="signup-error">{error}</div>);

		return (
			<form className="signupPage" onClick={e => e.stopPropagation()} onSubmit={this.handleSubmit()}>
				<div className="please-register">
					<div className="please-register-message">Register with Misora</div>
					<button className="please-register" onClick={this.props.closeModal}>x</button>
				</div>

				<div className="signup-errors">{error}</div>

				<div className="register-names">
					<label className="required-info">* Required Information</label>
					<div className="name-input">
						<input className="first-name" type="text" value={first_name} onChange={this.update("first_name")} placeholder="First name*" />
						<input className="last-name" type="text" value={last_name} onChange={this.update("last_name")} placeholder="Last name*" />
					</div>
					<input className="email-input-register" type="text" value={email} onChange={this.update("email")} placeholder="Email address*" />
					<input className="pw-input-register" type="password" value={password} onChange={this.update("password")} placeholder="Password (6 to 12 characters)*" maxLength="12" />
				</div>

				<div className="break-line" />

				<label className="checkbox">
					Yes, join Misora's free rewards program and earn points on every purchase.
					<input type="checkbox" />
					<div className="checkmark" />
				</label>

				<div className="joining-term">
					By joining you agree to our<a> Terms & Conditions </a>and you will automatically receive Beauty Insider offers via email.
				</div>
				<div className="enter-birthdate">
					Enter your birthdate to receive a free gift every year.
				</div>

				<div className="birthdate">
					<select className="month" defaultValue="Month" onChange={this.handleOptionChange("month")}>
						<option disabled>Month</option>
						<option value="01">January</option>
						<option value="02">February</option>
						<option value="03">March</option>
						<option value="04">April</option>
						<option value="05">May</option>
						<option value="06">June</option>
						<option value="07">July</option>
						<option value="08">August</option>
						<option value="09">September</option>
						<option value="10">October</option>
						<option value="11">November</option>
						<option value="12">December</option>
					</select>

					<select className="day" defaultValue="Day" onChange={this.handleOptionChange("day")}>
						<option disabled>Day</option>
						{this.getAllDays()}
					</select>

					<select className="year" defaultValue="Year" onChange={this.handleOptionChange("year")}>
						<option disabled>Year</option>
						{this.getAllYears()}
					</select>
				</div>

				<div className="subscription">
					<div className="break-line" />
					<label id="subscription-label" className="checkbox">Subscribe to Misora emails
            <input type="checkbox" />
						<div id="subscription-checkbox" className="checkmark" />
					</label>
					<div className="break-line" />
				</div>

				<button className="register-button">Register</button>
			</form>
		)
	}
}

export default SignupForm;