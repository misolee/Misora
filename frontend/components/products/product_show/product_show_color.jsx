import React from "react";

class ProductShowColor extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      color: null,
    };

    this.colors = this.colors.bind(this);
  }

  componentDidMount() {
    let colors = document.getElementsByClassName("color-name");
    let label = document.getElementById("label");

    Array.from(colors).forEach((div) => {
      let colorName = div.getAttribute("data-color");
      div.style.backgroundColor = COLORS[colorName];

      div.addEventListener("mouseover", (e) => {
        label.innerHTML = colorName;
      }); 

      div.addEventListener("click", (e) => {
        Array.from(colors).forEach((color) => {
          color.classList.remove("scale");
        });
        div.classList.toggle("scale");
      });
    });
  }

  colors() {
    return (this.props.colors) ? (
      this.props.colors.map((color, i) =>
        <div key={i}>
          <div className="color-name" data-color={`${color}`}>
          </div>
        </div>
    )) : null;
  }

  render() {
    return(
      <div className="show-color">
        <div id="label" className="color-label"></div>
        <div className="color-palette">
          { this.colors() }
        </div>
      </div>
    )
    
  }
}

export default ProductShowColor;

const COLORS = {
  "Black - jet black" : "#000000",
  "Snow - white" : "blue"
};


// jet black
// Dark Brown - chocolate brown
// Alloy - rich steel - charcoal
// Snow - white
// Midnight - deep blue
// Intense Jade - vibrant green
// Intense Labradorite - charcoal
// Intense Sapphire - vibrant dark blue
// Intense Amethyst - deep plum
// Intense Smoky Quartz - espresso