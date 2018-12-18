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

      // div.addEventListener("mouseover", (e) => {
      // }); 
      
      div.addEventListener("click", (e) => {
        Array.from(colors).forEach((color) => {
          color.classList.remove("scale");
        });
        label.innerHTML = `COLOR: ${colorName}`;
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
    )) : <div></div>;
  }

  render() {
    return (
      <div className="show-color">
        <label id="label" className="color-label"></label>
        <div className="color-palette">
          { this.colors() }
        </div>
      </div>
    )
  }
    
}

export default ProductShowColor;

const COLORS = {
	"Black - jet black": "#000000",
	"Dark Brown - chocolate brown": "#4c2a13",
	"Alloy - rich steel - charcoal": "#454545",
	"Snow - white": "#F3F3F3",
	"Midnight - deep blue": "#202A45",
	"Intense Jade - vibrant green": "#0F2820",
	"Intense Labradorite - charcoal": "#252525",
	"Intense Sapphire - vibrant dark blue": "#323346",
	"Intense Amethyst - deep plum": "#362E35",
	"Intense Smoky Quartz - espresso": "#393331",
	"Exposed - nude pink": "#DA9D8F",
	"Sensual - golden nude": "#F8A88C",
	"Seduce - rosy nude": "#CEA99E",
	"Risque - peachy nude": "#F5DED9",
	"Dazzled - soft rose": "#AA6D69",
	"Dollface - light pink": "#F4D8DC",
	"Blissful - bright rose": "#F1796C",
	"Captivating - bright peach": "#F78E6F",
	"Glisten - shimmering peachy pink": "#ECCAC9",
	"Peaceful - soft nude peach": "#E59182",
	"Natural Beauty - rosy red": "#A32C30",
	"Blushing Bride - rosy pink": "#F1DDDE",
	"Paaarty - nude": "#D0868D",
	"Pink Glow - light pink": "#FBA3A5",
	"Coral Glow - peach": "#F99F7F",
	"Berry - Sheer berry balm adjusts to your perfect lilac glow": "#9E5973",
	"Raspberry - magenta": "#CE0E4E",
	"Holographic Pink - light pink holographic": "#FC797D",
	"Holographic Purple - light purple holographic": "#DB5CB0",
	"Rose Gold - light pink with gold shimmer": "#F2A39B",
	"Rouge Vinyle": "#AF4656",
	"Rouge Remix": "#FF5B72",
	"Rose Happening": "#F37596",
  "Explicit Pink": "#CF6C90",
  "Corial Neo-Pop": "#D77B7B",
  "Nude": "#A8756E",
  "Rhythm Red": "#C45C5A",
  "Translucent": "#F2F2D7",
  "Dream - sheer pink": "#EC517D",
  'No.11 Porcelain - for fair porcelain skin with neutral tones': "#D8A280",
  'No.21 Beige - for light skin with neutral tones': "#DAA082",
  'No.23 Sand - for light medium skin with neutral tones': "#D39779",
  'No.35 Coffee - for medium dark skin with neutral tones': "#BC7353",
  'No.37 Cacao - for dark skin with neutral tones': "#A2644B"
};

