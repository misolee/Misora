export const allBathandBodyProducts = (state) =>
  Object.values(state.entities.products).filter((product) =>
    product.category === "Body Moisturizer"
  );
