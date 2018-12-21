export const allMakeupProducts = (state) => 
	Object.values(state.entities.products).filter((product) => 
		product.category === "Lip" || 
		product.category === "Eyeliner" || 
		product.category === "Blush" ||
		product.category === "Eye Palettes" ||
		product.category === "BB & CC Cream" ||
		product.category === "Foundation"
	);