# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.destroy_all
Product.destroy_all
User.destroy_all

User.create!(email: 'demo@misora.com', first_name: 'Demo', last_name: 'User', password: 'password', birthday: '2019-01-1')

tatcha = Brand.create!(name: 'TATCHA')
stila = Brand.create!(name: 'STILA')
tarte = Brand.create!(name: 'TARTE')
dior = Brand.create!(name: 'DIOR')
yves_saint_laurent = Brand.create!(name: 'YVES SAINT LAURENT')
moroccan_oil = Brand.create!(name: 'MOROCCAN OIL')
philosophy = Brand.create!(name: 'PHILOSOPHY')
victor_and_rolf = Brand.create!(name: 'VICTOR & ROLF')
fresh = Brand.create!(name: 'FRESH')
laneige = Brand.create!(name: 'LANEIGE')
jo_malone_london = Brand.create!(name: 'JO MALONE LONDON')
dolce_and_gabbana = Brand.create!(name: 'DOLCE & GABBANA')
marc_jacobs = Brand.create!(name: 'MARC JACOBS')
chloe = Brand.create!(name: 'CHLOÉ')
chanel = Brand.create!(name: 'CHANEL')
clean = Brand.create!(name: 'CLEAN')
guerlain = Brand.create!(name: 'GUERLAIN')
pinrose = Brand.create!(name: 'PINROSE')
versace = Brand.create!(name: 'VERSACE')
tory_burch = Brand.create!(name: 'TORY BURCH')
burberry = Brand.create!(name: 'BURBERRY')
maison_margiela = Brand.create!(name: 'MAISON MARGIELA')
la_mer = Brand.create!(name: 'LA MER')
weekends_and_chocolate = Brand.create!(name: 'WEEKENDS & CHOCOLATE')
kiehl = Brand.create!(name: 'KIEHL')

tatcha_water_cream = Product.create!(
  name: 'The Water Cream',
  size: ' 1.7 oz/ 50 mL',
  price: 68.00,
  category: 'Moisturizer',
  brand_id: tatcha.id,
  what_it_is: 'An oil-free, anti-aging water cream that releases a burst of skin-improving Japanese nutrients, powerful botanicals, and optimal hydration for poreless-looking skin.',
  what_it_does: 'It is solution for dryness, pores, and dullness and uneven texture',
  what_else_you_need_to_know: 'Beauty icons for over 300 years, geisha adopted Japanese wild rose to create a refined, poreless-looking canvas underneath their makeup. The Water Cream has harnessed this potent botanical to honor the original makeup lover. This pure formula is noncomedogenic, non-irritating, non-sensitizing, dermatologist tested, and cruelty-free. It is formulated without mineral oil, synthetic fragrances, sulfate detergents, urea, DEA, or TEA.',
  how_to_use: ['Scoop a pearl-size amount of cream with the gold spoon.', 'Massage onto face, neck, and décolletage in upward strokes.', 'Use daily, morning and night.'],
  ingredients: 'Water, Saccharomyces/Camellia Sinensis Leaf/Cladosiphon Okamuranus/Rice Ferment Filtrate*, Dimethicone, Propanediol, Glycerin, Diglycerin, Diphenylsiloxy Phenyl Trimethicone, Gold, Belamcanda Chinensis Root Extract, Rosa Multiflora Fruit Extract, Houttuynia Cordata Extract, Sophora Angustifolia Root Extract, Sodium Hyaluronate, Lecithin, Pistacia Lentiscus (Mastic) Gum, Sodium Chloride, Sodium Citrate, Mica, Peg-9 Polydimethylsiloxyethyl Dimethicone, Dimethicone/Peg-10/15 Crosspolymer, Dimethicone/Phenyl Vinyl Dimethicone Crosspolymer, Disodium Edta, Tin Oxide, Titanium Dioxide, Butylene Glycol, Ethylhexylglycerin, Parfum/Fragrance, Alcohol, Phenoxyethanol. *Hadasei-3.'
)
  tatcha_water_cream_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/tatcha/water_cream/tatcha_watercream.jpg")
  tatcha_water_cream.photos.attach(io: tatcha_water_cream_attachment, filename: 'tatcha_water_cream')


stila_stayallday_liquid_eyeliner = Product.create!(
  name: 'Stay All Day® Waterproof Liquid Eye Liner',
  color: ['Black - jet black', 'Dark Brown - chocolate brown', 'Alloy - rich steel-charcoal', 'Snow - white', 'Midnight - deep blue', 'Intense Jade - vibrant green', 'Intense Labradorite - charcoal', 'Intense Sapphire - vibrant dark blue', 'Intense Amethyst - deep plum', 'Intense Smoky Quartz - espresso'],
  size: '0.016 oz/ 0.5 mL',
  price: 22.00,
  category: 'Eyeliner',
  brand_id: stila.id,
  what_it_is: 'An easy-application, waterproof liquid liner that stays on all day and night.',
  what_it_does: 'This easy-glide, quick-dry precision liner stays in place until you say when—no smudges, feathering, or running. The thin, marker-like tip is easy to use, even for the beauty beginner, and delivers any look—from a thin line to a bold, dramatic stroke. It goes on smoothly without skipping, smudging, or pulling, and lasts all day.'
)
  stila_stayallday_liquid_eyeliner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/stila/liquid_eyeliner/stila_stayallday_liquid_eyeliner.jpg")
  stila_stayallday_liquid_eyeliner.photos.attach(io: stila_stayallday_liquid_eyeliner_attachment, filename: 'stila_stayallday_liquid_eyeliner')


tarte_amazonian_clay_blush = Product.create!(
  name: 'Amazonian Clay 12-Hour Blush',
  color: ['Exposed - nude pink', 'Sensual - golden nude', 'Seduce - rosy nude', 'Risque - peachy nude', 'Dazzled - soft rose', 'Dollface - light pink', 'Blissful - bright rose', 'Captivating - bright peach', 'Glisten - shimmering peachy pink', 'Peaceful - soft nude peach', 'Natural Beauty - rosy red', 'Blushing Bride - rosy pink', 'Paaarty - nude'],
  size: '0.2 oz/ 5.6 g',
  price: 29.00,
  category: 'Blush',
  brand_id: tarte.id,
  what_it_is: 'An award-winning powder blush that contains long-wearing Amazonian clay, so pigment looks freshly applied all day.',
  what_it_does: 'This super-soft, silky powder chock is full of true-color mineral pigment, letting you layer on your glow with no harsh lines or chalky buildup. Micronized Amazonian clay helps control oil and infuse moisture for balanced skin and seamless blending.',
  what_else_you_need_to_know: 'This product is dermatologist-tested and formulated without mineral oil, triclosan, and gluten.',
  how_to_use: ['Smile to find the apples of your cheeks.', 'Using a blush brush (sold separately), sweep on in the shape of a check.', 'Continue to blend into skin for the perfect rosy glow.'],
  ingredients: 'Talc, Mica, Polyethylene, Zinc Stearate, Tricaprylin, Caprylic/Capric Triglyceride, Beeswax/Cera Alba/Cire D’abeille, Peg-150 Distearate, Lanolin, Laureth-4, Chlorphenesin, Polysorbate 20, Potassium Sorbate, Kaolin, Tetrasodium Edta, Tocopherol, Ascorbyl Palmitate, Ultramarines (Ci 77007), Bismuth Oxychloride (Ci 77163), Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Red 7 Lake (Ci 15850).'
)
  tarte_amazonian_clay_blush_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/tarte/amazon_clay_blush/tarte_amazonian_clay_blush.jpg")
  tarte_amazonian_clay_blush.photos.attach(io: tarte_amazonian_clay_blush_attachment, filename: 'tarte_amazonian_clay_blush')


tarte_inbloom_clay_eyeshadow_palette = Product.create!(
  name: 'Tartelette™ In Bloom Clay Eyeshadow Palette',
  size: '12 x 0.053 oz/ 1.5 g',
  price: 39.00,
  category: 'Eye Palettes',
  brand_id: tarte.id,
  what_it_is: 'A bestselling eyeshadow palette with 12 matte and microshimmer shades that are sure to become your everyday basics.',
  what_it_does: 'This palette features the perfect combo of microshimmers and mattes in universally flattering, warm-toned lid, crease, and liner shades. The palette is arranged in rows for three easy looks to mix and match. This formula is infused with Amazonian clay for smooth blending and intense payoff without chalkiness.',
  what_else_you_need_to_know: 'This palette is dermatologist-tested and formulated without mineral oil, triclosan, and gluten.',
  how_to_use: ['Use your favorite shadow brush (sold separately) to create your own custom looks for any occasion.', 'Follow the included step-by-step tartelette™ guide to create smoldering, versatile looks.', 'Need a new eyeshadow brush to use with this palette? Try the rule bender double-ended eyeshadow brush (sold separately).'],
  ingredients: 'Amazonian Clay: Provides better, longer, truer wear. -Mineral Pigments: Soothe and soften skin.'
)
  tarte_inbloom_clay_eyeshadow_palette_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/tarte/inbloom_clay_eyeshadow_palette/tarte_inbloom_clay_eyeshadow_palette.jpg")
  tarte_inbloom_clay_eyeshadow_palette.photos.attach(io: tarte_inbloom_clay_eyeshadow_palette_attachment, filename: 'tarte_inbloom_clay_eyeshadow_palette')


dior_lip_glow = Product.create!(
  name: 'Dior Lip Glow',
  color: ['Pink Glow - light pink', 'Coral Glow - peach', 'Berry - Sheer berry balm adjusts to your perfect lilac glow', 'Raspberry - magenta', 'Holographic Pink - light pink holographic', 'Holographic Purple - light purple holographic', 'Rose Gold - light pink with gold shimmer'],
  size: '0.12 oz/ 3.52 g',
  price: 34.00,
  category: 'Lip',
  brand_id: dior.id,
  what_it_is: 'A sheer balm, with two brand-new finishes, that enhances your natural lip color while moisturizing and protecting lips.',
  what_it_does: 'The must-have universal balm from Dior Backstage, is now unveiling two new finishes—Matte and Holographic—alongside the original Glow. Inspired by the expert techniques of the Dior Backstage, Lip Glow is the first color reviver balm by Dior, combining the comfort of a balm with a natural flush of custom color.',
  what_else_you_need_to_know: 'A collection of makeup artist essentials, designed to suit all skin tones, used at the Dior runway shows, and inspired by the energy backstage.',
  how_to_use: ['Wear it alone, below, or on top of lipstick.', 'Apply alone for a natural flush of color.', 'Wear as a lip balm or primer.', 'Layer on top of lipstick to change the effect.', 'Top with Lip Maximizer (sold separately) for even more radiant results.']
)
  dior_lip_glow_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dior/lip_glow/dior_lip_glow.jpg")
  dior_lip_glow.photos.attach(io: dior_lip_glow_attachment, filename: 'dior_lip_glow')


yves_saint_laurent_vinylcream_lipstain = Product.create!(
  name: 'Vinyl Cream Lip Stain',
  color: ['Rouge Vinyle', 'Rouge Remix', 'Rose Happening', 'Explicit Pink', 'Corial Neo-Pop', 'Nude', 'Rhythm Red'],
  size: '0.18 oz/ 5.32 mL',
  price: 37.00,
  category: 'Lip',
  brand_id: yves_saint_laurent.id,
  what_it_is: 'A high-coverage liquid lip color with ultimate shine, comfort, and all-day wear.',
  what_it_does: 'Dress your lips in in full-coverage color and high-impact, vinyl shine with Vinyl Cream Lip Stain. Its diamond-shaped applicator allows for perfect lip contouring and color that glides on evenly in just one stroke. The creamy formula provides up to 10 hours of wear and all-day comfort so lips look and feel beautiful.',
  ingredients: 'Water, Octyldodecanol, Trimethylsiloxyphenyl Dimethicone, Ethylcellulose, Synthetic Wax, Cetyl Alcohol, Alcohol, Polybutene, Glyceryl Stearate, Behenyl Alcohol, Steareth-20, Phenoxyethanol, Sodium Laurylsulfate, Glyceryl Stearate Citrate, Disodium Ethylene Dicocamide Peg-15 Disulfate, Hydroxypropyl Guar, Calciumaluminum Borosilicate, Synthetic Fluorphlogopite, Stearyl Alcohol, Myristyl Alcohol, Magnesium Silicate, Calcium Sodium Borosilicate, Aluminum Hydroxide, Sodium Saccharin, Alumina, Benzyl Alcohol, Silica, Tin Oxide, Anise Alcohol, Fragrance, [+/- May Contain: Ci 77891 / Titanium Dioxide, Ci 15850 / Red 7, Ci 77491, Ci 77492, Ci 77499 / Iron Oxides, Ci 15985 / Yellow 6, Ci 17200 / Red 33, Ci 15510 / Orange 4, Ci 45410 / Red 28, Mica, Ci 19140 / Yellow 5, Ci 42090 / Blue 1, Ci 75470 /Carmine].'
)
  yves_saint_laurent_vinylcream_lipstain_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/yves+saint+laurent/vinylcream_lipstain/yves_saint_laurent_vinylcream_lipstain.jpg")
  yves_saint_laurent_vinylcream_lipstain.photos.attach(io: yves_saint_laurent_vinylcream_lipstain_attachment, filename: 'yves_saint_laurent_vinylcream_lipstain')


moroccan_oil_hydrating_shampoo = Product.create!(
  name: 'Hydrating Shampoo',
  size: '8.5 oz/ 250 mL',
  price: 23.00,
  category: 'Shampoo',
  brand_id: moroccan_oil.id,
  what_it_is: 'A hydrating, daily shampoo that’s infused with antioxidant-rich argan oil and replenishing vitamins to nourished hair.',
  what_else_you_need_to_know: 'This product is free of phosphate and is color-safe.',
  how_to_use: ['Massage throughout wet hair and scalp, adding more water to activate a rich lather from the concentrated formula.', 'Rinse thoroughly until water runs clear.', 'Repeat as necessary.'],
  ingredients: 'Water, Dimethicone, Cetearyl Alcohol, Fragrance, Behentrimonium Chloride, Acetamide Mea, Canola Oil, Argania Spinosa (Argan) Kernel Oil, Hydrolyzed Vegetable Protein Pg-Propyl Silanetriol, Nasturtium Officinale Leaf Extract, Allium Sativum Bulb Extract, Lamium Album Flower Extract, Pinus Sylvestris Bud Extract, Arctium Lappa Root Extract, Anthemis Nobelis Flower Extract, Rosmarinus Officinalis (Rosemary) Leaf Extract, Hedera Helix (Ivy) Extract, Arnica Montana Flower Extract, Isopropyl Alcohol, Propylene Glycol, Caprylyl Glycol, Disodium Edta, Chlorphenesin, Phenoxyethanol, Potassium Sorbate, Alpha-Isomethylionone, Hydroxyisohexyl 3-Cyclohexene Carboxaldehyde, Linalool, Butylphenyl Methylpropional.'
)
  moroccan_oil_hydrating_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/moroccan+oil/moroccan_oil_hydrating_shampoo.png")
  moroccan_oil_hydrating_shampoo.photos.attach(io: moroccan_oil_hydrating_shampoo_attachment, filename: 'moroccan_oil_hydrating_shampoo')


philosophy_amazing_grace_firming_body_emulsion = Product.create!(
  name: 'Amazing Grace Firming Body Emulsion',
  size: '16 oz/ 480 mL',
  price: 39.00,
  category: 'Body Moisturizer',
  brand_id: philosophy.id,
  what_it_is: 'A luxurious, firming moisturizer infused with the bestselling Amazing Grace fragrance to purify, hydrate, and revitalize.',
  how_to_use: ['Apply a generous amount to skin with fingertips and massage in gently with a soothing, circular motion.'],
  ingredients: 'Water, Fragrance, Macadamia Ternifolia Seed Oil, Isocetyl Stearoyl Stearate, Glycerin, Olea Europaea (Olive) Fruit Oil, Dimethicone, Glyceryl Stearate, Peg-100 Stearate, Cetearyl Alcohol, Cetyl Alcohol, Butyrospermum Parkii (Shea) Butter, Polysorbate 60, Stearic Acid, Phytosteryl/Octyldodecyl Lauroyl Glutamate, Tocopheryl Acetate, Potassium Ascorbyl Tocopheryl Phosphate, Tocopherol, Xanthan Gum, Carbomer, Alpha-Isomethyl Ionone, Amyl Cinnamal, Benzyl Salicylate, Butylphenyl Methylpropional, Geraniol, Hexyl Cinnamal, Hydroxycitronellal, Limonene, Linalool, Imidazolidinyl Urea, Triethanolamine, Methylparaben, Propylparaben, Citric Acid, Tetrasodium Edta.'
 )
  philosophy_amazing_grace_firming_body_emulsion_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/philosophy/philosophy_amazing_grace_firming_body_emulsion.png")
  philosophy_amazing_grace_firming_body_emulsion.photos.attach(io: philosophy_amazing_grace_firming_body_emulsion_attachment, filename: 'philosophy_amazing_grace_firming_body_emulsion')


victor_and_rolf_flowerbomb = Product.create!(
  name: 'Flowerbomb',
  size: '3.4 oz/ 100 mL',
  price: 165.00,
  category: 'Perfume',
  brand_id: victor_and_rolf.id,
  what_else_you_need_to_know: 'Fashion is a dream…Fragrance is a dream in a bottle—Viktor & Rolf',
 )
  victor_and_rolf_flowerbomb_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/victor+%26+rolf/victor%26rolf_flowerbomb.png")
  victor_and_rolf_flowerbomb.photos.attach(io: victor_and_rolf_flowerbomb_attachment, filename: 'victor_and_rolf_flowerbomb')


fresh_sugar_advanced_therapy_lip_treatment = Product.create!(
  name: 'Sugar Advanced Therapy Lip Treatment',
  color: ['Translucent', 'Dream - sheer pink'],
  size: '0.15 oz/ 4.3 g',
  price: 26.00,
  category: 'Lip',
  brand_id: fresh.id,
  what_it_is: 'A bestselling lip balm that hydrates for 24 hours and smooths the look of wrinkles for visibly fuller lips.',
  what_else_you_need_to_know: 'The age-defying lip treatment is proven to improve volume and definition (read: plumper pout), making it ideal for overnight or a base layer for lipstick. The sugar formula also contains sea fennel to help smooth fine lines, antioxidant-rich orange extract, and moisturizing hyaluronic acid spheres.',
  how_to_use: ['Apply to lips throughout the day and before bed.', 'For SPF protection, follow with your favorite Sugar Lip Treatment Sunscreen SPF 15.', 'Prep and prime with this lip treatment—use it as a base to keep lips hydrated under any long-wear lipstick, including matte and liquid lipstick.', 'Use this lip treatment as a recovery step after removing drying lipstick.'],
 )
  fresh_sugar_advanced_therapy_lip_treatment_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/fresh/fresh_sugar_advanced_therapy_lip_treatment.png")
  fresh_sugar_advanced_therapy_lip_treatment.photos.attach(io: fresh_sugar_advanced_therapy_lip_treatment_attachment, filename: 'fresh_sugar_advanced_therapy_lip_treatment')


laneige_bb_cushion_pore_blur = Product.create!(
  name: 'BB Cushion Pore Blur',
  color: ['No.11 Porcelain - for fair porcelain skin with neutral tones', 'No.21 Beige - for light skin with neutral tones', 'No.23 Sand - for light medium skin with neutral tones', 'No.35 Coffee - for medium dark skin with neutral tones', 'No.37 Cacao - for dark skin with neutral tones'],
  size: '0.5 oz/ 15 g x 2',
  price: 38.00,
  category: 'BB & CC Cream',
  brand_id: laneige.id,
  what_it_is: 'A pore perfecting version of LANEIGE\'s award-winning BB Cushion, this lightweight, oil-absorbing formula targets shine for a semi-matte, soft-focus finish.',
  what_else_you_need_to_know: 'This product is dermatologist tested. LANEIGE does not test ingredients or products on animals.',
  how_to_use: ['Apply by pressing the puff into moistened sponge and pat onto face.', 'Reapply throughout the day if desired.'],
  ingredients: 'Water, Cyclopentasiloxane, Methyl Trimethicone, Iron Oxides (CI 77492), Dicaprylyl Carbonate, Cetyl PEG/PPG-10/1 Dimethicone, Butylene Glycol, Cyclohexasiloxane, Niacinamide, Nylon-12, HDI/Trimethylol Hexyllactone Crosspolymer, Polymethyl Methacrylate, Iron Oxides (CI 77491), Lauryl PEG-9 Polydimethylsiloxyethyl Dimethicone, Acrylates/Ethylhexyl Acrylate/Dimethicone Methacrylate Copolymer, Iron Oxides (CI 77499), Sodium Chloride, Aluminum Hydroxide, Fragrance, Stearic Acid, Disteardimonium Hectorite, Dimethicone, Triethoxycaprylylsilane, Phenoxyethanol, Dimethicone/Vinyl Dimethicone Crosspolymer, Acrylates/Stearyl Acrylate/Dimethicone Methacrylate Copolymer, Trimethylsiloxysilicate, Ethylhexylglycerin, Disodium EDTA, Silica, Methyl Methacrylate Crosspolymer, Mentha Piperita (Peppermint) Extract, Pinus Sylvestris Leaf Extract, Hydrolyzed Corn Starch, Polypropylsilsesquioxane, Chenopodium Quinoa Seed Extract, Pentylene Glycol, Magnesium Sulfate, Calcium Chloride, Manganese Sulfate, Zinc Sulfate, Ascorbyl Glucoside.'
 )
  laneige_bb_cushion_pore_blur_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/laneige/laneige_bb_cushion_pore_blur.png")
  laneige_bb_cushion_pore_blur.photos.attach(io: laneige_bb_cushion_pore_blur_attachment, filename: 'laneige_bb_cushion_pore_blur')


jo_malone_london_wood_sage_and_sea_salt_cologne = Product.create!(
  name: 'Wood Sage & Sea Salt Cologne',
  size: '3.4 oz/ 100 mL',
  price: 136.00,
  category: 'Perfume',
  brand_id: jo_malone_london.id,
  what_else_you_need_to_know: 'From colognes and candles to bath and body care, each Jo Malone London product comes presented in their signature gift box and ribbon.',
  ingredients: 'Alcohol Denat., Water, Fragrance, Limonene, Alpha-Isomethyl Ionone, Linalool, Benzyl Alcohol, Geraniol, Citronellol, Citral, Coumarin, Bht'
 )
  jo_malone_london_wood_sage_and_sea_salt_cologne_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/jo+malone+london/jo_malone_london_wood_sage_and_sea_salt_cologne.png")
  jo_malone_london_wood_sage_and_sea_salt_cologne.photos.attach(io: jo_malone_london_wood_sage_and_sea_salt_cologne_attachment, filename: 'jo_malone_london_wood_sage_and_sea_salt_cologne')


jo_malone_london_nectarine_blossom_and_honey_cologne = Product.create!(
  name: 'Nectarine Blossom & Honey Cologne',
  size: '3.4 oz/ 100 mL',
  price: 136.00,
  category: 'Perfume',
  brand_id: jo_malone_london.id,
  what_else_you_need_to_know: 'From colognes and candles to bath and body care, each Jo Malone London product comes presented in their signature gift box and ribbon.',
  ingredients: 'Alcohol Denat., Fragrance, Water, Bht, Limonene, Linalool, Citronellol, Citral, Geraniol'
 )
  jo_malone_london_nectarine_blossom_and_honey_cologne_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/jo+malone+london/jo_malone_london_nectarine_blossom_and_honey_cologne.png")
  jo_malone_london_nectarine_blossom_and_honey_cologne.photos.attach(io: jo_malone_london_nectarine_blossom_and_honey_cologne_attachment, filename: 'jo_malone_london_nectarine_blossom_and_honey_cologne')


jo_malone_london_oragne_blossom_cologne = Product.create!(
  name: 'Orange Blossom Cologne',
  size: '3.4 oz/ 100 mL',
  price: 136.00,
  category: 'Perfume',
  brand_id: jo_malone_london.id,
  what_else_you_need_to_know: 'From colognes and candles to bath and body care, each Jo Malone London product comes presented in their signature gift box and ribbon.',
  ingredients: 'Alcohol Denat., Water, Fragrance, Linalool, Hexyl Cinnamal, Limonene, Citral, Geraniol, Farnesol'
 )
  jo_malone_london_oragne_blossom_cologne_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/jo+malone+london/jo_malone_london_oragne_blossom_cologne.png")
  jo_malone_london_oragne_blossom_cologne.photos.attach(io: jo_malone_london_oragne_blossom_cologne_attachment, filename: 'jo_malone_london_oragne_blossom_cologne')


dolce_and_gabbana_light_blue = Product.create!(
  name: 'Light Blue',
  size: '1.6 oz/ 50 mL',
  price: 78.00,
  category: 'Perfume',
  brand_id: dolce_and_gabbana.id,
  what_it_is: 'A stunning perfume, overwhelming and irresistible like the joy of living. The scent is surprisingly colored with the liveliness of Sicilian citron, the happiness of Granny Smith apple, and the spontaneity of bluebells. Feminine and resolute notes are expressed with the intensity of jasmine, the freshness of bamboo, and the charm of white rose. The deep and true base embodies the character of cedarwood, the fullness of amber, and the embrace of musk.',
  ingredients: 'Alcohol, Fragrance, Water, Limonene, Ethylhexyl Methoxycinnamate, Diethylamino Hydroxybenzoyl Hexyl Benzoate, Citral, Cinnamal, Linalool, Bht.'
 )
  dolce_and_gabbana_light_blue_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dolce+and+gabbana/dolce_and_gabbana_light_blue.png")
  dolce_and_gabbana_light_blue.photos.attach(io: dolce_and_gabbana_light_blue_attachment, filename: 'dolce_and_gabbana_light_blue')


marc_jacobs_daisy = Product.create!(
  name: 'Daisy',
  size: '1.7 oz/ 50 mL',
  price: 84.00,
  category: 'Perfume',
  brand_id: marc_jacobs.id,
  what_else_you_need_to_know: 'Whimsical white daisies abloom on its cap give the iconic Daisy bottle a retro-cool twist—as charming and unique as the woman who wears the fragrance.',
  ingredients: 'Strawberry, Violet Leaves, Jasmine'
 )
  marc_jacobs_daisy_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/marc+jacobs/marc_jacobs_daisy.png")
  marc_jacobs_daisy.photos.attach(io: marc_jacobs_daisy_attachment, filename: 'marc_jacobs_daisy')


chloe_nomade_eau_de_parfum = Product.create!(
  name: 'Nomade Eau de Parfum',
  size: '1.7 oz/ 50 mL',
  price: 105.00,
  category: 'Perfume',
  brand_id: chloe.id,
  what_it_is: 'Nomade Eau de Parfum is the essence of a free-spirited and confident women, taking inspiration from her experiences and encounters throughout the world and asserting who she is.',
  what_it_does: 'The intense mineral character of oakmoss is enveloped in the voluptuous softness of mirabelle plum. From this freshness emanates a bright floral note carried by freesia. Natural ingredients brought into focus by the perfumer Quentin Bisch, revealing accords as exhilarating as the feeling of escape they inspire.',
  what_else_you_need_to_know: 'Nomade evokes a vision of escape and openness to the world. A perfume that captures the spirit of Chloé, with its distinctive assertiveness and freedom, staying true to the woman who wears it.',
  ingredients: 'Alcohol Denat., Fragrance, Water, Ethylhexyl Methoxycinnamate, Limonene, Benzyl Salicylate, Linalool, Benzophenone-3, Ethylhexyl Salicylate, Butyl Methoxydibenzoylmethane, Coumarin, Alpha-Isomethyl Ionone, Citronellol, Bht, Eugenol, Citral, Alcohol, Propylene Glycol, Hexyl Cinnamal, Tris(Tetramethylhydroxypiperidinol) Citrate, Farnesol, Isoeugenol, Benzyl Alcohol, Geraniol, Acrylates/Octylacrylamide Copolymer, Hydrolyzed Jojoba Esters, Fd&C Red No. 4 (Ci 14700), Ext. D&C Violet No. 2 (Ci 60730), Fd&C Yellow No. 5 (Ci 19140).'
 )
  chloe_nomade_eau_de_parfum_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/chloe/chloe_nomade_eau_de_parfum.png")
  chloe_nomade_eau_de_parfum.photos.attach(io: chloe_nomade_eau_de_parfum_attachment, filename: 'chloe_nomade_eau_de_parfum')


chanel_coco_mademoiselle_eau_de_parfum_intense = Product.create!(
  name: 'COCO MADEMOISELLE Eau de Parfum Intense',
  size: '1.7 oz/ 50 mL',
  price: 110.00,
  category: 'Perfume',
  brand_id: chanel.id,
  what_it_is: 'An intense new facet of the COCO MADEMOISELLE personality emerges to forge a powerful, deep, addictive fragrance that is irresistible in every way.',
  what_else_you_need_to_know: 'An extreme, luminous and deep concentration of patchouli infuses COCO MADEMOISELLE Eau de Parfum Intense with a voluptuous dimension. The warm, soft and feminine amber accord—an intoxicating blend of Tonka bean and vanilla from Madagascar—wraps the scent in sensuality.',
  ingredients: 'Patchouli, Tonka Bean, Vanilla Absolute'
 )
  chanel_coco_mademoiselle_eau_de_parfum_intense_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/chanel/chanel_coco_mademoiselle_eau_de_parfum_intense.png")
  chanel_coco_mademoiselle_eau_de_parfum_intense.photos.attach(io: chanel_coco_mademoiselle_eau_de_parfum_intense_attachment, filename: 'chanel_coco_mademoiselle_eau_de_parfum_intense')


marc_jacobs_daisy_dream = Product.create!(
  name: 'Daisy Dream',
  size: '1.7 oz/ 50 mL',
  price: 84.00,
  category: 'Perfume',
  brand_id: marc_jacobs.id,
  what_it_is: 'Light and airy, Daisy Dream captivates with its delectably fruity and floral personality. From the first hints of blackberry, fresh grapefruit, and succulent pear, Daisy Dream draws you in with her easy charm and an irresistibly feminine mix of jasmine flower, lychee, and blue wisteria. The fragrance lingers on the skin, drying down to a dreamy finish of white woods, musk, and an elusive hint of coconut water.',
  what_else_you_need_to_know: 'Strewn with delicate daisies on its shoulders and cap, the clear-glass bottle reveals a sky-blue fragrance—the color of a dream.',
  ingredients: 'Blackberry, Jasmine Flower, White Woods'
 )
  marc_jacobs_daisy_dream_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/marc+jacobs/marc_jacobs_daisy_dream.png")
  marc_jacobs_daisy_dream.photos.attach(io: marc_jacobs_daisy_dream_attachment, filename: 'marc_jacobs_daisy_dream')


clean_reserve_acqua_neroli = Product.create!(
  name: 'Reserve Acqua Neroli',
  size: '3.4 oz/ 100 mL',
  price: 95.00,
  category: 'Perfume',
  brand_id: clean.id,
  what_it_is: 'Acqua Neroli is crafted with eco-conscious and sustainably sourced bergamot and sandalwood.',
  what_else_you_need_to_know: 'This product is cruelty free, vegan, gluten free, phthalate free, non-toxic, and comes in eco-conscious packaging.',
  ingredients: 'Alcohol Denat., Fragrance, Water, Glycerin, Aloe Barbadensis Leaf Juice, Phenoxyethanol, Limonene, Linalool, Geraniol, Hydroxycitronellal, Citral, Citronellol.'
 )
  clean_reserve_acqua_neroli_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/clean/clean_reserve_acqua_neroli.png")
  clean_reserve_acqua_neroli.photos.attach(io: clean_reserve_acqua_neroli_attachment, filename: 'clean_reserve_acqua_neroli')


guerlain_mon_guerlain = Product.create!(
  name: 'Mon Guerlain',
  size: '1.7 oz/ 50 mL',
  price: 94.00,
  category: 'Perfume',
  brand_id: guerlain.id,
  what_it_is: 'Mon Guerlain, the House\'s new fragrance, is a tribute to today’s femininity—a strong, free and sensual femininity, inspired by Angelina Jolie.',
  what_else_you_need_to_know: 'My invisible tattoo, my fragrance, Mon Guerlain. This fresh oriental fragrance enhances exceptional raw materials: carla lavender from Provence, sambac jasmine from India, album sandalwood from Australia, and vanilla tahitensis from Papua New Guinea. It expresses the quintessence of a history replete with experiences and nourished by success, expertise, and generosity, all infused with the same passion since 1828. The quadrilobe bottle, created in 1908, established itself as one of Guerlain’s iconic bottles. Simple and graphic, it echoes an alchemist’s bottle and owes its name to its stopper, which is formed from one piece to obtain a shape resembling four lobes.',
  ingredients: 'Jasmine, Lavender, Vanilla '
 )
  guerlain_mon_guerlain_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/guerlain/guerlain_mon_guerlain.png")
  guerlain_mon_guerlain.photos.attach(io: guerlain_mon_guerlain_attachment, filename: 'guerlain_mon_guerlain')


pinrose_secret_genius = Product.create!(
  name: 'Secret Genius',
  size: '1.7 oz/ 50 mL',
  price: 65.00,
  category: 'Perfume',
  brand_id: pinrose.id,
  what_it_is: 'Melt hearts with this romantic blend of vanilla and caramel.',
  what_it_does: '',
  what_else_you_need_to_know: 'Perfect for: Hatching plans and sneaking kisses.',
  ingredients: 'Caramel, Vanilla'
 )
  pinrose_secret_genius_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/pinrose/pinrose_secret_genius.png")
  pinrose_secret_genius.photos.attach(io: pinrose_secret_genius_attachment, filename: 'pinrose_secret_genius')


dior_miss_dior_absolutely_blooming = Product.create!(
  name: 'Miss Dior Absolutely Blooming',
  size: '1.7 oz/ 50 mL',
  price: 100.00,
  category: 'Perfume',
  brand_id: dior.id,
  what_else_you_need_to_know: 'Bright and colorful, Miss Dior Absolutely Blooming is a floral delight you return to over and over. Its top notes of tangy red berry are joyful and striking. At its heart, a sublime duet of Grasse roses and Damascus roses embraces a sensuous peony accord. This infinite blooming of fresh flowers is comforted in a base of white musk notes.',
  ingredients: 'Red Berry Accord, Grasse Rose Absolute, Peony Accord, White Musk Accord. '
 )
  dior_miss_dior_absolutely_blooming_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dior/dior_miss_dior_absolutely_blooming.png")
  dior_miss_dior_absolutely_blooming.photos.attach(io: dior_miss_dior_absolutely_blooming_attachment, filename: 'dior_miss_dior_absolutely_blooming')


versace_eros_pour_femme_eau_de_parfum = Product.create!(
  name: 'Eros Pour Femme Eau de Parfum',
  size: '3.4 oz/ 100 mL',
  price: 120.00,
  category: 'Perfume',
  brand_id: versace.id,
  what_it_is: 'The primal power of woman is captured in this radiant, sensual essence. Attraction, desire, and passion intertwine in an alchemical mix of tempting, bright, and feminine notes. A refined accord of lemon and jasmine is exalted by sensual and smooth woods for a fragrance of strength, individuality, and seduction.',
  what_else_you_need_to_know: '“Eros Pour Femme is the ultimate in power and seduction from Versace, from the captivating fragrance to the elegance of the bottle and the stunning campaign by Mert Alas and Marcus Piggott starring Lara Stone.”—Donatella Versace, Chief Designer for Versace',
  ingredients: 'Sicilian Lemon, Calabrian Bergamot, Pomegranate, Lemon Flower, Sambac Jasmine Absolute, Jasmine infusion, Peony, Sandlewood, Ambrox, Musks, Sensual Wood.'
 )
  versace_eros_pour_femme_eau_de_parfum_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/versace/versace_eros_pour_femme_eau_de_parfum.png")
  versace_eros_pour_femme_eau_de_parfum.photos.attach(io: versace_eros_pour_femme_eau_de_parfum_attachment, filename: 'versace_eros_pour_femme_eau_de_parfum')


tory_burch_nuit_azur = Product.create!(
  name: 'Tory Burch Nuit Azur',
  size: '3.4 oz/ 100 mL',
  price: 128.00,
  category: 'Perfume',
  brand_id: tory_burch.id,
  what_it_is: 'Introducing Tory Burch Nuit Azur, which captures the allure of the Mediterranean after dusk: the irresistible invitation of just one last dip in the sea before the evening begins. Channeling the impulsive sensuality of a starlit swim, the fragrance transports you to the warm air and gentle breezes of the perfect Mediterranean escape.',
  what_it_does: 'This fresh, woody floral opens with crisp violet leaf and salty fig to reveal a brilliant heart of freesia, patchouli, and vetiver wrapped in the warmth of cedarwood and musk. Encased in a deep-blue gradient ombré bottle with the iconic fretwork on the top and outer packaging, it’s a nod to evening light on azure waters.',
  what_else_you_need_to_know: 'From sun-drenched days to moonlit nights on the Côte d’Azur, this warm, sensual new fragrance is inspired by Tory’s love of the sea.',
  ingredients: 'Fig, Freesia, Cedarwood Heart, Patchouli Heart'
 )
  tory_burch_nuit_azur_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/tory+burch/tory_burch_nuit_azur.png")
  tory_burch_nuit_azur.photos.attach(io: tory_burch_nuit_azur_attachment, filename: 'tory_burch_nuit_azur')


burberry_my_burberry_blush = Product.create!(
  name: 'My Burberry Blush',
  size: '1.6 oz/ 50 mL',
  price: 93.00,
  category: 'Perfume',
  brand_id: burberry.id,
  what_it_is: 'My Burberry Blush steps back into a London garden as it awakens in the first light of day. Capturing the senses, blossoming flowers open with a burst of energy, while dapples of glowing light weave, twist, and turn through the flora. Created by perfumers Francis Kurkdjian and Christopher Bailey, the fragrance opens with sharp pomegranate fused with vibrant lemon. Delicate rose petal notes are lifted with crisp apple, while a base of jasmine and wisteria round off the scent for an intensely feminine touch.',
  what_else_you_need_to_know: 'The bottle is enlivened with a feminine and sophisticated pink hue, reflecting the confident and spirited character of the new scent. Its signature design details remain with a lighter shade horn-look lid—inspired by the buttons of the BURBERRY trench coat—and a hand-tied gabardine knot around the neck.',
  ingredients: 'Pomegranate, Rose, Jasmine'
 )
  burberry_my_burberry_blush_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/burberry/burberry_my_burberry_blush.png")
  burberry_my_burberry_blush.photos.attach(io: burberry_my_burberry_blush_attachment, filename: 'burberry_my_burberry_blush')


maison_replica_sailing_day = Product.create!(
  name: '’REPLICA’ Sailing Day',
  size: '3.4 oz/ 100 mL',
  price: 126.00,
  category: 'Perfume',
  brand_id: maison_margiela.id,
  what_it_is: 'Sailing Day is a fresh fragrance that recalls the memory of soft rolling waves and the spirit of the sea through aromatic and pure notes of aquatic accord, iris asbolute, and red seaweed accord. Explore the infinite deep blue and feel the freshness of the ocean spray through notes of juniper essence and a unique aquatic accord. Dive deep into the sea and feel the refreshing sensation of rose superessence and a sharp adrenalin rush of iris and coriander. Navigating your sails in a new direction, charter through grounding notes of red seaweed essence and salty ambergris accord as you explore the ocean’s abyss.',
  what_else_you_need_to_know: 'The silhouette of each REPLICA bottle is inspired by classic apothecary jars, allowing the collection to be instantly identifiable. Each bottle carries a 100 percent cotton label, which is printed using black ink text and resembles the tags used on the clothing and accessories for the REPLICA couture collection. The unique pumps are wrapped with a rope to symbolize the authentic reproduction of the original REPLICA couture line.',
  ingredients: 'Aquatic Accord, Coriander, Red Seaweed Essence '
 )
  maison_replica_sailing_day_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/maison+margiela/maison_replica_sailing_day.png")
  maison_replica_sailing_day.photos.attach(io: maison_replica_sailing_day_attachment, filename: 'maison_replica_sailing_day')


la_mer_creme_de_la_mer = Product.create!(
  name: 'Crème de la Mer',
  size: '1 oz/ 30 mL',
  price: 175.00,
  category: 'Moisturizer',
  brand_id: la_mer.id,
  what_it_is: 'An ultra-rich moisturizing cream that creates an instant dewy finish.',
  what_it_does: 'This highly coveted moisturizer is known for its power to hydrate and improve dryness in as little as three days. Miracle Broth™ helps skin appear softer, nourished, soothed, and energized, while the powerful antioxidant lime tea protects against stress and pollution for a healthy-looking glow. Skin looks radiant and naturally balanced as imperfections fade.',
  what_else_you_need_to_know: 'The iconic opal jar is hand-filled within eight hours of the Crème’s creation. Miracle Broth is at the heart of La Mer and is infused into every treatment in the collection. This elixir is formulated with hand-harvested sea kelp and other nutrients and minerals unlocked via a natural fermentation process. Surging with vital energies, it supports the five facets of natural healing: moisture, regeneration, soothing, smoothing, and radiance—which help to bring skin back to its healthiest state.',
  how_to_use: ['To activate the Miracle Broth™, warm between your fingers until it becomes translucent to the eye.', 'Press gently onto cleansed face and neck, morning and night.', 'Pair with your daily La Mer regimen.'],
  ingredients: 'Algae (Seaweed) Extract, Mineral Oil, Petrolatum, Glycerin, Isohexadecane, Microcrystalline Wax, Lanolin Alcohol, Citrus Aurantifolia (Lime) Extract, Sesamum Indicum (Sesame) Seed Oil, Eucalyptus Globulus (Eucalyptus) Leaf Oil, Sesamum Indicum (Sesame) Seed Powder, Medicago Sativa (Alfalfa) Seed Powder, Helianthus Annuus (Sunflower) Seedcake, Prunus Amygdalus Dulcis (Sweet Almond) Seed Meal, Sodium Gluconate, Copper Gluconate, Calcium Gluconate, Magnesium Gluconate, Zinc Gluconate, Magnesium Sulfate, Paraffin, Tocopheryl Succinate, Niacin, Water, Beta-Carotene, Decyl Oleate, Aluminum Distearate, Octyldodecanol, Citric Acid, Cyanocobalamin, Magnesium Stearate, Panthenol, Limonene, Geraniol, Linalool, Hydroxycitronellal, Citronellol, Benzyl Salicylate, Citral, Sodium Benzoate, Alcohol Denat., Fragrance.'
 )
  la_mer_creme_de_la_mer_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/la+mer/la_mer_creme_de_la_mer.png")
  la_mer_creme_de_la_mer.photos.attach(io: la_mer_creme_de_la_mer_attachment, filename: 'la_mer_creme_de_la_mer')


weekends_and_chocolate_holiday_bath_truffle_set = Product.create!(
  name: 'Holiday Bath Truffle Set',
  size: 'set',
  price: 39.00,
  category: 'Bath and Body',
  brand_id: weekends_and_chocolate.id,
  what_it_is: 'An assortment of moisturizing foaming bath fizzies with collagen, nourishing oils, and a blend of natural exfoliating ingredients.',
  what_else_you_need_to_know: 'These truffles are handcrafted with many beneficial ingredients for the body. Organic blue green algae and coconut milk contain antioxidants, vitamins, and minerals to moisturize and detoxify the skin. White clay and kelp powder soften and exfoliate, leaving your skin renewed, healthy, and glowing.',
  how_to_use: ['Use daily.', 'Take one to two truffles, and drop in the bath.', 'Lay back and soak in the ultra-moisturizing, hydrating, and detoxifying blends.'],
  ingredients: 'Sodium Bicarbonate, Citric Acid, Sodium Lauryl Sulfoacetate (SLSA), Adosonia Gregoril (Cream of Tartar), Magnesium Sulfate (Epsom Salt), Dendritic Salt (Sodium Chloride), Olea Europaea (Olive Oil), Helianthus Annuus (Sunflower) Seed Oil, Persea Americana (Avocado) Oil, Vitis Vinifera (Grapeseed) Oil, Prunus Dulcis (Sweet Almond) Oil, Coconut (Cocos Nucifera) Oil, Glycine Soja (Soybean) Oil, Aloe Barbadensis (Aloe Vera) Powder, Tocopherols (Vitamin E), Simmondsia Chinensis (Jojoba) Seed Oil, Propylene Glycol, Hamamelis Virginiana Witch Hazel Distillate (and) Alcohol, Hydrolyzed Collagen Protein, Himalayan Pink Salt (Sodium Chloride), Sucrose, Zea Mays (Corn) Starch, Sodium Lauryl Sulfate (SLS), Sodium Cocoate, Sodium Stearate, TEA-Lauryl Sulfate, Sorbitol, Deionized Water, Cocamidopropyl Hydroxysultaine, Sodium Laureth Sulfate (SLES), Acetamide MEA, Phenoxyethanol (and) Caprylyl Glycol (and) Sorbic Acid, Aqua, Organic Alcohol, Organic Aphanizomenon Fos Aquae (Organic Blue Green Algae) Extract, Kojic Acid, Beta Vulgris (Beet Root Powder, Spirulina Maxima (Spirulina) Powder, Scophyllum Nodosum (Atlantic Kelp) Powder, Kaolin White Clay, Coconut Milk, Capric Triglycerides, Camellia Sinensis Leaf Extract (Green Tea), Mica, Iron Oxide, Titanium Dioxide, Zinc Stearate, Cellulose, Acrylates Crosspolymer, Aluminum, FD&C Blue No. 1 Aluminum Lake, Ultramarine Blue, Chromium Oxide Green, Hydrogenated Polyisobutene, Palmitic Acid, Lavandula Angustifolia (Lavender) Flower, Calendula Officials (Calendula) Flower, Cantaurea Cyanus (Cornflower) Flower, Citrus Aurantium Duleius (Orange) Peel, Rosa Centrifolia (Rose) Flower, Globe Amaranth (Gomphrena).'
 )
  weekends_and_chocolate_holiday_bath_truffle_set_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/weekends+and+chocolate/weekends_and_chocolate_holiday_bath_truffle_set.png")
  weekends_and_chocolate_holiday_bath_truffle_set.photos.attach(io: weekends_and_chocolate_holiday_bath_truffle_set_attachment, filename: 'weekends_and_chocolate_holiday_bath_truffle_set')


kiehl_ultimate_strength_hand_salve = Product.create!(
  name: 'Ultimate Strength Hand Salve',
  size: '5 oz/ 150 mL',
  price: 23.00,
  category: 'Hand Cream & Foot Cream',
  brand_id: kiehl.id,
  what_it_is: 'A maximum-strength moisturizer for dry, active hands.',
  what_it_does: 'Ultimate Strength Hand Salve helps protect against and repair the appearance of severe dryness caused by manual labor, neglect, or exposure to harsh elements. It allows skin to draw and absorb water from the air, forming a "glove-like" protective barrier against moisture loss. And it’s enriched with a blend of botanical oils and natural wax derived from olive oil to soothe, moisturize, and condition skin.',
  what_else_you_need_to_know: 'Kiehl’s is inspired by its rich heritage as an old-world apothecary, applying over 165 years’ worth of cosmetic, pharmaceutical, herbal, and medicinal knowledge into the formulations. They utilize the finest natural ingredients and incorporate advanced scientific technologies to ensure the highest quality and most efficacious formulas without compromise. They are protective of the environment as they maximize the use of renewable, sustainable, and biodegradable ingredients. Kiehl’s proudly stands behind the quality, efficacy, and safety of each of their products.',
  how_to_use: ['To address severe dryness, apply hand salve liberally to clean hands.', 'For best results, reapply to hands after washing.'],
  ingredients: 'Water, Glycerin, Caprylic/Capric/Stearic Triglyceride, Butylene Glycol, Aluminum Starch Octenylsuccinate, Hydrogenated Stearyl Olive Esters, Shea Butter, Cetearyl Alcohol, Peg-75 Stearate, Glyceryl Stearate, Cetyl Alcohol, Bis-Diglyceryl Polyacyladipate-2, Sesame Seed Oil, Squalane, Dimethicone, Ceteth-20, Phenoxyethanol, Avocado Oil, Steareth-20, Ceteareth-20, Methylparaben, Sodium Dehydroacetate, Tocopheryl Acetate, Ppg-5-Ceteth-20, Eucalyptus Globulus Leaf Oil, Allantoin, Disodium Edta, Aloe Barbadensis Leaf Juice.'
 )
  kiehl_ultimate_strength_hand_salve_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/kiehl/kiehl_ultimate_strength_hand_salve.png")
  kiehl_ultimate_strength_hand_salve.photos.attach(io: kiehl_ultimate_strength_hand_salve_attachment, filename: 'kiehl_ultimate_strength_hand_salve')


fresh_brown_sugar_body_polish_exfoliator = Product.create!(
  name: 'Brown Sugar Body Polish Exfoliator',
  size: '14.1 oz/ 400 g',
  price: 67.00,
  category: 'Scrub & Exfoliants',
  brand_id: fresh.id,
  what_it_is: 'An award-winning natural sugar scrub that gently buffs dry skin, while delivering 24-hour moisture.',
  what_else_you_need_to_know: 'Fresh pioneered the use of sugar as a non-drying exfoliator with this this moisturizing body scrub and it\'s still unrivaled for silky soft skin. Brown sugar crystals are natural humectants that prevent moisture loss, which gently remove dry skin, while the precious oils nourish.',
  how_to_use: ['Use your finger to mix the product in the jar so the oils are evenly distributed.', 'Then apply a generous pinch to wet skin and massage gently.', 'Repeat until you\'ve covered your entire body.', 'Rinse well and pat dry.', 'Be careful in the shower as the oils can make tile surfaces slippery.'],
  ingredients: 'Sucrose, Prunus Amygdalus Dulcis (Sweet Almond)Oil, Prunus Armeniaca (Apricot) Kernel Oil, Simmondsia Chinensis(Jojoba) Seed Oil, Oenothera Biennis (Evening Primrose) Oil, CitrusLimon (Lemon) Peel Oil, Passiflora Incarnata Seed Oil, Citrus Grandis(Grapefruit) Peel Oil, Helianthus Annuus (Sunflower) Seed Oil, LitseaCubeba Fruit Oil, Citrus Aurantium Bergamia (Bergamot) Fruit Oil,Citrus Aurantium Dulcis (Orange) Oil, Cymbopogon SchoenanthusOil, Panax Ginseng Root Extract, Tocopherol, Limonene, Citral,Linalool, BHT, Triethyl Citrate.'
 )
  fresh_brown_sugar_body_polish_exfoliator_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/fresh/fresh_brown_sugar_body_polish_exfoliator.png")
  fresh_brown_sugar_body_polish_exfoliator.photos.attach(io: fresh_brown_sugar_body_polish_exfoliator_attachment, filename: 'fresh_brown_sugar_body_polish_exfoliator')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')


#  = Product.create!(
#   name: '',
#   color: [],
#   size: '',
#   price: .00,
#   category: '',
#   brand_id: .id,
#   what_it_is: '',
#   what_it_does: '',
#   what_else_you_need_to_know: '',
#   how_to_use: [],
#   ingredients: ''
#  )
#   variable_attachment = open("")
#   variable.photos.attach(io: variable_attachment, filename: 'variable')
