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
  
  showInfo(tabsInfo, variable, labelText) {
    let content = tabsInfo[this.state.index][variable];
    let show = content;

    content = content && variable === "howToUse" ? content.map((text) => 
      <div>- { text }</div>) : <div>{tabsInfo[this.state.index][variable]}</div>;

    return show ? (
      < div className="sub-content-details" >
        <label className="sub-content-label">{ labelText }</label>
        { content }
      </div >
    ) : null;
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

    let whatitis = this.showInfo(tabsInfo, "whatItIs", "What it is:")
    let whatitdoes = this.showInfo(tabsInfo, "whatItDoes", "What it does:");
    let whatelseyouneedtoknow = this.showInfo(tabsInfo, "whatElseYouNeedToKnow", "What else you need to know:");

    let howtouse = this.showInfo(tabsInfo, "howToUse", "How to use:");
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