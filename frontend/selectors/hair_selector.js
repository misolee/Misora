export const allHairProducts = (state) =>
  Object.values(state.entities.products).filter((product) =>
    product.category === "Shampoo"
  );
