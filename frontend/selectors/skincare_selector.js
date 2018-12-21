export const allSkincareProducts = (state) =>
  Object.values(state.entities.products).filter((product) =>
    product.category === "Moisturizer" ||
    product.category === "Skincare" ||
    product.category === "Face Oils" ||
    product.category === "Toners" ||
    product.category === "Eye Creams & Treatments" ||
    product.category === "Face Serums" ||
    product.category === "Exfoliator" ||
    product.category === "Face Primer"
  );
