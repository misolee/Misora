export const allBathandBodyProducts = (state) =>
  Object.values(state.entities.products).filter((product) =>
    product.category === "Body Moisturizer" ||
    product.category === "Bath and Body" ||
    product.category === "Scrub & Exfoliants" ||
    product.category === "Hand Cream & Foot Cream" ||
    product.category === "Body Wash & Shower Gel" ||
    product.category === "Body Lotions & Body Oils"
  );
