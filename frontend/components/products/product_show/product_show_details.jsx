import React from 'react';

class ProductShowDetail extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      index: 0
    };

    this.handleTabClick = this.handleTabClick.bind(this);
  }
  
  handleTabClick(e) {
    e.preventDefault();
    this.setState({ index: Number(e.target.getAttribute("index")) });
  }
  
  render() {
    let { whatItIs, whatItDoes, whatElseYouNeedToKnow, howToUse, ingredients } = this.props.product;

    const tabsInfo = [
      {
        title: "Details",
        whatItIs,
        whatItDoes,
        whatElseYouNeedToKnow
      }, {
        title: "How to Use",
        howToUse
      }, {
        title: "Ingredients",
        ingredients
      }
    ];

    let titles = tabsInfo.map((tab, i) => {
      if (i === this.state.index) {
        return (
          <div className="each-tab-selected" key={i} index={i} onClick={ this.handleTabClick }>
            <div className="selected-tab-title" key={i} index={i} onClick={ this.handleTabClick }>
              { tab.title }
            </div>
            <div className="selected-tab">
            </div>
          </div>
        );
      } else {
        return (
          <div className="each-tab-unselected" key={i} index={i} onClick={ this.handleTabClick }>
            <div className="unselected-tab-title" key={i} index={i} onClick={ this.handleTabClick }>
              { tab.title }
            </div>
            <div className="unselected-tab">
            </div>
          </div>
        );
      }
    });

    let whatitis = (
      < div className = "sub-content-details" >
        <label className="sub-content-label">What it is:</label>
        <div>{ tabsInfo[this.state.index]["whatItIs"] }</div>
      </div >
    )

    let whatitdoes = (
      < div className = "sub-content-details" >
        <label className="sub-content-label">What it does:</label>
        <div>{ tabsInfo[this.state.index]["whatItDoes"] }</div>
      </div >
    )

    let whatelseyouneedtoknow = (
      < div className = "sub-content-details" >
        <label className="sub-content-label">What else you need to know:</label>
        <div>{ tabsInfo[this.state.index]["whatElseYouNeedToKnow"] }</div>
      </div >
    )

    let howtouse = (
      < div className = "sub-content-details" >
        <label className="sub-content-label">How to use:</label>
        <div>{ tabsInfo[this.state.index]["howToUse"] }</div>
      </div >
    )
      
    // let whatitis = tabsInfo[this.state.index]["whatItIs"]
    // let whatitdoes = tabsInfo[this.state.index]["whatItDoes"];
    // let whatelseyouneedtoknow = tabsInfo[this.state.index]["whatElseYouNeedToKnow"];
    // let howtouse = tabsInfo[this.state.index]["howToUse"];
    let ingredientsInfo = tabsInfo[this.state.index]["ingredients"]

    return (
      <div className="product-show-detail">
        <div className="product-show-tab-title">
          { titles }
        </div>
        <div className="product-show-tab-contents">
          { whatitis }
          { whatitdoes }
          { whatelseyouneedtoknow }
          { howtouse }
          { ingredientsInfo }
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