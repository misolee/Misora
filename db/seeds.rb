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

tatcha_water_cream = Product.create!(
  name: 'The Water Cream',
  color: [],
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
  what_it_is: 'What it is: An easy-application, waterproof liquid liner that stays on all day and night.',
  what_it_does: 'This easy-glide, quick-dry precision liner stays in place until you say when—no smudges, feathering, or running. The thin, marker-like tip is easy to use, even for the beauty beginner, and delivers any look—from a thin line to a bold, dramatic stroke. It goes on smoothly without skipping, smudging, or pulling, and lasts all day.',
  what_else_you_need_to_know: '',
  how_to_use: [],
  ingredients: ''
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
  color: [],
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
  color: ['Matte Pink - sheer matte ballet pink', 'Pink Glow - light pink', 'Coral Glow - peach', 'Berry - Sheer berry balm adjusts to your perfect lilac glow', 'Raspberry - 007 - magenta', 'Holographic Pink - light pink holographic', 'Holographic Purple - light purple holographic', 'Rose Gold - light pink with gold shimmer'],
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
