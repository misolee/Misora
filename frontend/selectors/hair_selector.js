export const allHairProducts = (state) =>
  Object.values(state.entities.products).filter((product) =>
    product.category === "Shampoo" ||
    product.category === "Hair Straighteners & Flat Irons" ||
    product.category === "Hair Dryer" ||
    product.category === "Hair Oil" ||
    product.category === "Conditioner"
  );
