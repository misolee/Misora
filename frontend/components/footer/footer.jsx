import React from "react";

class Footer extends React.Component {
	render() {
		return (
			<div className="footer">
				<div className="footer-big-columns">
					<div>
						<div className="footer-label">About Misora</div>
						<div className="footer-links">
							<div>About Misora</div>
							<div>Careers</div>
							<div>Misora Stands Social Impact</div>
							<div>Affiliates</div>
							<div>Supply Chain Transparency</div>
							<div>Sitemap</div>
							<div>Misora Global Sites</div>
						</div>
					</div>
					<div>
						<div className="footer-label">My Sephora</div>
						<div className="footer-links">
							<div>My Account</div>
							<div>Order Status</div>
							<div>Beauty Insider</div>
							<div>Rewards Bazaar</div>
							<div>Loves</div>
							<div>Play! by Misora - Subscribe Now</div>
							<div>Flash Unlimited Shipping</div>
						</div>
					</div>
					<div>
						<div className="footer-label">Help & FAQs</div>
						<div className="footer-links">
							<div>Online Ordering</div>
							<div>Shipping</div>
							<div>Billing</div>
							<div>Returns & Exchanges</div>
							<div>International Shipments</div>
							<div>Customer Service</div>
							<div>Contact Us</div>
						</div>
					</div>
					<div>
						<div className="footer-label">Ways to Shop</div>
						<div className="footer-links">
							<div>Just Arrived</div>
							<div>Bestsellers</div>
							<div>Beauty Offers</div>
							<div>Gift Cards</div>
							<div>Store Locations, Events & Classes</div>
							<div>Book a Reservation</div>
						</div>
					</div>
				</div>
				<div className="footer-empty-line"></div>
				<div className="footer-emails-and-links">
					<div className="footer-email">
						<div className="footer-signup-for-email">Sign up for Misora Emails</div>
						<input className="footer-email-input" type="text" placeholder="Email address" />
					</div>
					<div className="very-bottom">
						<div className="footer-icons">
							<a href="https://github.com/misolee/Misora"><i id="footer-icon" className="fab fa-github"></i></a>
							<a href="https://www.linkedin.com/in/miso-lee-872836149/"><i id="footer-icon" className="fab fa-linkedin"></i></a>
						</div>
					</div>
				</div>
				<div>
					Copyright © 2018 Misora USA, Inc. All rights reserved. Terms of
					Use | Privacy Policy - REVISED
				</div>
				<div>
					1 818 Misora (1 818 181 8181) | TTY (1 818 181 8181)
				</div>
			</div>
		)
	}
};

export default Footer;

// <div className="footer-white-row"></div>
			// <div className="very-bottom">
				// <div></div>
			// </div>