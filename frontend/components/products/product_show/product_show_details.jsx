import React from 'react';

class ProductShowDetail extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      index: 0,
      title: "Details"
    };

    this.handleTabClick = this.handleTabClick.bind(this);
  }
  
  handleTabClick(e) {
    e.preventDefault();
    this.setState({ index: Number(e.target.getAttribute("index")), title: Number(e.target.getAttribute("tabtitle")) });
  }
  
  render() {
    let { whatItIs, whatItDoes, whatElseYouNeedToKnow, howToUse, ingredients } = this.props.product;
    const tabsInfo = [
      {
        title: "Details",
        content: [
          whatItIs,
          whatItDoes,
          whatElseYouNeedToKnow
        ]
      }, {
        title: "How to Use",
        content: howToUse
      }, {
        title: "Ingredients",
        content: ingredients
      }
    ];

    let titles = tabsInfo.map((tab, i) => {
      if (tab.title === this.state.title) {
        return <div className="each-tab selected" key={i} index={i} tabtitle={ tab.title } onClick={ this.handleTabClick }>{ tab.title }</div>;
      } else {
        return <div className="each-tab" key={i} index={i} tabtitle={ tab.title } onClick={ this.handleTabClick }>{ tab.title }</div>;
      }
    });

    let contents = tabsInfo[this.state.index]["content"];

    return (
      <div className="product-show-detail">
        <div className="product-show-tab-title">
          { titles }
        </div>
        <div className="product-show-tab-contents">
          { contents }
        </div>
      </div>
    )
  }
}


export default ProductShowDetail;
      // <div>
      //   <label>
      //     Details
      //     { whatItIs }
      //     { whatItDoes }
      //     { whatElseYouNeedToKnow }
      //   </label>
      // </div>
      // <div>
      //   <label>
      //     { howToUse }
      //   </label>
      // </div>
      // <div>
      //   <label>
      //     { ingredients }
      //   </label>
      // </div>
      
    // <div className="product-show-tab">
    //   <div className="product-show-tab-labels">
    //     Details
    //   </div>
    //   <div className="product-show-tab-content">
    //     { product.content }
    //   </div>
    // </div>


// const tabsInfo = [
//   {
//     title: "Details",
//     content: [ whatItIs, whatItDoes, whatElseYouNeedToKnow ]
//   }, {
//     title: "How to Use",
//     content: howToUse
//   }, {
//     title: "Ingredients",
//     content: ingredients
//   }
// ]