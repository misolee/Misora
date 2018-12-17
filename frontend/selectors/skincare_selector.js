export const allSkincareProducts = (state) =>
  Object.values(state.entities.products).filter((product) =>
    product.category === "Moisturizer"
  );
