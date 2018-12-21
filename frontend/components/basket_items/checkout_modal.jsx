import React from "react";

class CheckoutModal extends React.Component {

  render() {
   
    return (
      <div className="checkout-modal">
        <div className="checkout-modal-logo"></div>
        <div className="thankyou-for-purchase">
          <div className="thankyou">
            THANK YOU
          </div>
          <div className="for-your-purchase">
            for your purchase
          </div>
        </div>
        <div className="faithful-clone">
          This is my faithful clone of Sephora
        </div>
        <div className="visit-my-links">
          Please also visit my Github and LinkedIn
        </div>
        <div className="checkout-modal-links">
          <a href="https://github.com/misolee/Misora" target="_blank"><i id="footer-icon" className="fab fa-github"></i></a>
          <a href="https://www.linkedin.com/in/miso-lee-872836149/" target="_blank"><i id="footer-icon" className="fab fa-linkedin"></i></a>
        </div>
      </div>
    )
  }
}

export default CheckoutModal;