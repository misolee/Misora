export const allMakeupProducts = (state) => 
	Object.values(state.entities.products).filter((product) => 
		product.category === "Lip" || 
		product.category === "Eyeliner" || 
		product.category === "Blush" ||
		product.category === "Eye Palettes" ||
		product.category === "BB & CC Cream" ||
		product.category === "Foundation"
	);

export const lipProducts = (state) =>
	Object.values(state.entities.products).filter((product) =>
		product.category === "Lip"
	);

export const eyelinerProducts = (state) =>
	Object.values(state.entities.products).filter((product) =>
		product.category === "Eyeliner"
	);

export const blushProducts = (state) =>
	Object.values(state.entities.products).filter((product) =>
		product.category === "Blush"
	);

export const eyePalettes = (state) =>
	Object.values(state.entities.products).filter((product) =>
		product.category === "Eye Palettes"
	);

export const bbccCream = (state) =>
	Object.values(state.entities.products).filter((product) =>
		product.category === "BB & CC Cream"
	);

export const foundation = (state) =>
	Object.values(state.entities.products).filter((product) =>
		product.category === "Foundation"
	);