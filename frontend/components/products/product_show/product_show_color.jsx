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
        Array.from(colors).forEach((color, i) => {
          color.classList.remove("scale");
        });
        label.innerHTML = `COLOR: ${colorName}`;
        div.classList.toggle("scale");
      });
    });

    let color = document.querySelector(".color-name");
    if (color) {
      color.classList.add("scale");
      let name = color.getAttribute("data-color");
      label.innerHTML = `COLOR: ${name}`;
    }
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
	"No.11 Porcelain - for fair porcelain skin with neutral tones": "#D8A280",
	"No.21 Beige - for light skin with neutral tones": "#DAA082",
	"No.23 Sand - for light medium skin with neutral tones": "#D39779",
	"No.35 Coffee - for medium dark skin with neutral tones": "#BC7353",
	"No.37 Cacao - for dark skin with neutral tones": "#A2644B",
	"100 Ivory - Very light: neutral undertone": "#EBC6AF",
	"101 Cream - Very light: warm yellow undertone": "#F7CAA5",
	"200 Light Beige - Light: neutral undertone": "#EFBBA1",
	"202 Cameo - Light: cool pink undertone": "#E6AA88",
	"300 Medium Beige - Light to medium: neutral undertone": "#E0A26E",
	"302 Rosy Beige - Light to medium: cool pink undertone": "#E19D7C",
	"304 Almond Beige - Light to medium: cool undertone, balances redness": "#BF8E6A",
	"321 Amber Beige - Light to medium: warm olive undertone": "#D39D62",
	"401 Ochre - Medium: warm yellow undertone": "#B87A56",
	"600 Mocha - Medium to dark: neutral undertone": "#975123",
	"2 - fair skin with neutral undertone": "#C5986E",
	"3.5 - light to medium with warm undertone": "#CA935D",
  "4 - light skin with golden undertone": "#D2975D",
  "4.5 - light skin with neutral undertone": "#CA8D57",
  "5 - light to medium with neutral undertone": "#C18D54",
  "6.25 - medium to tan skin with peachy undertone": "#C98845",
  "7 - medium to tan skin with neutral undertone": "#A96E3D",
  "8 - tan skin with neutral undertone": "#AA6A32",
  "9 - tan to deep with neutral undertone": "#975A2D",
  "11.5 - deep skin with red undertone": "#9A4D22",
  "14 - very deep skin with red undertone": "#643311",
  'Y205 - Albaster': "#DFC3B5",
  'R220 - Pink Porcelain': "#CBAA9A",
  'Y235 - Ivory Beige': "#C6B09E",
  'R250 - Beige Nude': "#C9A99A",
  '140 = Y305 - Soft Beige': "#BB9B84",
  '125 = Y315 - Sand': "#B5927C",
  '145 = R360 - Neutral': "#AB8673",
  '153 = Y405 - Golden Honey': "#B48A71",
  'R430 - Hazelnut': "#9B7562",
  '177 = Y505 - Cognac': "#7B5339",
  'R540 - Dark Brown': "#5F3C28",
  'Opal 01 - for fair skin with cool undertones': "#ECCCC0",
  'Vanilla 02 - for light skin with neutral undertones': "#E1C3B8",
  'Suede 04 - for medium to tan skin with cool undertones': "#DBB3A8",
  'Natural 05 - for medium to tan skin with cool to neutral undertones': "#D7B0A2",
  'Ginger 06 - for medium skin with warm undertones': "#D0A992",
  'Tan 07 - for tan skin with cool undertones': "#C99C8B",
  'Spice 08 - for tan to dark skin with neutral to warm undertones': "#CB9B82",
  'Chestnut 09 - for dark skin with neutral to warm undertones': "#C08864",
};





