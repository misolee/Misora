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
herbivore = Brand.create!(name: 'HERBIVORE')
sol_de_janeiro = Brand.create!(name: 'SOL DE JANEIRO')
loccitane = Brand.create!(name: 'L\'OCCITANE')
giorgio_armani = Brand.create!(name: 'GIORGIO ARMANI')
make_up_forever = Brand.create!(name: 'MAKE UP FOREVER')
bareminerals = Brand.create!(name: 'BAREMINERALS')
drunk_elephant = Brand.create!(name: 'DRUNK ELEPHANT')
shiseido = Brand.create!(name: 'SHISEIDO')
estee_lauder = Brand.create!(name: 'ESTÉE LAUDER')
dyson = Brand.create!(name: 'DYSON')
bumble_and_bumble = Brand.create!(name: 'BUMBLE AND BUMBLE')
sk_ii = Brand.create!(name: 'SK-II')
olehenriksen = Brand.create!(name: 'OLEHENRIKSEN')
caudalie = Brand.create!(name: 'CAUDALIE')
belif = Brand.create!(name: 'BELIF')
lancome = Brand.create!(name: 'LANCÔME')
peter_thomas_roth = Brand.create!(name: 'PETER THOMAS ROTH')
bobbi_brown = Brand.create!(name: 'BOBBI BROWN')
clinique = Brand.create!(name: 'CLINIQUE')
first_aid_beauty = Brand.create!(name: 'FIRST AID BEAUTY')
dr_jart = Brand.create!(name: 'DR.JART+')
it_cosmetics = Brand.create!(name: 'IT COSMETICS')
dr_dennis_gross_skincare = Brand.create!(name: 'DR. DENNIS GROSS SKINCARE')
dr_brandt_skincare = Brand.create!(name: 'DR. BRANDT SKINCARE')
olaplex = Brand.create!(name: 'OLAPLEX')
briogeo = Brand.create!(name: 'BRIOGEO')
alterna_haircare = Brand.create!(name: 'ALTERNA HAIRCARE')
living_proof = Brand.create!(name: 'LIVING PROOF')
amika = Brand.create!(name: 'AMIKA')
kat_von_d = Brand.create!(name: 'KAT VON D')
urban_decay = Brand.create!(name: 'URBAN DECAY')
benefit_cosmetics = Brand.create!(name: 'BENEFIT COSMETICS')
nars = Brand.create!(name: 'NARS')
too_faced = Brand.create!(name: 'TOO FACED')
naked = Brand.create!(name: 'NAKED')


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


philsoophy_holiday_shower_gel = Product.create!(
  name: 'Holiday Shower Gel',
  size: '16 oz/ 480 mL',
  price: 18.00,
  category: 'Body Wash & Shower Gel',
  brand_id: philosophy.id,
  what_it_is: 'An award-winning, multitasking shampoo, shower gel, and bubble bath conditions as it cleanses, leaving skin and hair silky soft and lightly perfumed—perfect for the holidays.',
  what_else_you_need_to_know: 'Make the most of the holidays this year! This extra-rich and creamy formula gently cleanses and conditions from head to toe. Perfect for a luxurious shower or bath experience, each of the festive holiday scents will uplift the senses.',
  how_to_use: ['Apply to wet body or scalp.', 'Lather, rinse, repeat if desired.', 'If using as a bubble bath, drizzle a generous amount under running water and enjoy.'],
  ingredients: 'Water, Sodium Laureth Sulfate, Lauryl Betaine, Parfum/Fragrance, Acrylates Copolymer, Sodium Chloride, Glycerin, Glycol Distearate, Disodium Laureth Sulfosuccinate, Phenoxyethanol, Ppg-2 Hydroxyethyl Cocamide, Sodium Benzoate, Buteth-3, Citric Acid, Polyquaternium-7, Sodium Hydroxide, Sodium Benzotriazolyl Butylphenol Sulfonate, Sodium Sulfate, Benzyl Salicylate, Laureth-2, Bht, Disodium Edta, Maltodextrin, Limonene, Tributyl Citrate, Aloe Barbadensis Leaf Juice, Benzoic Acid, Panthenol, Camellia Sinensis Leaf Extract, Sodium Sulfite, Polysorbate 20, Caprylyl Glycol, Potassium Sorbate, Hexylene Glycol, D&C Red No. 33 (Ci 17200), Fd&C Blue No. 1 (Ci 42090).'
)
  philsoophy_holiday_shower_gel_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/philosophy/philsoophy_holiday_shower_gel.png")
  philsoophy_holiday_shower_gel.photos.attach(io: philsoophy_holiday_shower_gel_attachment, filename: 'philsoophy_holiday_shower_gel')


kiehl_creme_de_corps_soy_milk_and_honey_whipped_body_butter = Product.create!(
  name: 'Creme de Corps Soy Milk & Honey Whipped Body Butter',
  size: '8 oz/ 226 g',
  price: 39.00,
  category: 'Body Moisturizer',
  brand_id: kiehl.id,
  what_it_is: 'A whipped body butter enriched with soy milk and honey for super-soft skin.',
  what_it_does: 'Luxuriously scented, this lightweight, quick-absorbing body butter provides up to 24 hours of hydration. It’s decadently air-whipped for instant penetration to restore, protect, and soften skin.',
  what_else_you_need_to_know: 'Kiehl’s is inspired by its rich heritage as an old-world apothecary, applying over 165 years’ worth of cosmetic, pharmaceutical, herbal, and medicinal knowledge into the formulations. They utilize the finest natural ingredients and incorporate advanced scientific technologies to ensure the highest quality and most efficacious formulas without compromise. They are protective of the environment as they maximize the use of renewable, sustainable, and biodegradable ingredients. Kiehl’s proudly stands behind the quality, efficacy, and safety of each of their products.',
  how_to_use: ['Apply on slightly damp skin.', 'For best results, a body moisturizer should be used on lightly towel-dried skin after bathing or showering to help seal in the surface moisture.'],
  ingredients: 'Water, Glycerin, Caprylic/Capric Triglyceride, Nylon-66, Shea Butter, Glyceryl Stearate, Peg-7 Glyceryl Cocoate, Peg-40 Stearate, Squalane, Myristyl Myristate, Ammonium Polyacryloyldimethyl Taurate, Simmondsia Chinensis (Jojoba) Butter, Sorbitan Tristearate, Fragrance, Undecane, Phenoxyethanol, Cetyl Alcohol, Tridecane, Tocopherol, Sorbic Acid, Trisodium Ethylenediamine Disuccinate, Chlorhexidine Digluconate, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate, Sodium Hydroxide, Coumarin, Benzyl Alcohol, Limonene, Beta-Carotene.'
)
  kiehl_creme_de_corps_soy_milk_and_honey_whipped_body_butter_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/kiehl/kiehl_creme_de_corps_soy_milk_and_honey_whipped_body_butter.png")
  kiehl_creme_de_corps_soy_milk_and_honey_whipped_body_butter.photos.attach(io: kiehl_creme_de_corps_soy_milk_and_honey_whipped_body_butter_attachment, filename: 'kiehl_creme_de_corps_soy_milk_and_honey_whipped_body_butter')


sol_de_janeiro_brazilian_bod_buff_smoothing_scurb_n_mask = Product.create!(
  name: 'Brazilian Bod Buff Smoothing Scrub ‘N’ Mask',
  size: '5.4 oz/ 160 mL',
  price: 25.00,
  category: 'Scrub & Exfoliants',
  brand_id: sol_de_janeiro.id,
  what_it_is: 'A unique, first-of-its-kind formula for the body that works double duty as a daily exfoliating scrub and a detoxifying treatment mask.',
  what_it_does: 'This unique, first-of-its-kind formula for the body that works double duty as a daily exfoliating scrub and a detoxifying treatment mask. Crushed Brazilian quartz crystal help polish and smooth, while soothing Amazon river clay helps purify. Get ready for super soft, irresistible, touch-me-now Brazilian babe skin.',
  what_else_you_need_to_know: 'Amazon River kaolin clay from the banks of the Amazon River features negatively-charged particles that bond to positively-charged toxins and other impurities for an intensely purifying effect.',
  how_to_use: ['Apply on dry skin.', 'Leave on for five to 10 minutes until dry.', 'In the shower, allow the warm water to soften the mask, transforming it into a scrub.', 'Continue the treatment by massaging in circular motions to reveal gleaming and beautiful skin.'],
  ingredients: 'Water, Kaolin, Oryza Sativa (Rice) Bran Wax, Pumice, Caprylic/Capric Triglyceride, Zinc Oxide, Titanium Dioxide, Fragrance, Cetearyl Alcohol, Magnesium Aluminum Silicate, Ceteareth-20, Cetyl Alcohol, Sodium Stearoyl Glutamate, Glyceryl Stearate, Glyceryl Caprylate, Quartz, Euterpe Oleracea (Acai) Fruit Oil, Cocos nucifera (Coconut) Oil, Theobroma Grandiflorum (Cupuacu) Seed Butter, Dimethicone, Xanthan Gum, Annatto, Dehydroacetic Acid, Benzyl Alcohol, Melia Azadirachta Leaf Extract, Melia Azadirachta Flower Extract, Lawsonia Inermis (Henna) Extract, Ocimum Basilicum (Basil) Extract, Curcuma Longa (Turmeric) Root Extract, Mica, Blue 1 Lake (CI 42090), Iron Oxides (CI 77492).'
)
  sol_de_janeiro_brazilian_bod_buff_smoothing_scurb_n_mask_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/sol+de+janeiro/sol_de_janeiro_brazilian_bod_buff_smoothing_scurb_n_mask.png")
  sol_de_janeiro_brazilian_bod_buff_smoothing_scurb_n_mask.photos.attach(io: sol_de_janeiro_brazilian_bod_buff_smoothing_scurb_n_mask_attachment, filename: 'sol_de_janeiro_brazilian_bod_buff_smoothing_scurb_n_mask')


moroccan_oil_body_butter = Product.create!(
  name: 'Body Butter',
  size: '6.4 oz/ 190 mL',
  price: 56.00,
  category: 'Body Moisturizer',
  brand_id: moroccan_oil.id,
  what_it_is: 'A concentrated body cream, infused with argan oil, that absorbs quickly without leaving behind a greasy feel.',
  what_it_does: 'Moroccanoil’s concentrated Body Butters are enriched with argan oil to deliver immediate and long-lasting hydration. Fast-absorbing and non-greasy, they infuse your skin with antioxidant-rich olive, avocado, and pomegranate oils, along with emollient cocoa, mango, and shea butters for maximum moisture replenishment. Each Body Butter is delicately fragranced with scents that range from a modern rose scent to an energizing orange blossom scent.',
  what_else_you_need_to_know: 'This product is free of mineral oil.',
  how_to_use: ['Massage daily or as needed into damp skin to lock in moisture, concentrating on rough, dry areas.'],
  ingredients: 'Water, Octyldodecanol, C12-15 Alkyl Benzoate, Cetearyl Alcohol, Glycerin, Cetyl Alcohol, Myristyl Myristate, Glyceryl Stearate, Cetearyl Glucoside, Phenyl Trimethicone, Argania Spinosa (Argan) Kernel Oil, Butyrospermum Parkii (Shea) Butter, Theobroma Cacao (Cocoa) Seed Butter, Mangifera Indica (Mango) Seed Butter, Olea Europaea (Olive) Fruit Oil, Persea Gratissima (Avocado) Oil, Punica Granatum Seed Oil, Glycine Soja (Soybean) Oil, Fragrance, Squalane, Glucose, Ribose, Xylitylglucoside, Biosaccharide Gum-1, Tocopherol, Ascorbyl Palmitate, Tocopheryl Acetate, Allantoin, Anhydroxylitol, Xylitol, Dimethicone, BHT, Hydrogenated Polyisobutene, Ethylene/Propylene/Styrene Copolymer and Butylene/Ethylene/Styrene Copolymer, Sodium Stearoyl Glutamate, Sodium Polyacrylate, Disodium Edta, Caprylyl Glycol, Phenoxyethanol, Chlorphenesin, Linalool, Limonene, Geraniol, Benzyl Benzoate, Citronellol, Citral.'
)
  moroccan_oil_body_butter_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/moroccan+oil/moroccan_oil_body_butter.png")
  moroccan_oil_body_butter.photos.attach(io: moroccan_oil_body_butter_attachment, filename: 'moroccan_oil_body_butter')


loccitane_almond_smoothing_and_beautifying_supple_skin_oil = Product.create!(
  name: 'Almond Smoothing and Beautifying Supple Skin Oil',
  size: '3.4 oz/ 100 mL',
  price: 50.00,
  category: 'Body Lotions & Body Oils',
  brand_id: loccitane.id,
  what_it_is: 'A quickly absorbed indulgent body oil formulated with more than 50 percent almond oil to help skin feel firmer, smoothed, and hydrated.',
  what_it_does: 'Reveal a satiny-smooth body with one of L’Occitane’s cult favorites. Thanks to more than 50 percent almond oil, naturally rich in omega 6, and camelina oil, rich in omega 3, the Almond Smoothing and Beautifying Supple Skin Oil helps skin feel nourished and more supple. Its luxurious texture melts into the skin and leaves it with a subtle scent of fresh almonds. Hydrated for up to 48 hours, skin is as soft as satin.',
  what_else_you_need_to_know: 'Almonds are an incredibly delicate fruit to grow: the best almonds require cool air without ever freezing. L\'Occitane almonds are sourced from a very special region in Haute Provence, where giant windmills circulate air to create an environment for some of the most delicious and nutritious almonds to grow. L\'Occitane supports the sustainability of almond trees in the region, as these trees—while difficult to grow—are a staple to the beauty of the Provencal landscape.',
  how_to_use: ['Apply with a spray, massaging into the skin with upward circular motions.', 'Focus on zones concerned by skin slackening (thighs, buttocks, tummy, and arms).', 'Perfect to mix with loose bronzing powder.'],
  ingredients: 'Prunus Amygdalus Dulcis (Sweet Almond) Oil, Caprylic/Capric Triglyceride, Oleyl Alcohol, Fragrance, Camelina Sativa Seed Oil, Helian Thus Annuus (Sunflower) Seed Oil, Tocopherol, Dioleyl Tocopheryl Methylsilanol, Limonene, Coumarin, Linalool, Citral.'
)
  loccitane_almond_smoothing_and_beautifying_supple_skin_oil_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/loccitane/loccitane_almond_smoothing_and_beautifying_supple_skin_oil.png")
  loccitane_almond_smoothing_and_beautifying_supple_skin_oil.photos.attach(io: loccitane_almond_smoothing_and_beautifying_supple_skin_oil_attachment, filename: 'loccitane_almond_smoothing_and_beautifying_supple_skin_oil')


fresh_seaberry_restorative_body_cream = Product.create!(
  name: 'Seaberry Restorative Body Cream',
  size: '6.8 oz',
  price: 27.00,
  category: 'Body Lotions & Body Oils',
  brand_id: fresh.id,
  what_it_is: 'An ultra-hydrating and nourishing treatment for dry skin.',
  what_it_does: 'Rich with omegas 3,6, 7, and 9, this moisturizing formula hydrates and nourishes extra dry skin, calming and relieving irritation. Fortified with seaberry oil, also known as seabuckthorn oil, cranberry seed oil, and sal seed butter, these ingredients help to restore, protect, and soften the skin. Vitamin E also works to maintain the skin\'s elasticity and smoothness while apricot kernel seed oil and jojoba seed oil help to hydrate and nourish. Sea lavender further helps soothe and calm dry skin. Its creamy rich texture offers a luxurious experience.',
  what_else_you_need_to_know: 'While Fresh has used seaberry oil in small doses in existing skin care products, the Seaberry Bodycare Collection marks the first time anyone has been able to introduce the ingredient in a highly concentrated form. One of the major challenges of doing so is the oil\'s strong and specific odor as well as its bright orange color that can literally tint the skin. After a long process using the advanced technology available to Fresh, Co-founder Lev Glazman discovered a way to filtrate the oil\'s color so it would not stain the skin, and he created a unique natural fragrance that not only neutralizes the oil\'s odor but is positively addictive.',
  ingredients: 'Seaberry Oil, Cranberry Seed Oil, Sal Seed Butter, Apricot Kernel Seed Oil'
)
  fresh_seaberry_restorative_body_cream_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/fresh/fresh_seaberry_restorative_body_cream.png")
  fresh_seaberry_restorative_body_cream.photos.attach(io: fresh_seaberry_restorative_body_cream_attachment, filename: 'fresh_seaberry_restorative_body_cream')


fresh_sugar_lychee_body_lotion = Product.create!(
  name: 'Sugar Lychee Body Lotion',
  size: '10 oz/ 300 mL',
  price: 23.00,
  category: 'Body Lotions & Body Oils',
  brand_id: fresh.id,
  what_it_is: 'A sweet, lychee-scented luxury body moisturizing lotion.',
  what_it_does: 'Thanks to the therapeutic qualities of real brown sugar, Fresh SugarBath Sugar Lychee Body Lotion leaves the skin feeling dewy and soft. The light, supple texture of this superb body moisturizer makes it easy to use any time of the day, in any climate.',
  what_else_you_need_to_know: 'The instant-classic sweet citrus scent is based on Fresh\'s best-selling Sugar Lychee fragrance, which sparkles with delicate grapefruit, lemon, lime, juicy lychee, and mango.',
  ingredients: 'Water (Aqua), Hexyldecanol, Hexyldecyl Laurate, Polysorbate 60, Sorbitan Stearate, Shea Butter (Butyrospernum Parkii), Calendula Extract (Calendula Officinalis), Aloe Extract (Aloe Barbendensis), Mallow Extract (Malva Sylvestris), Lavender Extract (Lavandula Hybrida), Cetyl Alcohol, Fragrance (Parfum), Phenoxyethanol, Methylparaben, Ethylparaben, Propylparaben, Butylparaben, Carbomer, Imidazolidinyl Urea, Tea, Allantoin, Sucrose, Polysorbate 20, Tocopheryl Acetate, Peg 40 Hydrogenated Castor Oil, Peg-35 Castor Oil, BHT.'
)
  fresh_sugar_lychee_body_lotion_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/fresh/fresh_sugar_lychee_body_lotion.png")
  fresh_sugar_lychee_body_lotion.photos.attach(io: fresh_sugar_lychee_body_lotion_attachment, filename: 'fresh_sugar_lychee_body_lotion')


loccitane_almond_smoothing_and_beautifying_milk_concentrate = Product.create!(
  name: 'Almond Smoothing and Beautifying Milk Concentrate',
  size: '7 oz/ 200 mL',
  price: 50.00,
  category: 'Body Lotions & Body Oils',
  brand_id: loccitane.id,
  what_it_is: 'A silky body cream enriched with almond oil and milk for a skin that looks firmer, smoothed, and hydrated for up to 48 hours.',
  what_it_does: 'This super-smooth Milk Concentrate is formulated with powerful almond extracts to melt into the skin and leave it as soft as satin. Skin looks firmer and smoothed thanks to the action of almond proteins, a silicium derivative and a new complex combining a walnut seed extract and an almond tightening extract. Almond milk and oil help nourish and envelop skin with a mouthwatering scent of fresh almonds.',
  what_else_you_need_to_know: 'Almonds are an incredibly delicate fruit to grow: the best almonds require cool air without ever freezing. L\'Occitane almonds are sourced from a very special region in Haute Provence, where giant windmills circulate air to create an environment for some of the most delicious and nutritious almonds to grow. L\'Occitane supports the sustainability of almond trees in the region, as these trees—while difficult to grow—are a staple to the beauty of the Provencal landscape.',
  how_to_use: ['Apply on dry skin, massaging with upward circular motions.', 'Focus on zones concerned by skin slackening (thighs, buttocks, tummy, and arms).'],
  ingredients: 'Water, Isononyl Isononanoate, Cyclomethicone, Glycerin, Cetearyl Alcohol, Methylsilanol Mannuronate, Triethylhexanoin, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Protein, Cetearyl Glucoside, Mannitol, Menthyl Lactate, Parfum/Fragrance, Carbomer, Sodium Polyacrylate, Glyceryl Polymethacrylate, Biosaccharide Gum-1, Methylisothiazolinone, Sorbic Acid, Glyceryl Stearate Se, Xanthan Gum, Benzoic Acid, Dehydroacetic Acid, Tocopherol, Phenoxyethanol, Chlorphenesin, Ppg-26-Buteth-26, Ethylhexylglycerin, Peg-40 Hydrogenated Castor Oil, Sodium Lauryl Sulfate, Polyaminopropyl Biguanide, Limonene, Linalool, Coumarin.'
)
  loccitane_almond_smoothing_and_beautifying_milk_concentrate_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/loccitane/loccitane_almond_smoothing_and_beautifying_milk_concentrate.png")
  loccitane_almond_smoothing_and_beautifying_milk_concentrate.photos.attach(io: loccitane_almond_smoothing_and_beautifying_milk_concentrate_attachment, filename: 'loccitane_almond_smoothing_and_beautifying_milk_concentrate')


dior_airflash_spray_foundation = Product.create!(
  name: 'Dior Airflash Spray Foundation',
  color: ['100 Ivory - Very light: neutral undertone', '101 Cream - Very light: warm yellow undertone', '200 Light Beige - Light: neutral undertone', '202 Cameo - Light: cool pink undertone', '300 Medium Beige - Light to medium: neutral undertone', '302 Rosy Beige - Light to medium: cool pink undertone', '304 Almond Beige - Light to medium: cool undertone, balances redness', '321 Amber Beige - Light to medium: warm olive undertone', '401 Ochre - Medium: warm yellow undertone', '600 Mocha - Medium to dark: neutral undertone'],
  size: '2.3 oz/ 70 mL',
  price: 62.00,
  category: 'Foundation',
  brand_id: dior.id,
  what_it_is: 'An ultra-fluid, water-based foundation that blends full coverage with a lightweight formula providing imperceptible second skin for up to 24 hours.',
  what_else_you_need_to_know: 'Enriched with light-diffusing pigments, this foundation instantly smooths the look of skin and boosts radiance for a perfect complexion that lasts all day, even on the runway. The unique micro-diffusion system delivers a fine mist of foundation to provide a soft, velvety complexion. The water-resistant formula ensures up to 12 hours of hold and colors that stay true. Its ultra-fluid and ultra-fine texture allows for buildable, custom coverage to suit any skin tone and texture.',
  how_to_use: ['Shake the can for five seconds.', 'Spray 20 cm (eight inches) from the face in a "Z" formation.', 'For optimal makeup results, spray onto the Dior Backstage Buffing Brush and apply in small circular motions to the face, gently dabbing onto areas that require more coverage.', 'Repeat as needed until you achieve the desired coverage.'],
  ingredients: 'Ultra Fine Diffusion Technology, Mother of Pearl Pigments'
)
  dior_airflash_spray_foundation_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dior/dior_airflash_spray_foundation.png")
  dior_airflash_spray_foundation.photos.attach(io: dior_airflash_spray_foundation_attachment, filename: 'dior_airflash_spray_foundation')



giorgio_armani_luminous_silk_foundation = Product.create!(
  name: 'Luminous Silk Foundation',
  color: ['2 - fair skin with neutral undertone', '3.5 - light to medium with warm undertone', '4 - light skin with golden undertone', '4.5 - light skin with neutral undertone', '5 - light to medium with neutral undertone', '6.25 - medium to tan skin with peachy undertone', '7 - medium to tan skin with neutral undertone', '8 - tan skin with neutral undertone', '9 - tan to deep with neutral undertone', '11.5 - deep skin with red undertone', '14 - very deep skin with red undertone'],
  size: '1 oz/ 30 mL',
  price: 64.00,
  category: 'Foundation',
  brand_id: giorgio_armani.id,
  what_it_is: 'A lightweight, liquid foundation that delivers buildable coverage and a long-lasting, hydrating glow with a luminous, natural finish.',
  what_else_you_need_to_know: 'This award-winning foundation is formulated with Micro-Fil technology, which produces a low-density product that pairs high-impact pigments with weightless texture. This foundation glides seamlessly onto the skin, leaving a finish that’s reminiscent of charmeuse silk.',
  how_to_use: ['Apply with the Armani Blender Brush (sold separately) for a seamless, airbrushed finish.'],
  ingredients: 'Micro-Fil Technology: Provides a translucent radiance and flawless finish.'
)
  giorgio_armani_luminous_silk_foundation_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/giorgio+armani/giorgio_armani_luminous_silk_foundation.png")
  giorgio_armani_luminous_silk_foundation.photos.attach(io: giorgio_armani_luminous_silk_foundation_attachment, filename: 'giorgio_armani_luminous_silk_foundation')


make_up_forever_ultra_hd_invisible_cover_foundation = Product.create!(
  name: 'Ultra HD Invisible Cover Foundation',
  color: ['Y205 - Albaster', 'R220 - Pink Porcelain', 'Y235 - Ivory Beige', 'R250 - Beige Nude', '140 = Y305 - Soft Beige', '125 = Y315 - Sand', '145 = R360 - Neutral', '153 = Y405 - Golden Honey', 'R430 - Hazelnut', '177 = Y505 - Cognac', 'R540 - Dark Brown'],
  size: '1.01 oz/ 30 mL',
  price: 43.00,
  category: 'Foundation',
  brand_id: make_up_forever.id,
  what_it_is: 'A game-changing, top-selling foundation with buildable coverage and a natural finish, best suited for normal to combination skin.',
  what_else_you_need_to_know: 'This is the icon that changed the face of foundation. It makes skin look 100-percent flawless, yet is zero-percent noticeable. The long-lasting fluid has a second-skin feel. Often cited as one of the best liquid foundations, this pro essential provides completely invisible, seamless coverage.',
  how_to_use: ['Apply two pumps of Ultra HD Liquid Foundation in thin layers, starting in the center of the face and stretching outward.', 'Press and roll to build coverage where needed.'],
)
  make_up_forever_ultra_hd_invisible_cover_foundation_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/make+up+forever/make_up_forever_ultra_hd_invisible_cover_foundation.png")
  make_up_forever_ultra_hd_invisible_cover_foundation.photos.attach(io: make_up_forever_ultra_hd_invisible_cover_foundation_attachment, filename: 'make_up_forever_ultra_hd_invisible_cover_foundation')


bareminerals_complexion_rescue_tinted_moisturizer_broad_spectrum_spf_30 = Product.create!(
  name: 'COMPLEXION RESCUE™ Tinted Moisturizer Broad Spectrum SPF 30',
  color: ['Opal 01 - for fair skin with cool undertones', 'Vanilla 02 - for light skin with neutral undertones', 'Suede 04 - for medium to tan skin with cool undertones', 'Natural 05 - for medium to tan skin with cool to neutral undertones', 'Ginger 06 - for medium skin with warm undertones', 'Tan 07 - for tan skin with cool undertones', 'Spice 08 - for tan to dark skin with neutral to warm undertones', 'Chestnut 09 - for dark skin with neutral to warm undertones'],
  size: '1.18 oz',
  price: 30.00,
  category: 'BB & CC Cream',
  brand_id: bareminerals.id,
  what_it_is: 'A multitasking gel cream that combines hydrating skincare benefits with naturally radiant coverage.',
  what_it_does: 'Get instant hydration and a healthy glow, this multitasking gel cream is the best of a BB, CC, and Tinted Moisturizer, all in one. Complexion Rescue™ is makeup that’s actually skincare in disguise—this formula began as a moisturizer and we used our years of expertise in foundation to transform it into a skin-quenching complexion perfecter that’s beautifully radiant so unique that the formula itself is patented.',
  what_else_you_need_to_know: 'Complexion Rescue™ is hypoallergenic, noncomedogenic, oil-free, and free of fragrance.',
  how_to_use: ['Apply to clean skin with fingertips or brush. Layer for additional coverage at home or on-the-go.', 'Try Complexion Rescue with bareMinerals® Smoothing Face Brush for a professional, flawless finish.'],
  ingredients: 'Water, Coconut Alkanes, Propanediol, Squalane, Trehalose, Isostearic Acid, Glycerin, Silica, Agar, Caprylic/Capric Triglyceride, Globularia Cordifolia Callus Culture Extract, Salicornia Herbacea Extract, Melilotus Officinalis Extract, Coco-Caprylate/Caprate, Butylene Glycol, Lauroyl Lysine, Sodium Hyaluronate, Succinoglycan, Polysorbate 60, Cellulose Gum, Polyglyceryl-4 Laurate/Succinate, Sorbitan Sesquiisostearate, Magnesium Stearate, Magnesium Hydroxide, Magnesium Chloride, Potassium Chloride, Calcium Chloride, Potassium Sorbate, Phenoxyethanol. May Contain: Titanium Dioxide, Iron Oxides.'
)
  bareminerals_complexion_rescue_tinted_moisturizer_broad_spectrum_spf_30_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bareminerals/bareminerals_complexion_rescue_tinted_moisturizer_broad_spectrum_spf_30.png")
  bareminerals_complexion_rescue_tinted_moisturizer_broad_spectrum_spf_30.photos.attach(io: bareminerals_complexion_rescue_tinted_moisturizer_broad_spectrum_spf_30_attachment, filename: 'bareminerals_complexion_rescue_tinted_moisturizer_broad_spectrum_spf_30')


fresh_lotus_youth_preserve_moisturizer = Product.create!(
  name: 'Lotus Youth Preserve Moisturizer',
  size: '1.6 oz/ 50 mL',
  price: 45.00,
  category: 'Moisturizer',
  brand_id: fresh.id,
  what_it_is: 'A daily moisturizer that gives a dewy glow and prevents early signs of aging, so you look good now and later.',
  what_else_you_need_to_know: 'A bestseller for its lightweight texture and refreshing scent, this face cream delivers 24-hour hydration for smooth, supple, radiant skin. Featuring antioxidant lotus root extract and vitamin E in Fresh’s Super 7 Complex, it looks great under makeup and doesn’t pill—even at 10PM!',
  how_to_use: ['After cleansing and toning, apply a generous layer to the face and neck daily, morning and night.'],
  ingredients: 'Water, Glycerin, Propylene Glycol Dicaprylate/Dicaprate, Pentylene Glycol, Cetearyl Alcohol, Caprylic/Capric Triglyceride, Cetearyl Isononanoate, Betaine, Polymethyl Methacrylate, Steareth-21, Ficus Carica (Fig) Fruit Extract, Lepidium Meyenii Root Extract, Citrus Limon (Lemon) Peel Oil, Cucumis Sativus (Cucumber) Fruit Extract, Algae Extract, Nelumbo Nucifera Flower Extract, Hibiscus Esculentus Fruit Extract, Sodium Hyaluronate, Tocopheryl Acetate, Ascorbyl Tetraisopalmitate, Tocopherol, Behenyl Alcohol, Cetearyl Glucoside, Sorbitol, Dimethicone, Sodium PCA, Caprylyl Glycol, Carbomer, Tromethamine, Cetyl Alcohol, Stearyl Alcohol, Butylene Glycol, Xanthan Gum, Caramel, Citric Acid, Potassium Sorbate, Sorbic Acid, Phenoxyethanol, Limonene, Citral.'
 )
  fresh_lotus_youth_preserve_moisturizer_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/fresh/fresh_lotus_youth_preserve_moisturizer.png")
  fresh_lotus_youth_preserve_moisturizer.photos.attach(io: fresh_lotus_youth_preserve_moisturizer_attachment, filename: 'fresh_lotus_youth_preserve_moisturizer')


drunk_elephant_baby_pekee_bar_and_juju_bar_travel_duo = Product.create!(
  name: 'Baby Pekee Bar™ + Juju Bar Travel Duo',
  size: '2 x 1 oz/ 28.3 g',
  price: 18.00,
  category: 'Skincare',
  brand_id: drunk_elephant.id,
  what_it_is: 'A Juju Bar and Pekee Bar™ as a travel-sized duo.',
  what_it_does: 'Unlike soap, which has a pH level of nine or above, the JuJu Bar and Pekee Bar are formulated with skin-friendly ingredients designed to cleanse and soothe the skin. The Juju Bar has an ideal pH-level of 6.3 and Pekee Bar is at 6.3 to ensure sufficient cleansing without drying or stripping the skin of its protective barrier. Both are free of soap, fragrance, essential oil, silicone, and irritant. Juju Bar is vegan.',
  what_else_you_need_to_know: 'Drunk Elephant is committed to using only clean ingredients that either directly benefit the skin’s health or support the integrity and effectiveness of the formulations. They never take into account an ingredient’s synthetic or natural status, but instead choose based on its safety and bio-compatibility. You won’t find what Drunk Elephant calls "the suspicious six" of any kind in their products (1. silicones, 2. chemical screens, 3. sensitizing colorants/perfumes, 4. sodium lauryl sulfate (SLS) 5. essential oils, 6. drying alcohols), making them appropriate for all skin. They believe that these six ubiquitous ingredients are at the root of almost every skin issue. When formulating the products, they focus on pH and toxicity, always making sure that the actives are at efficacious levels. This is the Drunk Elephant difference.',
  how_to_use: ['Wet the in your hands create, a creamy lather, then massage in a gentle, circular motion over face, neck, and chest.', 'Rinse thoroughly and pat dry.', 'May be used day or night, two to three times per week.'],
  ingredients: 'Heilmoor Clay, Virgin Marula Oil, Blueberry Extract'
 )
  drunk_elephant_baby_pekee_bar_and_juju_bar_travel_duo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/drunk+elephant/drunk_elephant_baby_pekee_bar_and_juju_bar_travel_duo.png")
  drunk_elephant_baby_pekee_bar_and_juju_bar_travel_duo.photos.attach(io: drunk_elephant_baby_pekee_bar_and_juju_bar_travel_duo_attachment, filename: 'drunk_elephant_baby_pekee_bar_and_juju_bar_travel_duo')


drunk_elephant_virgin_marula_luxury_facial_oil = Product.create!(
  name: 'Virgin Marula Luxury Facial Oil',
  size: '1 oz/ 30 mL',
  price: 72.00,
  category: 'Face Oils',
  brand_id: drunk_elephant.id,
  what_it_is: 'A wonder-working luxury facial oil, high in critical antioxidants, to deeply moisturize, nourish, soothe, and rejuvenate your skin while restoring its youthful glow.',
  what_it_does: 'This highly absorbable oil delivers clinically proven results to reverse the signs of aging and incredible antioxidant benefits against environmental stressors and free radicals. Look for a noticeable reduction in the appearance of fine lines, wrinkles, redness, and blotchiness, with improvement in skin’s elastic feel. Your skin will drink in this nutrient-rich oil leaving no residue behind. Straight from the "pip" of the marula fruit, this Marula Oil is virtually untouched by any chemical or fragrance, natural or synthetic, remains in its purest form, and is naturally anti-microbial and appropriate for all skin.',
  what_else_you_need_to_know: 'This Virgin Marula Oil is totally pure, which is the way it is used by African women. So close your eyes and pretend you’re sitting under a beautiful Marula tree... skin will never know the difference! With regular use as part of your complete Drunk Elephant skincare routine, your skin will be balanced and optimized to look and feel it’s healthiest.',
  how_to_use: ['Apply two to three drops evenly to face, neck, chest, hands, cuticles, backs of arms, or any place needing increased moisture without any greasy residue.', 'Tip: Marula works great at taming frizz, so try smooth one to two drops through hair to smooth and add shine.'],
  ingredients: 'Virgin Marula Oil: Helps nourish and rejuvenate skin for a youthful glow while providing critical antioxidants and omegas 6 and 9, thanks to its super-absorbent qualities.'
 )
  drunk_elephant_virgin_marula_luxury_facial_oil_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/drunk+elephant/drunk_elephant_virgin_marula_luxury_facial_oil.png")
  drunk_elephant_virgin_marula_luxury_facial_oil.photos.attach(io: drunk_elephant_virgin_marula_luxury_facial_oil_attachment, filename: 'drunk_elephant_virgin_marula_luxury_facial_oil')


fresh_rose_deep_hydration_facial_toner = Product.create!(
  name: 'Rose Deep Hydration Facial Toner',
  size: '8.4 oz/ 250 mL',
  price: 44.00,
  category: 'Toners',
  brand_id: fresh.id,
  what_it_is: 'An alcohol-free toner with real rose petals and hyaluronic acid that minimizes pores while deeply hydrating.',
  what_else_you_need_to_know: 'Made with toning rose fruit extract, soothing rosewater, nourishing rose oil, and real rose petals (you can see them floating!), this gentle liquid clears the complexion of leftover impurities and pollution. Skin is silky soft, refreshed, and prepped for the products you apply after.',
  how_to_use: ['Pour onto a cotton pad and sweep over your face and neck.', 'Use daily, morning and night, after cleansing and before your serum and moisturizer.'],
  ingredients: 'Water, Glycerin, Butylene Glycol, Rosa Centifolia Flower, Rosa Damascena Flower Water, Rosa Multiflora Fruit Extract, Angelica Keiskei Extract, Rosa Damascena Flower Oil, Sodium Hyaluronate, PEG-150, PPG-26-Buteth-26, PEG-40 Hydroge- nated Castor Oil, Sodium Citrate, Xanthan Gum, Citric Acid, BHT, Parfum (Fragrance), Phenoxyethanol, Citronellol, Geraniol.'
 )
  fresh_rose_deep_hydration_facial_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/fresh/fresh_rose_deep_hydration_facial_toner.png")
  fresh_rose_deep_hydration_facial_toner.photos.attach(io: fresh_rose_deep_hydration_facial_toner_attachment, filename: 'fresh_rose_deep_hydration_facial_toner')


shiseido_benefiance_wrinkleresist24_intensive_eye_contour_cream = Product.create!(
  name: 'Benefiance WrinkleResist24 Intensive Eye Contour Cream',
  size: '0.51 oz / 15 mL',
  price: 60.00,
  category: 'Eye Creams & Treatments',
  brand_id: shiseido.id,
  what_it_is: 'A rich, fast-absorbing eye cream that visibly smooths and firms lids, crow’s feet, and under eye wrinkles.',
  what_it_does: 'This number one best-selling eye cream developed in Japan targets five types of wrinkles that appear around the delicate eye area, including lid creases, crow’s feet, and fine lines caused by puffiness. The breakthrough WrinkleResist24 technology—formulated with chlorella, mukurossi, and gambir extracts—visibly smooths and restores, while burnet extract visibly firms. Hydroxyproline supports collagen production and super bio-hyaluronic acid N instantly refreshes tired eyes by plumping the appearance skin with much-needed moisture minus any greasy residue.',
  what_else_you_need_to_know: 'This product is dermatologist and ophthalmologist tested.',
  how_to_use: ['Apply every morning and night as the final step of your skincare regimen.'],
  ingredients: 'Water, Hydrogenated Polydecene, Mineral Oil (Paraffinum Liquidum), Glycerin, Petrolatum, Butylene Glycol, Paraffin, Polyglyceryl-2 Diisostearate, Squalane, Glyceryl Oleate, Sodium Glutamate, Sodium Pca, Dipropylene Glycol, Beeswax (Cera Alba), Microcrystalline Wax (Cera Microcristallina), Polyethylene, Methylparaben, Phytosteryl/Octyldodecyl Lauroyl Glutamate, Fragrance (Parfum), Trisodium Edta, Tocopheryl Acetate, Alcohol, Tocopherol, Iron Oxides (Ci 77492), Butylphenyl Methylpropional, Sapindus Mukurossi Peel Extract (Sapindus Mukurossi), Limonene, Linalool, Citronellol, Alpha-Isomethyl Ionone, Geraniol, Uncaria Gambir Extract (Uncaria Gambir), Benzyl Benzoate, Hexyl Cinnamal, Sanguisorba Officinalis Root Extract, Sodium Acetylated Hyaluronate, Hydroxyproline, Iron Oxides (Ci 77491), Chlorella Vulgaris Extract, Bht.'
 )
  shiseido_benefiance_wrinkleresist24_intensive_eye_contour_cream_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/shiseido/shiseido_benefiance_wrinkleresist24_intensive_eye_contour_cream.png")
  shiseido_benefiance_wrinkleresist24_intensive_eye_contour_cream.photos.attach(io: shiseido_benefiance_wrinkleresist24_intensive_eye_contour_cream_attachment, filename: 'shiseido_benefiance_wrinkleresist24_intensive_eye_contour_cream')

estee_lauder_advanced_night_repair_synchronized_recovery_complex_II = Product.create!(
  name: 'Advanced Night Repair Synchronized Recovery Complex II',
  size: '1.7 oz/ 50 mL',
  price: 98.00,
  category: 'Face Serums',
  brand_id: estee_lauder.id,
  what_it_is: 'A powerful nighttime renewal serum for radiant, youthful-looking skin; with instant luminosity and hydration.',
  what_it_does: 'Reveal a smoother, more radiant, younger look and wake up to more beautiful skin every day. This powerful serum dramatically reduces the look of key signs of aging, while maximizing the power of skin’s natural nighttime renewal with exclusive ChronoluxCB™ technlogy. It improves the appearance of fine lines and wrinkles, and leaves skin smoother, stronger, and more hydrated.',
  what_else_you_need_to_know: 'Patented until 2033. Effective for every ethnicity. This is the number one repair serum in the U.S.*',
  how_to_use: ['Apply on clean skin before your moisturizer. Use several drops and smooth in gently all over face and throat.'],
  ingredients: 'Advanced Night Repr Sync Rec Cmp11 Division: El (Estee Lauder)Ingredients: Water , Bifida Ferment Lysate , Methyl Gluceth-20 , Peg-75 , Bis-Peg-18 Methyl Ether Dimethyl Silane , Butylene Glycol , Propanediol , Cola Acuminata (Kola) Seed Extract , Hydrolyzed Algin , Pantethine , Caffeine , Lecithin , Tripeptide-32 , Ethylhexylglycerin , Sodium Rna , Bisabolol , Glycereth-26 , Squalane , Sodium Hyaluronate , Oleth-3 Phosphate , Caprylyl Glycol , Lactobacillus Ferment , Oleth-3 , Oleth-5 , Anthemis Nobilis (Chamomile) , Yeast Extract/Faex/Extrait De Levure , Choleth-24 , Hydrogenated Lecithin , Ceteth-24 , Tocopheryl Acetate , Ethylhexyl Methoxycinnamate , Hexylene Glycol , Carbomer , Triethanolamine , Trisodium Edta , Bht , Xanthan Gum , Phenoxyethanol , Red 4 (Ci 14700) , Yellow 5 (Ci 19140)'
 )
  estee_lauder_advanced_night_repair_synchronized_recovery_complex_II_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/estee+lauder/estee_lauder_advanced_night_repair_synchronized_recovery_complex_II.png")
  estee_lauder_advanced_night_repair_synchronized_recovery_complex_II.photos.attach(io: estee_lauder_advanced_night_repair_synchronized_recovery_complex_II_attachment, filename: 'estee_lauder_advanced_night_repair_synchronized_recovery_complex_II')


dyson_airwrap_styler = Product.create!(
  name: 'Airwrap™ Styler',
  size: 'n/a',
  price: 549.00,
  category: 'Hair Straighteners & Flat Irons',
  brand_id: dyson.id,
  what_it_is: 'A styler that is engineered for multiple hair types and styles, featuring Coanda air styling and propelled by the Dyson digital motor so users can curl, wave, smooth, and dry with no extreme heat.',
  how_to_use: ['How to create waves and shape:', 'Begin with wet hair.', 'Attach Pre-styling dryer.', 'Dry to damp using Pre-styling dryer.', 'Attach the Round volumizing brush.', 'Select medium power and high heat.', 'Smooth the brush through to the ends of your hair.', 'Roll hair up from the ends to the roots.', 'Hold until your hair is dry.', 'Push the cold shot to set the curl.', 'Release the curl.', 'Repeat throughout your hair.'],
 )
  dyson_airwrap_styler_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dyson/dyson_airwrap_styler.png")
  dyson_airwrap_styler.photos.attach(io: dyson_airwrap_styler_attachment, filename: 'dyson_airwrap_styler')


dyson_blown_a_ouai_noir_set = Product.create!(
  name: 'Blown-A-OUAI Noir Set',
  size: 'n/a',
  price: 399.00,
  category: 'Hair Dryer',
  brand_id: dyson.id,
  what_it_is: 'A Dyson Supersonic Blown-a-Ouai Noir gift set featuring everything you need to style your hair without extreme heat damage.',
  what_it_does: 'Dyson and Ouai have teamed up to create the perfect gift for a loved one (or yourself!). The Dyson Supersonic Blown-a-Ouai Noir Set has everything you need to style your hair without extreme heat damage. The Dyson Supersonic™ hair dryer prevents extreme heat damage: air temperature is measured 20 times every second, keeping the temperature under control. Dyson believes drying shouldn\'t take forever. Controlled airflow results in fast drying. Dyson has turned convention on its head and put the motor in the handle, completely rebalancing the dryer\'s weight and shape. Only the Dyson Supersonic™ hair dryer comes with magnetic attachments, so you can adjust quickly and easily. With heat shield technology, the surfaces of the attachments don’t get too hot, even during close-up styling, and the powerful motor is tuned is tuned to be quieter than you\'d think.',
  what_else_you_need_to_know: 'From years of research, 2,000 engineers and over 500 inventions, Dyson engineers have learned how hair reacts to stress, how to keep it healthy, and how to achieve a desired style.',
  how_to_use: ['Can be used to rough up dry hair.', 'Attach the nozzle vertically, which will gently move the hair from side-to-side, helping lift the hair. Think of this as fanning your hair with the nozzle standing upright.', 'To finish your style, rotate the nozzle to point air flow down (switch to horizontal) the hair shaft, using your fingers or a brush to guide it.', 'Consider switching to a lower heat setting to avoid over-drying the hair.'],
  ingredients: 'Water, Cyclopentasiloxane, Cetearyl Alcohol, Quaternium-91, Parfum (Fragrance), Phenoxyethanol, Adansonia Digitata Seed Oil, Argania Spinosa Kernel Oil, Oenothera Biennis (Evening Primrose) Oil, Tocopheryl Acetate, Hydrolyzed Rhodophyceae Extract, Tamarindus Indica Extract, Panthenol, Cetearamidoethyldiethonium Succinoyl Hydrolyzed Pea Protein, Arginine, Aspartic Acid, PCA, Glycine, Alanine, Serine, Valine, Isoleucine, Proline, Threonine, Sodium Hyaluronate, Histidine, Brassica Campestris/Aleurites Fordi Oil Copolymer, Cetrimonium Chloride, Glycerin, Dipropylene Glycol, Polysilicone-29, Behentrimonium Chloride, Myristyl Myristate, Silicone Quaternium-16, Leuconostoc/Radish Root Ferment Filtrate, Butylene Glycol, Undeceth-11, Butyloctanol, Guar Hydroxypropyltrimonium Chloride, Undeceth-5, 3-O-Ethyl Ascorbic Acid, Sodium PCA, Sodium Lactate, Phenylalanine, Disodium EDTA, Potassium Sorbate, Citric Acid, Citronellol, Geraniol, Alpha-Isomethyl Ionone, Cinnamyl Alcohol, Citral, Linalool, Hydroxycitronellal, Limonene.'
 )
  dyson_blown_a_ouai_noir_set_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dyson/dyson_blown_a_ouai_noir_set.png")
  dyson_blown_a_ouai_noir_set.photos.attach(io: dyson_blown_a_ouai_noir_set_attachment, filename: 'dyson_blown_a_ouai_noir_set')


moroccan_oil_moroccanoil_treatment = Product.create!(
  name: 'Moroccanoil Treatment',
  size: '1.7 oz/ 50 mL',
  price: 34.00,
  category: 'Hair Oil',
  brand_id: moroccan_oil.id,
  what_it_is: 'A versatile, argan oil-infused hair styler in a light formulation that can be used for conditioning, styling, and finishing.',
  what_it_does: 'Moroccanoil® Treatment detangles, speeds up drying time, and boosts shine. Featuring the iconic Moroccanoil scent, this treatment is non-greasy and fast-absorbing, and it improves your hair’s manageability and creates a softer texture.',
  what_else_you_need_to_know: 'This product is free of mineral oil.',
  how_to_use: ['Apply a small amount to damp hair from mid-length to ends as the foundation for all styling to prepare the hair for blow-drying. Blow-dry or style as usual.'],
  ingredients: 'Cyclomethicone, Dimethicone, Argania Spinosa (Argan) Kernel Oil, Fragrance, Linum Usitatissimum (Linseed) Seed Extract, CI 26100 (Red 17), CI 47000 (Yellow 11).'
 )
  moroccan_oil_moroccanoil_treatment_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/moroccan+oil/moroccan_oil_moroccanoil_treatment.png")
  moroccan_oil_moroccanoil_treatment.photos.attach(io: moroccan_oil_moroccanoil_treatment_attachment, filename: 'moroccan_oil_moroccanoil_treatment')


bumble_and_bumble_hairdressers_invisible_oil_heat_and_uv_protective_primer = Product.create!(
  name: 'Hairdresser’s Invisible Oil Heat & UV Protective Primer',
  size: '8.5 oz/ 250 mL',
  price: 28.00,
  category: 'Hair Primers',
  brand_id: bumble_and_bumble.id,
  what_it_is: 'A multitasking pre-styler that instantly protects, conditions, and eases styling for dry, brittle, or coarse hair—blended with UV protection to help shield hair from the drying effects of the sun.',
  what_it_does: 'This multitasking primer is infused with six feather-light oils to instantly make hair softer, smoother, silkier, and less tangled. It tames frizz, has heat and UV protection, and protects against breakage—all without weighing hair down.',
  what_else_you_need_to_know: 'This product is vegan, cruelty-free, and formulated without alcohol. Bb.stylist tip: to use as a leave-in conditioner, spray on wet hair and slick back into your favorite hairstyle.',
  how_to_use: ['On day one, spray on damp hair, comb through, and style.', 'On day two and beyond, spray on dry hair to refresh and restyle hair, comb through, and style.', 'Spray on damp hair after the pool or beach and comb through to detangle.'],
  ingredients: 'Water , Cetearyl Alcohol , Butylene Glycol , Peg-12 Glyceryl Dimyristate , Vitis Vinifera (Grape) Seed Oil , Prunus Amygdalus Dulcis (Sweet Almond) Oil , Macadamia Integrifolia Seed Oil , Cocos Nucifera (Coconut) Oil , Gardenia Tahitensis (Tiare) Flower Extract , Argania Spinosa Kernel Oil , Carthamus Tinctorius (Safflower) Seed Oil , Hydroxypropyltrimonium Hydrolyzed Corn Starch , Hydrolyzed Vegetable Protein Pg-Propyl Silanetriol , Hydrolyzed Wheat Protein Pg-Propyl Silanetriol , Dimethicone , Glycerin , Sodium Hyaluronate , Behentrimonium Methosulfate , Distearyldimonium Chloride , Dimethiconol , Cetrimonium Chloride , Butyl Methoxydibenzoylmethane , Ethylhexyl Methoxycinnamate , Sodium Chloride , Citric Acid , Bht , Fragrance , Hexyl Cinnamal , Linalool , Limonene , Coumarin , Butylphenyl Methylpropional , Potassium Sorbate , Phenoxyethanol'
 )
  bumble_and_bumble_hairdressers_invisible_oil_heat_and_uv_protective_primer_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bumble+and+bumble/bumble_and_bumble_hairdressers_invisible_oil_heat_and_uv_protective_primer.png")
  bumble_and_bumble_hairdressers_invisible_oil_heat_and_uv_protective_primer.photos.attach(io: bumble_and_bumble_hairdressers_invisible_oil_heat_and_uv_protective_primer_attachment, filename: 'bumble_and_bumble_hairdressers_invisible_oil_heat_and_uv_protective_primer')


sk_ii_facial_treatment_clear_lotion_toner = Product.create!(
  name: 'Facial Treatment Clear Lotion Toner',
  size: '5.4 oz',
  price: 76.00,
  category: 'Toners',
  brand_id: sk_ii.id,
  what_it_is: 'A hydrating toner to complete your cleansing ritual. ',
  what_it_does: 'This bestselling toner helps remove stubborn impurities to reveal your skin\'s true radiance and prepare it for the rest of your regimen. It is crafted with a mix of AHA and pitera—a bio-ingredient rich in vitamins, organic acids, minerals, and amino acids—that work together to support natural skin cell renewal. The alcohol-free formula gently exfoliates while both hydrating and closing pores.',
  what_else_you_need_to_know: 'This product is not tested on animals and is free of colorant, fragrance, and alcohol.',
  how_to_use: ['Use this toner after you cleanse, but before you treat, target, and moisturize.', 'Use daily, in the morning and again in the evening.', 'Soak a cotton pad with Clear Lotion.', 'Apply by wiping the T-zone, taking extra care on sides of nose.', 'Wipe the U-zone (cheeks and jaw line) from center, outward.', 'Wipe the neck from bottom to the top.'],
  ingredients: 'Water, Galactomyces Ferment Filtrate (Pitera), Butylene Glycol, Polysorbate 20, Glycerin, Sodium Hyaluronate, PEG-150, Cellulose Gum, Disodium EDTA, Citric Acid, Salicylic Acid, Lactic Acid, Malic Acid, Sodium Citrate, Sodium Benzoate, Methylparaben.'
 )
  sk_ii_facial_treatment_clear_lotion_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/sk-ii/sk_ii_facial_treatment_clear_lotion_toner.png")
  sk_ii_facial_treatment_clear_lotion_toner.photos.attach(io: sk_ii_facial_treatment_clear_lotion_toner_attachment, filename: 'sk_ii_facial_treatment_clear_lotion_toner')



olehenriksen_balancing_force_oil_control_toner = Product.create!(
  name: 'Balancing Force™ Oil Control Toner',
  size: '6.5 oz/ 193 mL',
  price: 26.00,
  category: 'Toners',
  brand_id: olehenriksen.id,
  what_it_is: 'A pore-refining toner with salicylic, glycolic, and lactic acids to remove excess oil, clarify, and freshen the complexion without stripping skin.',
  what_it_does: 'This concentrated facial astringent effectively removes excess oil and refines pores—without stripping skin. Formulated with Green Fusion Complex™, a powerful blend of both BHA and AHAs—salicylic, glycolic and lactic acids—and neem seed oil, its gentle clarifying action helps unclog, purify, and minimize the appearance of pores. This refreshing toner features an energizing eucalyptus-peppermint scent. Instantly, the complexion is fresh and invigorated with a matte, healthy-looking glow.',
  what_else_you_need_to_know: 'During his struggle with cystic acne, Ole tried many astringent toners that left his skin feeling stripped. He was challenged to create his own version that delivered powerful results, but with a more comfortable, balanced feel.',
  how_to_use: ['After using Ole Henriksen® Find Your Balance™ Oil Control Cleanser, pour Balancing', 'Force Oil Control Toner onto a cotton pad.', 'Swipe over clean, dry face, in a circular motion.', 'Follow with Counter Balance™ Oil Control Hydrator.'],
  ingredients: 'Water, Polysorbate 20, Hamamelis Virginiana (Witch Hazel) Water, Gylcerin, Gluconolactone, Glycolici Acid, Lactic Acid, Oleth-20, Salicylic Acid, Sodium Hydroxide, Sodium Benzoate, Menthyl Lactate, Eucalpytus Globulus Leaf Oil, Mentha Piperita (Peppermint) Oil, Melia Azadirachta Seed Oil, Linoleic Acid, Macrocystis Pyrifera (Kelp) Extract, Eucalyptus Globulus Leaf Extract, Chondrus Crispus (Carrageenan) Extract, Camellia Sinensis Leaf Extract, Linolenic Acid, Phenoxyethanol, Calcium Gluconate, Benzoic Acid, Tocopherol, Limonene.'
 )
  olehenriksen_balancing_force_oil_control_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/olehenrikson/olehenriksen_balancing_force_oil_control_toner.png")
  olehenriksen_balancing_force_oil_control_toner.photos.attach(io: olehenriksen_balancing_force_oil_control_toner_attachment, filename: 'olehenriksen_balancing_force_oil_control_toner')


caudalie_vinopure_natural_salicylic_acid_pore_minimizaing_toner = Product.create!(
  name: 'Vinopure Natural Salicylic Acid Pore Minimizing Toner',
  size: '6.7 oz/ 200 mL',
  price: 28.00,
  category: 'Toners',
  brand_id: caudalie.id,
  what_it_is: 'A pore-diminishing toner powered by 100 percent natural salicylic acid to control oil and diminish the appearance of future blackheads and breakouts.',
  what_it_does: 'Purge pores of blackheads and excess oil with this purifying toner. It acts like a vacuum for your pores, ensuring your skin is squeaky clean without drying it out. Caudalie’s natural salicylic acid (a BHA, or beta hydroxy acid) is clean, powerful, and oil soluble, which allows it to penetrate pores, targeting the most stubborn pimples caused by bacteria and dead skin. Not only will the natural salicylic acid unclog oil that’s trapped inside pores, but it will also act as an exfoliator to slough away dead skin cells and smooth the look of skin’s overall texture. Rest assured, this powerful formula is non-irritating and safe for sensitive skin, thanks to grape water and rosewater, which soothe irritation and enhance your glow. The formula is further enriched with antioxidant grape seed polyphenols that prevent oil from oxidizing, or turning black. Lastly, a complex of antibacterial, fragrance-free and noncomedogenic essential oils deliver purifying, clarifying, and calming benefits to the skin. Best for oily to combination skin or those with hormonal breakouts, this toner diminishes the appearance of pores, smooth the look of skin texture, enhance skin clarity, and control oil production. The formula is 100 percent fragrance-free, with a scent that comes from natural essential oils.',
  how_to_use: ['In the morning and evening, apply to cleansed skin using a cotton round.', 'For best results, follow with Vinopure Serum and Fluid (sold separately).'],
  ingredients: 'Water, Alcohol Denat.*, Rosa Damascena Flower Water*, Vitis Vinifera (Grape) Fruit Water*, Caprylyl/Capryl Glucoside*, Vitis Vinifera (Grape) Juice*, Salicylic Acid*, Cymbopogon Citratus Leaf Oil*, Lavandula Hybrida Oil*, Melissa Officinalis Leaf Oil*, Mentha Piperita (Peppermint) Oil*, Pelargonium Graveolens Flower Oil*, Rosmarinus Officinalis (Rosemary) Leaf Oil*, Potassium Sorbate, Sodium Benzoate, Sodium Phytate, Arginine, Citric Acid, Citral*, Citronellol*, Geraniol*, Limonene*, Linalool* (182/035).'
 )
  caudalie_vinopure_natural_salicylic_acid_pore_minimizaing_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/caudalie/caudalie_vinopure_natural_salicylic_acid_pore_minimizaing_toner.png")
  caudalie_vinopure_natural_salicylic_acid_pore_minimizaing_toner.photos.attach(io: caudalie_vinopure_natural_salicylic_acid_pore_minimizaing_toner_attachment, filename: 'caudalie_vinopure_natural_salicylic_acid_pore_minimizaing_toner')


belif_witch_hazel_herbal_extract_toner = Product.create!(
  name: 'Witch Hazel Herbal Extract Toner',
  size: '6.75 oz/ 200 mL',
  price: 28.00,
  category: 'Toners',
  brand_id: belif.id,
  what_it_is: 'A toner formulated with witch hazel to hydrate dry, dull skin, leaving it hydrated, soothed, and balanced after cleansing.',
  what_it_does: 'This botanical toner is formulated to hydrate dry, dull skin, leaving it even and deeply moisturized after cleansing. It contains a blend of apothecary herbs, including witch hazel, to help clarify and hydrate skin by sealing in moisture. Skin appears supple and revitalized over time.',
  what_else_you_need_to_know: 'This dermatologist tested product is free of mineral oil, synthetic preservatives, dyes, and fragrances, and animal origin ingredients.',
  how_to_use: ['Moisten a cotton pad and gently sweep across the face or dispense a dime-sized amount into palm and apply to the face in a gentle patting motion after cleansing.', 'Use daily, morning and evening.'],
  ingredients: 'Water, Monarda Didyma Leaf Extract 8%, Glycerin, Alcohol Denat, Butylene Glycol, Salvia Officinalis (Sage) Leaf Extract, Corchorus Olitorius Leaf Extract, Glycerin, 1,2-Hexanediol, Pentaerythirityl Tetraethylhexanoate, Hexyldecyl Ethylhexanoate, Poncirus Trifoliata Fruit Extract, Alcohol Denat, Avena Sativa (Oat) Kernel Extract*, Calendula Officinalis Flower Extract*, Nepeta Cataria Extract*, Rubus Idaeus (Raspberry) Leaf Extract*, Baptisia Tinctoria Root Extract*, Stellaria Media (Chickweed) Extract*, Sodium Hyaluronate, Cyclopentasiloxane, Betaine, Tromethamine, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Dimethicone, Trisodium EDTA, Fragrance**, Limonene. *Napiers Original Formula. **Fragrances of Natural Origin.'
 )
  belif_witch_hazel_herbal_extract_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/belif/belif_witch_hazel_herbal_extract_toner.png")
  belif_witch_hazel_herbal_extract_toner.photos.attach(io: belif_witch_hazel_herbal_extract_toner_attachment, filename: 'belif_witch_hazel_herbal_extract_toner')



lancome_tonique_douceur_softening_hydrating_toner_with_rose_water = Product.create!(
  name: 'Tonique Douceur Softening Hydrating Toner with Rose Water',
  size: '6.7 oz/ 200 mL',
  price: 26.00,
  category: 'Toners',
  brand_id: lancome.id,
  what_it_is: 'An alcohol-free, pH balanced freshener that gently tones, refines, and softens skin.',
  what_it_does: 'Soothing and cooling, this pH balanced freshener gently tones and refines skin without depleting the natural oils of normal/combination skin. Formulated with skin-softening distilled flower water, this refreshing formula gives skin a cool, hydrating lift—leaving skin perfectly clean, soft, and supple.',
  what_else_you_need_to_know: 'This product is dermatologist tested.',
  ingredients: 'Water, Glycerin, Sodium Citrate, Ci 42090/ Blue 1, Ci 14700/ Red 4, Peg-60 Hydrogenated Castor Oil, Chlorphenesin, Sambucus Nigra Flower Water, Linalool, Benzyl Alcohol, Propylparaben, Alpha-Isomethyl Ionone, Geraniol, Rosa Centifolia Flower Water, Rosa Centifolia Water/ Rosa Centifolia Flower Water, Methylparaben, Tetrasodium Edta, Citronellol, Hexylene Glycol, Fragrance.'
 )
  lancome_tonique_douceur_softening_hydrating_toner_with_rose_water_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/lancome/lancome_tonique_douceur_softening_hydrating_toner_with_rose_water.png")
  lancome_tonique_douceur_softening_hydrating_toner_with_rose_water.photos.attach(io: lancome_tonique_douceur_softening_hydrating_toner_with_rose_water_attachment, filename: 'lancome_tonique_douceur_softening_hydrating_toner_with_rose_water')



peter_thomas_roth_8_glycolic_solutions_toner = Product.create!(
  name: '8 percent Glycolic Solutions Toner',
  size: '5 oz/ 150 mL',
  price: 40.00,
  category: 'Toners',
  brand_id: peter_thomas_roth.id,
  what_it_is: 'A multitasking toner, enriched with exfoliating glycolic acid and oil-reducing witch hazel, that visibly improves fine lines, wrinkles, pores, and uneven skin tone for a brighter, more clarified complexion.',
  what_it_does: 'This toning complex with glycolic acid at eight percent and witch hazel chemically exfoliates the skin’s surface to help reduce the appearance of fine lines, wrinkles, pores, and uneven skin tone—all while helping to brighten, clarify, and smooth. Witch hazel helps effectively remove excess oil, dirt, and impurities, allantoin, chamomile, and aloe vera help soothe and calm the complexion, and sodium PCA leaves skin lightly hydrated.',
  how_to_use: ['Using fingertips, gently apply a thin layer to face.', 'May also be used on neck, chest, décolleté area, and tops of hands.', 'Use daily.'],
  ingredients: 'Water, Glycolic Acid, Alcohol Denat., Methyl Gluceth-20, Propylene Glycol, Hamamelis Virginiana (Witch Hazel) Water, Sodium Hydroxide, Glycerin, Sodium PCA, Aloe Barbadensis Leaf Juice, Allantoin, Camellia Sinensis Leaf Extract, Chamomilla Recutita (Matricaria) Flower Extract, Arginine, Sodium Ascorbyl Phosphate, Lactic Acid, Citric Acid, Polysorbate 20, Butylene Glycol, Potassium Sorbate, Sodium Benzoate, Benzoic Acid, Phenoxyethanol.'
 )
  peter_thomas_roth_8_glycolic_solutions_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/peter+thomas+roth/peter_thomas_roth_8_glycolic_solutions_toner.png")
  peter_thomas_roth_8_glycolic_solutions_toner.photos.attach(io: peter_thomas_roth_8_glycolic_solutions_toner_attachment, filename: 'peter_thomas_roth_8_glycolic_solutions_toner')


kiehl_ultra_facial_oil_free_toner = Product.create!(
  name: 'Ultra Facial Oil-Free Toner',
  size: '8.4 oz/ 250 mL',
  price: 16.00,
  category: 'Toners',
  brand_id: kiehl.id,
  what_it_is: 'A toner formulated to reduce excess oil on skin’s surface.',
  what_it_does: 'Ultra Facial Oil-Free Toner gently removes residue, dirt, and oil without stripping skin of vital moisture. Excellent for oily skin types, the non-drying, alcohol-free formula is enriched with imperata cylindrica root extract and antarcticine to soothe and hydrate',
  what_else_you_need_to_know: 'This product is pH-balanced, tested for safety and gentleness, and formulated without oil, fragrance, and colorant.',
  how_to_use: ['After cleansing, moisten a cotton pad with the facial toner and apply to face, avoiding the immediate eye area.'],
  ingredients: 'Water Glycerin, Propanediol, Phenoxyethanol, Propylene Glycol, Potassium Sorbate, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Triethanolamine, Citric Acid, Imperata Cylindrica Root Extract, Pseudoalteromonas Ferment Extract, Sodium Hyaluronate, Cucumber Fruit Extract, Caprylyl Glycol, Carbomer.'
 )
  kiehl_ultra_facial_oil_free_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/kiehl/kiehl_ultra_facial_oil_free_toner.png")
  kiehl_ultra_facial_oil_free_toner.photos.attach(io: kiehl_ultra_facial_oil_free_toner_attachment, filename: 'kiehl_ultra_facial_oil_free_toner')


bobbi_brown_hydrating_face_tonic_toner = Product.create!(
  name: 'Hydrating Face Tonic Toner',
  size: '6.7 oz',
  price: 34.00,
  category: 'Toners',
  brand_id: bobbi_brown.id,
  what_it_is: 'A skin-conditioning tonic that restores and balances skin so that it is soft, soothed, and prepared for treatment products.',
  what_it_does: 'This face tonic delivers instant, 24-hour and long-term hydration. Formulated with Bobbi Brown’s signature Enriched Mineral Water Blend and cucumber, chamomile, licorice, aloe leaf, and lavender, it works to soothe and soften the skin. The Vitamin B5 softens and conditions, leaving your skin prepped for the next treatment step. Like a hydrating toner, it doesn\'t contain alcohol or strip the skin, and instead, it balances and refreshes the moisture in the skin. Perfect for dry or sensitive skin, it brings a refreshingly hydrating step to any skin care routine.',
  how_to_use: ['Apply to face with cotton pad morning and night.'],
  ingredients: 'Water, Hexylene Glycol, Butylene Glycol, Glycerin, Propanediol, Polysorbate 20, Camellia Sinensis (Green Tea) Leaf Extract, Cucumis Sativus (Cucumber) Fruit Extract, Chamomilla Recutita (Matricaria) Extract, Aesculus Hippocastanum (Horse Chestnut) Bark Extract, Glycyrrhiza Glabra (Licorice) Root Extract, Codium Tomentosum Extract, Lavandula Angustifolia (Lavender), Citrus Aurantium Dulcis (Orange), Pantethine, Hydrolyzed Wheat Protein, Hydrolyzed Corn Protein, Cymbopogon Martini (Palmarosa), Hydrolyzed Soy Protein, Cholesterol, Trehalose, Aloe Barbadensis Leaf Juice, Sodium Hyaluronate, Linoleic Acid, Acrylates Copolymer, Phytantriol, Phytosphingosine, Glycine, Hydroxyproline, Proline, Carbomer, Linalool, Geraniol, Limonene, Disodium Edta, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate, Phenoxyethanol'
 )
  bobbi_brown_hydrating_face_tonic_toner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bobbi+brown/bobbi_brown_hydrating_face_tonic_toner.png")
  bobbi_brown_hydrating_face_tonic_toner.photos.attach(io: bobbi_brown_hydrating_face_tonic_toner_attachment, filename: 'bobbi_brown_hydrating_face_tonic_toner')


clinique_clarifying_lotion_3 = Product.create!(
  name: 'Clarifying Lotion 3',
  size: '6.7 oz/ 200 mL',
  price: 16.00,
  category: 'Toners',
  brand_id: clinique.id,
  what_it_is: 'A gentle, oil-free exfoliating lotion for combination and oily skin.',
  what_it_does: 'This second step in Clinique\'s 3-Step Skin Care System is a true difference-maker for great skin. Developed by Clinique\'s dermatologists, the smoothing formula whisks away pore-clogging oil and flakes to reveal a clearer complexion. It helps control excess oil to minimize breakouts and keep skin feeling clean.',
  what_else_you_need_to_know: 'This product is allergy tested, dermatologist developed, and free of fragrance, SLS, silicone, oil, and gluten. It is comprised of 100 percent vegan ingredients.',
  how_to_use: ['Using cotton ball, sweep over cleansed face and throat twice daily.', 'For external use only.', 'Avoid eye area.', 'Follow with Dramatically Different Moisturizing Gel.'],
  ingredients: 'Water , Alcohol Denat. , Salicylic Acid , Hamamelis Virginiana (Witch Hazel) , Butylene Glycol , Glycerin , Trehalose , Sodium Hyaluronate , Citric Acid , Sodium Hydroxide , Disodium Edta , Bht , Phenoxyethanol , Benzophenone-4 , Ext. Violet 2 (Ci 60730) , Red 6 (Ci 15850) , Orange 4 (Ci 15510)'
 )
  clinique_clarifying_lotion_3_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/clinique/clinique_clarifying_lotion_3.png")
  clinique_clarifying_lotion_3.photos.attach(io: clinique_clarifying_lotion_3_attachment, filename: 'clinique_clarifying_lotion_3')


belif_the_true_cream_aqua_bomb = Product.create!(
  name: 'The True Cream Aqua Bomb',
  size: '1.68 oz/ 50 mL',
  price: 38.00,
  category: 'Moisturizer',
  brand_id: belif.id,
  what_it_is: 'An ultra-lightweight, oil-free gel-cream that instantly cools and refreshes skin while providing intensive hydration.',
  what_it_does: 'This formula contains a blend of apothecary herbs, including antioxidant-rich lady\'s mantle which helps neutralize skin-damaging free radicals, improves skin elasticity, and minimizes the appearances of pores. The refreshing cream is formulated to burst when applied, releasing a flood of weightless moisture onto skin for a healthy, smooth, supple appearance.',
  what_else_you_need_to_know: 'This product is dermatologist tested and free of mineral oils, petrolatum, synthetic preservatives, dyes, fragrances, and animal origin ingredients. Belif\'s The True Cream Aqua Bomb is a 2015 Self Approved Beauty award winner.',
  how_to_use: ['Apply as needed to face and neck.', 'Can be used morning and night. For a midday moisture boost, tap gently onto skin.', 'Can be used as a makeup primer to hydrate and prep the skin before applying makeup.', 'Can be used as a 10-minute emergency moisture mask: apply generously to skin and tissue off.'],
  ingredients: 'Water, Dipropylene Glycol, Glycerin, Methl Trimethicone, Alcohol Denat, Dimethicone, Cyclopentasiloxane, 1,2-Hexanediol, Malakite Extract, Caprylic/Capric Triglyceride, Pentaerythrityl Tetraethylhexanoate, PEG/PPG/Polybutylene Glycol-8/5/3 Glycerin, Alchemilla Vulgaris Leaf Extract*, Equisetum Arvense Leaf Extract*, Stellaria Media (Chickweed) Extract*, Urtica Dioica (Nettle) Leaf Extract*, Plantago Lanceolata Leaf Extract*, Avena Sativa (Oat) Kernel Extract**, Calendula Officinalis Flower Extract**, Nepeta Cataria Extract**, Rubus Idaeus (Raspberry) Leaf Extract**, Baptisia Tinctoria Root Extract**, Dimethiconol, Polymethylsilsesquioxane, Sodium Acrylate/Acryloyldimethyltaurate/Dimethylacrylamide Crosspolymer, Isohexadecane, Polysorbate 60, Ceramide 3, Cholesterol, Butyrospermum Parkii (Shea) Butter, Phenl Trimethicone, Pentaerythrityl Tetraisostearate, Panthenol, Squalane, Triethylhexanoin, Macadamia Ternifolia Seed Oil, PEG-150, PEG-40 Hydrogenated Castor Oil, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, C14-22 Alcohols, Arachidyl Glucoside, Hydrogenated Lecithin, PEG-100 Stearate, Stearic Acid, Glyceryl Stearate, Carbomer, Tromethamine, Trisodium EDTA, Fragrance+, Citronellol, Limonene, Citral, Geraniol, Linalool. *Napiers aqua formula. **Napiers original formula. +Fragrances of natural origin.'
 )
  belif_the_true_cream_aqua_bomb_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/belif/belif_the_true_cream_aqua_bomb.png")
  belif_the_true_cream_aqua_bomb.photos.attach(io: belif_the_true_cream_aqua_bomb_attachment, filename: 'belif_the_true_cream_aqua_bomb')


first_aid_beauty_ultra_repair_cream_intense_hydration = Product.create!(
  name: 'Ultra Repair® Cream Intense Hydration',
  size: '6 oz/ 170 g',
  price: 30.00,
  category: 'Moisturizer',
  brand_id: first_aid_beauty.id,
  what_it_is: 'An all-over moisturizer that provides instant relief and long-term hydration for dry, distressed skin and eczema.',
  what_it_does: 'First Aid Beauty\'s Ultra Repair Cream\’s whipped texture is instantly absorbed with no greasy after-feel. Safe for sensitive skin, the cream can be used by all members of the family, even children and babies. Suitable for all skin types, especially dry, flakey skin, this hydrating moisturizer leaves your skin feeling smooth, hydrated, and comfortable after just a single use. Formulated with colloidal oatmeal, shea butter, ceramide 3, and the First Aid Beauty Antioxidant Booster, it provides immediate relief and visible improvement for parched skin, and it is clinically proven to increase hydration by 169 percent immediately upon application.',
  what_else_you_need_to_know: 'First Aid Beauty provides everyday essentials and targeted skincare solutions that deliver immediate relief, lasting results, and feel-good textures. Their products are formulated with only clean, skin-loving ingredients that are carefully selected so you don’t have to worry about what’s in (and not in) your skincare products. There are over 1,300 ingredients on FAB’s no-no list, including artificial colorants and artificial fragrances, parabens, ethanol, ethyl alcohol, denatured alcohol, methanol, n-butyl alcohol, isopropyl alcohol, sd alcohol, lanolin, propylene glycol, phthalates, mineral oil, petrolatum, formaldehydes, oxybenzone, coal tar, hydroquinone, triclosan, triclocarban, talc, and sulfates.',
  how_to_use: ['Apply to face and/or body at least twice daily or as needed to restore and soothe dry, uncomfortable skin.'],
  ingredients: 'Water, Stearic Acid, Glycerin, C12-15 Alkyl Benzoate, Caprylic/Capric Triglyceride, Glyceryl Stearate Se, Glyceryl Stearate, Cetearyl Alcohol, Butyrospermum Parkii Butter, Dimethicone, Squalane, Allantoin, Camellia Sinensis Leaf Extract, Caprylyl Glycol, Ceramide 3, Chrysanthemum Parthenium Extract, Colloidal Oatmeal, Disodium EDTA, Eucalyptus Globulus Leaf Oil, Glycyrrhiza Glabra Root Extract, Sodium Hydroxide, Xanthan Gum, Phenoxyethanol.'
 )
  first_aid_beauty_ultra_repair_cream_intense_hydration_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/first+aid+beauty/first_aid_beauty_ultra_repair_cream_intense_hydration.png")
  first_aid_beauty_ultra_repair_cream_intense_hydration.photos.attach(io: first_aid_beauty_ultra_repair_cream_intense_hydration_attachment, filename: 'first_aid_beauty_ultra_repair_cream_intense_hydration')


clinique_moisture_surge_72_hour_auto_replenishing_hydrator = Product.create!(
  name: 'Moisture Surge 72-Hour Auto-Replenishing Hydrator',
  size: '1.7 oz/ 50 mL',
  price: 39.00,
  category: 'Moisturizer',
  brand_id: clinique.id,
  what_it_is: 'A refreshing gel-cream that provides an instant moisture boost—and is now enhanced to deliver almost twice as much hydration at the end of the day than it did before.',
  what_it_does: 'New auto-replenishing technology with activated aloe water actually helps skin create its own internal water source to continually rehydrate itself. It then locks in all that moisture for an endlessly plump, dewy, healthy-looking glow. Bursting with hyaluronic acid, nature\'s perfect moisture magnet, testing proves that it works non-stop for up to 72 hours—even after washing your face.',
  what_else_you_need_to_know: 'This product is allergy tested, non-acnegenic, and free of fragrance, alcohol, SLS, talc, mineral oil, and oil.',
  how_to_use: ['This multitasking formula can be used anytime skin needs a moisture boost, under or over makeup, or as a five-minute mask.'],
  ingredients: 'Water , Dimethicone , Butylene Glycol , Glycerin , Trisiloxane , Trehalose , Sucrose , Ammonium Acryloyldimethyltaurate/Vp Copolymer , Hydroxyethyl Urea , Camellia Sinensis (Green Tea) Leaf Extract , Silybum Marianum (Lady\'S Thistle) Extract , Betula Alba (Birch) Bark Extract , Saccharomyces Lysate Extract , Aloe Barbadensis Leaf Water , Thermus Thermophillus Ferment , Caffeine , Sorbitol , Palmitoyl Hexapeptide-12 , Sodium Hyaluronate , Caprylyl Glycol , Oleth-10 , Sodium Polyaspartate , Saccharide Isomerate , Hydrogenated Lecithin , Tocopheryl Acetate , Acrylates/C10-30 Alkyl Acrylate Crosspolymer , Glyceryl Polymethacrylate , Tromethamine , Peg-8 , Hexylene Glycol , Magnesium Ascorbyl Phosphate , Disodium Edta , Bht , Phenoxyethanol , Red 4 (Ci 14700) , Yellow 5 (Ci 19140)'
 )
  clinique_moisture_surge_72_hour_auto_replenishing_hydrator_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/clinique/clinique_moisture_surge_72_hour_auto_replenishing_hydrator.png")
  clinique_moisture_surge_72_hour_auto_replenishing_hydrator.photos.attach(io: clinique_moisture_surge_72_hour_auto_replenishing_hydrator_attachment, filename: 'clinique_moisture_surge_72_hour_auto_replenishing_hydrator')


clinique_dramatically_different_moisturizing_lotion = Product.create!(
  name: 'Dramatically Different Moisturizing Lotion+',
  size: '4.2 oz/ 125 mL',
  price: 28.00,
  category: 'Moisturizer',
  brand_id: clinique.id,
  what_it_is: 'A dermatologist-developed face moisturizer that softens, smooths, and improves, leaving skin glowing.',
  what_else_you_need_to_know: 'This genius yellow moisturizer slips on easily and absorbs quickly to hydrate skin all day. It helps strengthen skin’s own moisture barrier, so more moisture stays in, and holds onto moisture for a youthful-looking glow.',
  how_to_use: ['Use twice a day, morning and night.', 'Apply to face and throat all over, or where needed.', 'Cleansed, exfoliated skin accepts moisture better. For best results, apply after Facial Soap and Clarifying Lotion, Steps 1 and 2 of Clinique’s 3-Step System.', 'A little goes a long way: massage a small pump of lotion into skin wherever it\'s dry.'],
  ingredients: 'Water, Mineral Oil\Paraffinum Liquidum\Huile Minérale , Glycerin , Petrolatum , Stearic Acid , Glyceryl Stearate , Sesamum Indicum (Sesame) Oil , Urea , Lanolin Alcohol , Triethanolamine , Hordeum Vulgare (Barley) Extract\Extrait D\'Orge , Cucumis Sativus (Cucumber) Fruit Extract , Helianthus Annuus (Sunflower) Seedcake , Propylene Glycol Dicaprate , Sodium Hyaluronate , Butylene Glycol , Pentylene Glycol , Trisodium Edta , Phenoxyethanol , Yellow 6 (Ci 15985) , Yellow 5 (Ci 19140) , Red 33 (Ci 17200). '
 )
  clinique_dramatically_different_moisturizing_lotion_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/clinique/clinique_dramatically_different_moisturizing_lotion.png")
  clinique_dramatically_different_moisturizing_lotion.photos.attach(io: clinique_dramatically_different_moisturizing_lotion_attachment, filename: 'clinique_dramatically_different_moisturizing_lotion')


dr_jart_cicapair_tiger_grass_color_correcting_treatment = Product.create!(
  name: 'Cicapair ™ Tiger Grass Color Correcting Treatment SPF 30',
  size: '1.7 fl. oz/ 50 mL',
  price: 52.00,
  category: 'Face Serums',
  brand_id: dr_jart.id,
  what_it_is: 'A green-to-beige color-correcting treatment that corrects redness and helps protect skin from environmental aggressors.',
  what_it_does: 'Cicapair™ Tiger Grass Color Correcting Treatment is the all-in-one treatment that includes a color-changing capsule within the formula to cover blemishes and restore the look of the skin\'s strength, health, and vitality. It provides SPF 30 protection from UV light, and it forms a dust barrier to protect the skin from the environment while enhancing the skin\’s viability. It restores the strength of skin with the resurrection plants, houttuynia cordata and yarrow. It\’s infused with sodium, potassium, calcium, and magnesium to help improve the skin’s moisture levels and restore fatigued skin for a healthy appearance. ',
  what_else_you_need_to_know: 'Cicapair™ Collection is inspired by the true legend of Asian Tigers, rolling in Centella Asiatica to heal their battle wounds. Also known as tiger grass, its medicinal use has been recognized for centuries. For generations, this active ingredient has also been recognized as a recovery system to help support wounded skin exhibiting inflammation, redness, or blemishes.',
  how_to_use: ['After cleansing skin, apply a moderate amount; cream will change from green-to-beige to correct any redness.'],
  ingredients: 'Water, Centella Asiatica Leaf Water, Isononyl Isononanoate, Cyclopentasiloxane, Butylene Glycol, Dimethicone, Phenyl Trimethicone, Methyl Methacrylate Crosspolymer, Beeswax/Cire D\'abeille, Glycerin, Diethylhexyl Carbonate, Polyglyceryl-3 Polyricinoleate, Niacinamide, Polymethylsilsesquioxane, Cyclohexasiloxane, Pan-Thenol, Diglycerin, Iron Oxides, Polyglyceryl-4 Diisostearate/Polyhydroxystearate/Sebacate, Dimethicone/Vinyl Dimethi- Cone Crosspolymer, Isododecane, Ethylene/Methacrylate Copolymer, Cetearyl Alcohol, Polyglyceryl-2 Triisostearate, Aluminum Hydroxide, Stearic Acid, Disteardimonium Hectorite, Acrylates/Ammonium Methacrylate Copolymer, Sclerotium Gum, Sodium Benzoate, Acrylates/Dimethicone Copolymer, Hydrogen Dimethicone, Chromium Oxide Greens, Triethyl Citrate, Potassium Sorbate, Fragaria Vesca (Strawberry) Leaf Extract, Disodium EDTA, BHT, Alcohol, Asiaticoside, Aden- Osine, Triethoxycaprylylsilane, Lavandula Angustifolia (Lavender) Oil, Boron Nitride, Asiatic Acid, Madecassic Acid, Citrus Grandis (Grapefruit) Peel Oil, Rosmarinus Officinalis (Rosemary) Leaf Oil, 1,2- Hexanediol, Anthemis Nobilis Flower Oil, Houttuynia Cordata Extract, Propanediol, Centella Asiatica Extract, Gentiana Lutea Root Extract, Artemisia Absinthium Extract, Achillea Millefolium Extract, Arnica Montana Flower Extract, Polysorbate 20, Aniba Rosodora (Rosewood) Wood Oil, Sodium Glycerophosphate, Selaginella Lepidophylla Extract, Potassium Magnesium Aspartate, Citric Acid, Calcium Gluconate, Madecassoside, Magnesium Gluconate, Centella Asiatica Meristem Cell Culture, Xanthan Gum, Titanium Dioxide, Zinc Oxide.'
 )
  dr_jart_cicapair_tiger_grass_color_correcting_treatment_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dr+jart/dr_jart_cicapair_tiger_grass_color_correcting_treatment.png")
  dr_jart_cicapair_tiger_grass_color_correcting_treatment.photos.attach(io: dr_jart_cicapair_tiger_grass_color_correcting_treatment_attachment, filename: 'dr_jart_cicapair_tiger_grass_color_correcting_treatment')


laneige_water_bank_moisture_cream = Product.create!(
  name: 'Water Bank Moisture Cream',
  size: '1.6 oz/ 50 mL',
  price: 35.00,
  category: 'Moisturizer',
  brand_id: laneige.id,
  what_it_is: 'A richly-texturized moisturizing cream that strengthens and retains moisture all day.',
  what_it_does: 'Water Bank Moisture Cream is formulated with LANEIGE’s patented Hydro Ionized Mineral Water—fusing essential minerals zinc, potassium, calcium, magnesium, manganese, and sodium—to help replenish and retain ideal hydration levels, preventing future moisture loss. Olive squalane strengthens skin’s natural barrier, for intense nourishment, and the cream is richly texturized for instant absorption. It relieves dryness and leaves skin hydrated and glowing.',
  what_else_you_need_to_know: 'This product is dermatologist tested. LANEIGE does not test ingredients or products on animals.',
  how_to_use: ['Gently spread from center of the face outward after essence.'],
  ingredients: 'Water, Glycerin, Butylene Glycol, Squalane, Dimethicone, Pentaerythrityl Tetraethylhexanoate, BIS-PEG-18 Methyl Ether Dimethyl Silane, Dicaprylyl Ether, Cyclopentasiloxane, Sucrose Polystearate, Cyclohexasiloxane, Glyceryl Stearate, Urea, Chenopodium Quinoa Seed Extract, Salicornia Herbacea Extract, Magnesium Sulfate, Manganese Sulfate, Calcium Chloride, Zinc Sulfate, Sodium Hyaluronate, Limnanthes Alba (Meadowfoam) Seed Oil, Copper Tripeptide-1, Ceramide 3, Phytosphingosine, Niacinamide, Myristyl Myristate, Glyceryl Undecylenate, Acetyl Glucosamine, Cetearyl Alcohol, Cetyl Ethylhexanoate, Tocopherol, Propanediol, Stearic Acid, Ascorbyl Glucoside, Hydrogenated Lecithin, Xanthan Gum, Trisiloxane, Palmitic Acid, Potassium Cetyl Phosphate, Polyglyceryl-10 Stearate, Polyacrylate-13, Polyisobutene, Propylene Glycol, PEG-100 Stearate, Acrylates / C10-30 Alkyl Acrylate Crosspolymer, PEG-5 Rapeseed Sterol, Hydroxyethyl Acrylate / Sodium Acryloyldimethyl Taurate Copolymer, Hydrogenated Polyisobutene, Polysorbate 20, Tromethamine, Disodium EDTA, Glyceryl Caprylate, Ethylhexylglycerin, Fragrance.'
 )
  laneige_water_bank_moisture_cream_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/laneige/laneige_water_bank_moisture_cream.png")
  laneige_water_bank_moisture_cream.photos.attach(io: laneige_water_bank_moisture_cream_attachment, filename: 'laneige_water_bank_moisture_cream')


it_cosmetics_secret_sauce_clinically_advanced_miraculous_anti_aging_moisturizer = Product.create!(
  name: 'Secret Sauce Clinically Advanced Miraculous Anti-Aging Moisturizer',
  size: '2 oz/ 60 mL',
  price: 68.00,
  category: 'Moisturizer',
  brand_id: it_cosmetics.id,
  what_it_is: 'A luxurious moisturizer that utilizes powerful fermented ingredients and gives you clinically tested anti-aging, radiance-boosting results.',
  what_it_does: 'Secret Sauce helps you instantly reveal younger-looking skin and experience more miraculous results over time. The skin-loving, powerfully potent secret lies in the Secret Sauce fermented complex: seven clinically advanced, penetration-enhancing fermented ingredients that work to increase absorbency and maximize the anti-aging benefits. It features anti-aging collagen, peptides, hyaluronic acid, vitamin C, and licorice root to reduce discoloration, lines, and wrinkles. Combined with proprietary Drops of Light Technology™ concentrate and diamond powder, the revolutionary formula delivers a youthful-looking, lit-from-within glow.',
  what_else_you_need_to_know: 'Developed with plastic surgeons and dermatologists, this product is clinically and ophthalmologist tested, cruelty-free, and formulated without alcohol.',
  how_to_use: ['Apply to clean skin in the morning and evening.', 'Using upward sweeping motions, apply onto face, neck, décolleté, and anywhere your skin needs moisture and rejuvenation.'],
  ingredients: 'Water, Butylene Glycol, Cetyl Ethylhexanoate, Glycerin, Caprylic/Capric Triglyceride, Tribehenin Peg-20 Esters, Olea Europaea (Olive) Fruit Oil, Hydrogenated Polyisobutene, Glyceryl Stearate, Palmitic Acid, Sodium Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Stearic Acid, Dimethicone, Isohexadecane, Phenoxyethanol, Tocopheryl Acetate, Chlorphenesin, Tromethamine, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Polysorbate 80, Ethylhexylglycerin, Caprylyl Glycol, Sorbitan Oleate, Fragrance, Disodium Edta, Myristic Acid, Squalane, Ascorbic Acid, Colloidal Oatmeal, Cholesteryl Oleyl Carbonate, Niacinamide, Lactobacillus/Pumpkin Ferment Extract, Polymethylsilsesquioxane, Aloe Barbadensis Leaf Extract, Lactobacillus/Dipteryx Odorata Seed Ferment Filtrate, Camellia Sinensis Leaf Extract, Tocopherol, Panax Ginseng Root Extract, Sodium Hyaluronate, Cholesteryl Nonanoate, Cholesteryl Isostearate, Cholesteryl Chloride, Saccharum Officinarum (Sugar Cane) Extract, Cocos Nucifera (Coconut) Fruit Extract, Curcuma Longa (Turmeric) Root Extract, Vegetable Oil, Sophora Japonica Flower Extract, Aspergillus/Saccharomyces/Rice Ferment Filtrate, Peg-40 Hydrogenated Castor Oil, Glycyrrhiza Glabra (Licorice) Root Extract, Retinyl Palmitate, 1,2-Hexanediol, Steareth-20, Leuconostoc/Radish Root Ferment Filtrate, Hizikia Fusiforme Extract, Chlorella Minutissima Extract, Spirulina Platensis Extract, Codium Fragile Extract, Ulva Lactuca Extract, Fucus Vesiculosus Extract, Laminaria Saccharina Extract, Gelidium Cartilagineum Extract, Macrocystis Pyrifera Extract, Laminaria Digitata Extract, Lactobacillus/Algae Extract Ferment, Codium Tomentosum Extract, Sargassum Muticum Extract, Pikea Robusta Extract, Algae Extract, Agarum Cribosum Extract, Hydrolyzed Algae Extract, Laminaria Japonica Extract, Hydrolyzed Ulva Lactuca Extract, Porphyra Yezoensis Extract, Chlorella Ferment, Ecklonia Cava Extract, Enteromorpha Compressa Extract, Haematococcus Pluvialis Extract, Dunaliella Salina Extract, Undaria Pinnatifida Extract, Laminaria Cloustoni Extract, Sargassum Fulvellum Extract, Salicornia Herbacea Extract, Hypnea Musciformis Extract, Jania Rubens Extract, Citric Acid, Aspergillus/Rice Ferment Extract, Polysorbate 20, Rice Ferment Filtrate (Sake), N-Hydroxysuccinimide, Chamomilla Recutita (Matricaria) Flower Water, Lactobacillus/Centella Asiatica/Gleditsia Sinensis Thorn/Houttuynia Cordata Extract/Phellodendron Amurense Bark/Polygonum Cuspidatum Root/Prunella Vulgaris/Torilis Japonica Extract Ferment Filtrate, Phaseolus Angularis Seed Extract, Saccharomyces/Camellia Sinensis Extract Ferment Filtrate, Lactobacillus Ferment, Lactobacillus/Rice Ferment Filtrate, Bacillus/Cordyceps Sinensis/Ganoderma Lucidum/Inonotus Obliquus/Lentinus Edodes/Phellinus Linteus/Schizophyllum Commune/Tricholoma Matsutake Extract Ferment Filtrate, Carbomer, Hydrolyzed Collagen, Algae Oligosaccharides, Macrocystis Pyrifera (Kelp) Protein, Diamond Powder, Potassium Sorbate, Acetyl Hexapeptide-8, Palmitoyl Pentapeptide-4, Palmitoyl Oligopeptide, Chrysin, Palmitoyl Tetrapeptide-7, Chlorhexidine Digluconate.'
 )
  it_cosmetics_secret_sauce_clinically_advanced_miraculous_anti_aging_moisturizer_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/it+cosmetics/it_cosmetics_secret_sauce_clinically_advanced_miraculous_anti_aging_moisturizer.png")
  it_cosmetics_secret_sauce_clinically_advanced_miraculous_anti_aging_moisturizer.photos.attach(io: it_cosmetics_secret_sauce_clinically_advanced_miraculous_anti_aging_moisturizer_attachment, filename: 'it_cosmetics_secret_sauce_clinically_advanced_miraculous_anti_aging_moisturizer')


sk_ii_rna_power_face_cream = Product.create!(
  name: 'R.N.A. POWER Face Cream',
  size: '2.7 oz/ 80 mL',
  price: 230.00,
  category: 'Moisturizer',
  brand_id: sk_ii.id,
  what_it_is: 'A bestselling moisturizing cream to supercharge your skin\'s youthful radiance.',
  what_it_does: 'Packed with nourishing ingredients, this velvety moisturizer restores skin suppleness and elasticity with intense hydration. Inspired by award-winning science, this advanced formula combines SK-II\'s Radical New Age (R.N.A.) complex with signature ingredient pitera, a bio-ingredient that helps renew skin, boost moisture and radiance, and combat signs of aging.',
  what_else_you_need_to_know: 'R.N.A. POWER Cream is part of the SK-II anti-aging skincare collection. The products in this skincare line are essential in boosting your skin’s elasticity and retaining its firmness. This product is colorant-free and is not tested on animals.',
  how_to_use: ['Use this firming cream and wrinkle treatment after you cleanse, tone, treat, and target.', 'Use daily, both in the morning and again in the evening as a night cream. It can be used as a neck-firming cream as well.', 'Place a pearl-size amount, approximately one-half to three-fourths of an inch in diameter, into your palm.', 'Apply evenly onto your face by dotting on forehead, both cheeks and chin.', 'Spread the cream softly across the entire face, starting in the center and moving outward, massaging into skin to maximize absorption.'],
  ingredients: 'Water, Glycerin, Galactomyces Ferment Filtrate*, Isohexadecane, Niacinamide, Isopropyl Isostearate, Butylene Glycol, Butyrospermum Parkii (Shea) Butter, Caprylic/Capric Triglyceride, Pentylene Glycol, Dimethicone, Phytosteryl/Behenyl/Octyldodecyl Lauroyl Glutamate, Vinyl Dimethicone/Methicone Silsesquioxane Crosspolymer, Stearyl Alcohol, Sodium Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Cetyl Alcohol, Behenyl Alcohol, Panthenol, Tocopheryl Acetate, Benzyl Alcohol, Dimethiconol, Cetearyl Alcohol, Cetearyl Glucoside, Methylparaben, Peg-100 Stearate, Polymethylsilsesquioxane, Polysorbate 80, Stearic Acid, Disodium Edta, Propylparaben, Sodium Peg-7 Olive Oil Carboxylate, Ethylparaben, Sorbitan Oleate, Chlorella Vulgaris Extract, Peg-100 Stearate, Peg-7 Glyceryl Cocoate, Sodium Hydroxide, Fragrance, Acanthopanax Senticosus (Eleuthero) Root Extract, Hydrolyzed Soy Protein, Cynara Scolymus (Artichoke) Leaf Extract, Polyquaternium-7, Hydrolyzed Yeast Protein, Palmitoyl Pentapeptide-4, Methylsilanol Tri-Peg-8 Glyceryl Cocoate, Methicone, Ci 77891, Ci 77492. *Pitera™.'
 )
  sk_ii_rna_power_face_cream_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/sk-ii/sk_ii_facial_treatment_clear_lotion_toner.png")
  sk_ii_rna_power_face_cream.photos.attach(io: sk_ii_rna_power_face_cream_attachment, filename: 'sk_ii_rna_power_face_cream')


estee_lauder_resilience_lift_firming_sculting_face_neck_creme = Product.create!(
  name: 'Resilience Lift Firming/Sculpting Face and Neck Creme Broad Spectrum SPF 15, Normal/Combination Skin',
  size: '2.5 oz',
  price: 108.00,
  category: 'Moisturizer',
  brand_id: estee_lauder.id,
  what_it_is: 'A face and neck cream for normal to combinaton skin types to give the complexion a youthful, lifted, firmer look.',
  what_it_does: 'Look as young as you feel with a multifaceted, 24-hour lift system. Powered by an exclusive Photo-Activated Lift Complex, Resilience Lift day formulas harness the beneficial power of visible light. It features a light-responsive enzyme (plankton extract), mineral (malachite), and plant extract (mimosa) to support skin’s natural collagen and elastin production. Facial contours appear sculpted and newly defined, lines and wrinkles look nicely smoothed, and skin is moisturized to perfection. Over time, skin\'s strength, resiliancy, and volume appear renewed and you\'ll see a remarkably younger, revitalized look.',
  what_else_you_need_to_know: 'This product has been dermatologist tested and is non-acnegenic.',
  how_to_use: ['Apply every morning after your repair serum.', 'At night, pair with Resilience Lift Night Firming/Sculpting Crème.'],
  ingredients: 'Res Lift Firm/Sclp Face Nc Spf15 Division: El (Estee Lauder)Active Ingredients: Avobenzone 3.00% , Octisalate 5.00% , Octocrylene 2.70%Ingredients: Water , Neopentyl Glycol Diheptanoate , Cetyl Alcohol , Pentaerythrityl Tetraethylhexanoate , Glycerin , Polyethylene , Butyloctyl Salicylate , Di-C12-15 Alkyl Fumarate , Petrolatum , Hydrogenated Lecithin , Butylene Glycol , Propanediol , Hydrogenated Polyisobutene , Octyldodecyl Myristate , Hexyldecyl Stearate , Dimethicone , Glyceryl Stearate , Laminaria Digitata Extract , Behenyl Alcohol , Algae Extract , Persea Gratissima (Avocado) Oil , Coleus Barbatus Extract , Cucumis Melo (Melon) Fruit Extract , Potato Starch Modified , Mimosa Tenuiflora Bark Extract , Yeast Extract/Faex/Extrait De Levure , Plankton Extract , Aminopropyl Ascorbyl Phosphate , Thermus Thermophillus Ferment , Saccharomyces Ferment Lysate Filtrate , Artemia Extract , C12-16 Alcohols , Acetyl Glucosamine , Linoleic Acid , Whey Protein/Lactis Protein/Proteine Du Petit-Lait , Peg-100 Stearate , Tocopheryl Acetate , Caffeine , Ergothioneine , Glycine Soja (Soybean) Sterols , Decarboxy Carnosine Hcl , Palmitic Acid , Creatine , Ethylhexylglycerin , Polymethyl Methacrylate , Trehalose , Glucose , Sodium Hyaluronate , Sorbitol , Zinc Pca , Cholesterol , Malachite , Acetyl Hexapeptide-8 , Maltodextrin , Lecithin , Acrylamide/Sodium Acryloyldimethyltaurate Copolymer , Isohexadecane , Sodium Hydroxide , Polysorbate 80 , Lactoperoxidase , Hexylene Glycol , Hydrogenated Starch Hydrolysate , Potassium Sulfate , Glucose Oxidase , Polysilicone-11 , Propylene Glycol Dicaprylate , Xanthan Gum , Caprylyl Glycol , Citric Acid , Fragrance , Bht , Disodium Edta , Phenoxyethanol , Potassium Sorbate , Mica , Titanium Dioxide (Ci 77891) , Red 4 (Ci 14700) , Yellow 5 (Ci 19140)'
 )
  estee_lauder_resilience_lift_firming_sculting_face_neck_creme_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/estee+lauder/estee_lauder_resilience_lift_firming_sculting_face_neck_creme.png")
  estee_lauder_resilience_lift_firming_sculting_face_neck_creme.photos.attach(io: estee_lauder_resilience_lift_firming_sculting_face_neck_creme_attachment, filename: 'estee_lauder_resilience_lift_firming_sculting_face_neck_creme')


philosophy_renewed_hope_in_a_jar_refreshing_and_refining_moisturizer = Product.create!(
  name: 'Renewed Hope in A Jar Refreshing & Refining Moisturizer',
  size: '2 oz/ 60 mL',
  price: 39.00,
  category: 'Moisturizer',
  brand_id: philosophy.id,
  what_it_is: 'A skin-renewing moisturizer for a long-lasting glow and continuous hydration.',
  what_it_does: 'Renewed Hope in A Jar Refreshing & Refining Moisturizer is formulated with a triple blend of alpha hydroxy acids to refine texture for visibly smaller pores and a smoothed appearance of fine lines. See soft, dewy smoothness, instant and all-day hydration, and re-energized healthy-looking color and glow. Asian fruit extracts help support natural microcirculation.',
  what_else_you_need_to_know: 'Bringing hope to all for all-day hydration and glow. Same great size, new glowing price.',
  how_to_use: ['Apply morning and evening after cleanser and treatment.'],
  ingredients: 'Water, Cyclopentasiloxane, Stearic Acid, Glycerin, Butylene Glycol, C12-15 Alkyl Benzoate, Glycolic Acid, Dimethicone, Polyacrylamide, Cetearyl Alcohol, Phenoxyethanol, Sodium Hydroxide, C13-14 Isoparaffin, Dimethicone Crosspolymer, Ceteareth-20, Ammonium Acryloyldimethyltaurate/Vp Copolymer, Polysilicone-11, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Laureth-7, Citric Acid, Chlorphenesin, Mandelic Acid, Tocopheryl Acetate, Synthetic Fluorphlogopite, Ethlhexyl Palmitate, Propanediol, Parfum/Fragrance, Disodium Edta, Adenosine, Evodia Rutaecarpa Fruit Extract, Limonene, Faex/Yeast Extract/Extrait De Levure, Magnesium Stearate, Opuntia Coccinellifera Flower Extract, Silica Dimethyl Silylate, Caprylyl Glycol, Bht, Ethylhexylglycerin, Hyaluronic Acid, Silanetriol, Sodium Hyaluronate, Sorbic Acid, Hexylene Glycol, Bismuth Oxychloride (Ci 77163).'
 )
  philosophy_renewed_hope_in_a_jar_refreshing_and_refining_moisturizer_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/philosophy/philosophy_renewed_hope_in_a_jar_refreshing_and_refining_moisturizer.png")
  philosophy_renewed_hope_in_a_jar_refreshing_and_refining_moisturizer.photos.attach(io: philosophy_renewed_hope_in_a_jar_refreshing_and_refining_moisturizer_attachment, filename: 'philosophy_renewed_hope_in_a_jar_refreshing_and_refining_moisturizer')


caudalie_vinosource_moisturizing_sorbet = Product.create!(
  name: 'Vinosource Moisturizing Sorbet',
  size: '1.3 oz / 40 mL',
  price: 39.00,
  category: 'Moisturizer',
  brand_id: caudalie.id,
  what_it_is: 'A bestselling, ultra-lightweight soothing and hydrating gel-cream.',
  what_it_does: 'Like a cool drink for thirsty skin, this lightweight natural gel-cream uses hydrating organic grape water, calming chamomile, and antioxidant-rich grape seed polyphenols to replenish moisture and soothe even the most sensitive skin. Thanks to the organic grape water and chamomile, this ultra-soothing formula calms irritation and reduces redness. The patented grape seed polyphenols fight wrinkle-causing free radicals like pollution, stress, and sun damage. Sorbet is also is rich in Vinolevure®, which strengthens skin, making it less sensitive and more resilient over time. These precious ingredients provide the perfect recipe for baby soft, bouncy skin. When applied, feel the texture melt from a cream to a water-like gel upon contact. This "quick break" technology is the lipophilic technology that allows water to be trapped in the cream, and once the cream touches the skin, it releases the water for lightweight hydration.',
  what_else_you_need_to_know: 'This product is vegan, non-toxic, cruelty-free, noncomedogenic, hypoallergenic, safe for sensitive skin and pregnancy, and free of all fillers, gluten, GMOs, and synthetic chemicals.',
  how_to_use: ['Apply Vinosource Moisturizing Sorbet morning and evening on face and neck after Vinosource S.O.S. Thirst-Quenching Serum.', 'Avoid the eye contour.'],
  ingredients: 'Water, Vitis Vinifera (Grape) Fruit Water*, Dicaprylyl Ether*, Glycerin*, Butyrospermum Parkii (Shea Butter) Extract*, Hexyldecanol*, Hexyldecyl Laurate*, Behenyl Alcohol*, Glyceryl Stearate*, Erythritol, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Parfum (Fragrance), Tocopherol*, Lecithin*, Caprylyl Glycol, Mannitol*, Sodium Benzoate, Xanthan Gum, Palmitoyl Grape Seed Extract*, Vitis Vinifera (Grape) Juice*, Sodium Hydroxide, Glycine Soja (Soybean) Sterols*, Butylene Glycol, Sodium Citrate, Citric Acid, Chamomilla Recutita (Matricaria) Flower Extract*, Sodium Carboxymethyl Betaglucan, Sodium Phytate*, Potassium Sorbate, Biosaccharide Gum-1, Sodium Hyaluronate, Homarine Hcl, Glyceryl Caprylate*, Acetyl Tetrapeptide-15. *Plant origin.'
 )
  caudalie_vinosource_moisturizing_sorbet_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/caudalie/caudalie_vinosource_moisturizing_sorbet.png")
  caudalie_vinosource_moisturizing_sorbet.photos.attach(io: caudalie_vinosource_moisturizing_sorbet_attachment, filename: 'caudalie_vinosource_moisturizing_sorbet')



dr_dennis_gross_skincare_ferulic_retinol_triple_correction_eye_serum = Product.create!(
  name: 'Ferulic + Retinol Triple Correction Eye Serum',
  size: '0.5 oz/ 15 mL',
  price: 69.00,
  category: 'Eye Creams & Treatments',
  brand_id: dr_dennis_gross_skincare.id,
  what_it_is: 'A transformative eye serum powered by retinol and supercharged with ferulic acid to visibly firm skin around the eye, reduce the look of wrinkles, and smooth the eyelid for a healthier-looking appearance.',
  what_it_does: 'Using professional-grade ingredients, this serum targets three signs of aging: wrinkles, puffiness, and dark circles. NYC dermatologist Dr. Dennis Gross found the combination of the potent antioxidants ferulic acid and retinol, which helps support natural collagen, reduce the appearance of wrinkles, and diminish the look of crepiness in the eyelid. Licorice root extract brightens dark circles and deflates under-eye puffiness, while caffeine provides firming and tightening effects. The weightless, silky formula allows for smoother makeup application and gives you a rested, refreshed look—with or without makeup.',
  what_else_you_need_to_know: 'This product is vegan and cruelty-free.',
  how_to_use: ['Gently tap around each eye including the lids, morning and night.', 'For optimal results, follow with Ferulic + Retinol Eye Cream.', 'It is recommended to wear sunglasses that completely cover the eye area to prevent wrinkles around the eye.'],
  ingredients: 'Water, Propylene Glycol, Ethoxydiglycol, Centella Asiatica Extract, Glycyrrhiza Glabra (Licorice) Root Extract, Ferulic Acid, Retinol, Potassium Azeloyl Diglycinate, Arctostaphylos Uva Ursi Leaf Extract, Arbutin, Morus Nigra Fruit Extract, Salix Alba (Willow) Bark Extract, Quercetin, Caffeine, Ubiquinone, Sodium Hyaluronate, Salicylic Acid, Glycolic Acid, Mandelic Acid, Panthenol, Butylene Glycol, Glycerin, Disodium Lauriminodipropionate Tocopheryl Phosphates, Lecithin, Tetrapeptide-21, Acrylates/Carbamate Copolymer, Disodium EDTA, PVM/MA Decadiene Crosspolymer, Urea, Polysorbate 20, BHT, Potassium Hydroxide, Phenoxyethanol, Iron Oxides (CI 77491, CI 77492, CI77499).'
 )
  dr_dennis_gross_skincare_ferulic_retinol_triple_correction_eye_serum_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dr+dennis+gross+skincare/dr_dennis_gross_skincare_ferulic_retinol_triple_correction_eye_serum.png")
  dr_dennis_gross_skincare_ferulic_retinol_triple_correction_eye_serum.photos.attach(io: dr_dennis_gross_skincare_ferulic_retinol_triple_correction_eye_serum_attachment, filename: 'dr_dennis_gross_skincare_ferulic_retinol_triple_correction_eye_serum')


dr_brandt_skincare_microdermabrasion_age_defying_exfoliator = Product.create!(
  name: 'microdermabrasion age defying exfoliator',
  size: '2 oz',
  price: 79.00,
  category: 'Exfoliator',
  brand_id: dr_brandt_skincare.id,
  what_it_is: 'A cult-favorite exfoliator that refines the look of skin’s texture and softens imperfections for a radiant, smoother, clearer, and brighter complexion—in minutes.',
  what_else_you_need_to_know: 'Get a youthful glow with this microdermabrasion solution. This formula contains aluminum oxide crystals, lactic acid, and soothing botanicals to polish away dead skin cells, provide a radiant, healthy look, and smooth skin\'s texture. Watch as the appearance of fine lines, acne marks, and skin discolorations diminish for maximum results in minimal time.',
  how_to_use: ['Dampen skin with warm water.', 'Slowly and gently massage cream onto skin for 1-2 minutes, avoiding the eye area.', 'Rinse well, pat dry.', 'Best if used 1-2 times per week, allowing 3 days between applications.'],
  ingredients: 'Water, Alumina, Caprylic/Capric Triglyceride, Glycerin, Cetyl Alcohol, Glyceryl Stearate, Peg-100 Stearate, Ammonium Acryloyldimethyltaurate/Vp Copolymer, Simmondsia Chinensis (Jojoba) Seed Oil, Xanthan Gum, Phenoxyethanol,Lactic Acid, Fragrance (Parfum), Menthone Glycerin Acetal, Allantoin, Disodium Edta, Tocopheryl Acetate, Magnesium Oxide, Propylene Glycol, Aloe Barbadensis Leaf Extract, Vitis Vinifera (Grape) Seed Extract, Chamomilla Recutita (Matricaria) Flower Extract, Camellia Sinensis Leaf Extract, Citral, Limonene.'
 )
  dr_brandt_skincare_microdermabrasion_age_defying_exfoliator_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dr+brandt/dr_brandt_skincare_microdermabrasion_age_defying_exfoliator.png")
  dr_brandt_skincare_microdermabrasion_age_defying_exfoliator.photos.attach(io: dr_brandt_skincare_microdermabrasion_age_defying_exfoliator_attachment, filename: 'dr_brandt_skincare_microdermabrasion_age_defying_exfoliator')


dr_brandt_skincare_pores_no_more_pore_refiner_primer = Product.create!(
  name: 'pores no more® pore refiner primer',
  size: '1 oz',
  price: 45.00,
  category: 'Face Primer',
  brand_id: dr_brandt_skincare.id,
  what_it_is: 'An effective primer that instantly* mattifies shine and minimizes the look of pores. *Individual results may vary.',
  what_it_does: 'A cult favorite for six years, pores no more® pore refiner primer is Dr. Brandt’s quick fix for flawless, photo-ready skin at any age and during any season. This miracle base creates the perfect canvas for your makeup application. It acts as an invisible barrier to prevent makeup from clogging pores and as a velvety primer to absorb excess oil and blur fine lines and imperfections while improving the longevity of makeup. Your skin will look and feel smoother, more uniform, and perfectly shine-free.',
  what_else_you_need_to_know: 'A game-changer in the world of selfies, this cult-favorite is Dr. Brandt’s quick fix for flawless, photo-ready skin. An instantly* mattifying primer and pore refiner in one, it’s a miracle base that creates the ideal skin canvas for long-lasting makeup. The velvety formula absorbs excess oil, minimizes the look of pores, blurs fine lines and imperfections, and is beautifully melt-proof—no matter how high the humidity. Skin looks and feels smooth and fresh with an ultra-clean sensation. *Individual results may vary.',
  how_to_use: ['Use AM after your moisturizer.', 'Re-apply throughout the day as necessary, patting on top of makeup.', 'May be worn alone for a nude look or under makeup.'],
  ingredients: 'Cyclopentasiloxane, Dimethicone Crosspolymer, Methyl Methacrylate Crosspolymer, Lauryl Peg/Ppg-18/18 Methicone, Peg/Ppg-18/18 Dimethicone, Cyclotetrasiloxane, Magnesium Silicate, Calcium Aluminum Borosilicate, Dimethicone/Vinyl Dimethicone Crosspolymer, Linum Usitatissimum (Linseed) Seed Extract, Dimethyl Oxobenzo Dioxasilane, Ethylhexyl Palmitate, Phenoxyethanol, Lavandula Angustifolia (Lavender) Oil, Silica Dimethyl Silylate, Melaleuca Alternifolia (Tea Tree) Leaf Oil, Silica, Triethoxycaprylylsilane, Caprylyl Glycol, Propylene Glycol, Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491, Ci 77492, Ci 77499).'
 )
  dr_brandt_skincare_pores_no_more_pore_refiner_primer_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dr+brandt/dr_brandt_skincare_pores_no_more_pore_refiner_primer.png")
  dr_brandt_skincare_pores_no_more_pore_refiner_primer.photos.attach(io: dr_brandt_skincare_pores_no_more_pore_refiner_primer_attachment, filename: 'dr_brandt_skincare_pores_no_more_pore_refiner_primer')


dr_dennis_gross_skincare_ferulic_and_retinol_wrinkle_recovery_overnight_serum = Product.create!(
  name: 'Ferulic + Retinol Wrinkle Recovery Overnight Serum',
  size: '1 oz/ 30 mL',
  price: 88.00,
  category: 'Face Serums',
  brand_id: dr_dennis_gross_skincare.id,
  what_it_is: 'An overnight serum that fights the appearance of wrinkles and reduces the look of imperfections.',
  what_it_does: 'Supercharge your beauty sleep. These three skin-repairing and protective ingredients support skin when it needs it most—at night when skin is recovering from daytime aggressors. This essential nighttime serum smooths the appearance of wrinkles, recovers the look of firmness, and retexturizes skin’s appearance so you can wake up confident in your complexion.',
  what_else_you_need_to_know: 'This product is vegan and cruelty-free.',
  how_to_use: ['Massage two to three pumps into clean, dry skin nightly.', 'Follow with any moisturizer of your choice from Dr. Dennis Gross Skincare™.', 'Use sunscreen during the day.'],
  ingredients: 'Water, DiCaprylyl Carbonate, Niacinamide, Cetyl Alcohol, Propanediol, Isostearyl Alcohol, Jojoba Esters, Retinol, Ferulic Acid, Collagen Amino Acids, Sodium Hyaluronate, Hexylresorcinol, Ellagic Acid, Gallic Acid, Silybum Marianum Ethyl Ester, Tocopherol, Phospholipids, Camellia Sinensis Leaf Extract, Linoleic Acid, Linolenic Acid, Mandelic Acid, Lactic Acid, Sodium PCA, Retinyl Palmitate/Carrot Polypeptide, Retinyl Palmitate, Glycerin, Evodia Rutaecarpa Fruit Extract, Helianthus Annuus (Sunflower) Seed Wax, Acacia Decurrens Flower Wax, Glycine Soja (Soybean) Oil, Caprylic/Capric Triglyceride, Polyglycerin-3, Tricaprylin, Acrylates/Carbamate Copolymer, Butylene Glycol, BHT, Butylene Glycol Cocoate, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Polymethyl Methacrylate, Xanthan Gum, Ethylcellulose, Disodium EDTA, Sodium Hydroxide, Citrus Aurantium Bergamia (Bergamot) Fruit Extract, Citrus Limon (Lemon) Peel Extract, Lavandula Angustifolia (Lavender) Flower/Leaf/Stem Extract, Octoxynol-9, Phenoxyethanol.'
 )
  dr_dennis_gross_skincare_ferulic_and_retinol_wrinkle_recovery_overnight_serum_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dr+dennis+gross+skincare/dr_dennis_gross_skincare_ferulic_and_retinol_wrinkle_recovery_overnight_serum.png")
  dr_dennis_gross_skincare_ferulic_and_retinol_wrinkle_recovery_overnight_serum.photos.attach(io: dr_dennis_gross_skincare_ferulic_and_retinol_wrinkle_recovery_overnight_serum_attachment, filename: 'dr_dennis_gross_skincare_ferulic_and_retinol_wrinkle_recovery_overnight_serum')


dr_brandt_skincare_needles_no_more = Product.create!(
  name: 'needles no more™',
  size: '0.5 oz',
  price: 89.00,
  category: 'Face Serums',
  brand_id: dr_brandt_skincare.id,
  what_it_is: 'A revolutionary topical cream that targets lines and wrinkles to visibly improve the look of expression lines.',
  what_it_does: 'Needles No More is formulated with an exclusive tri-blend wrinkle smoother, a powerful synergistic smoother with peptides and minerals. It helps to provide instant* and long-term smoothing effect while visibly improving the look of expression lines. *Individual results may vary.',
  what_else_you_need_to_know: 'This wrinkle smoothing cream targets lines and wrinkles on the forehead, between brows, and crow\'s feet.',
  how_to_use: ['After cleansing, pat a small amount of cream to areas of concern (above the cheeks, crow\'s feet, and lines that appear along the forehead and between the brows).', 'Smooth into crease.', 'Use morning and night.'],
  ingredients: 'Water, Perfluorohexane, Butyrospermum Parkii Butter, Perfluoroperhydrophenanthrene, Perfluorodecalin, Butylene Glycol, Dicaprylate/Dicaprate, Hydrogenated Lecithin, Polymethyl Methacrylate, Sodium Acrylates Copolymer, Magnesium Gluconate, C12-16 Alcohols, Palmitic Acid, Glyceryl Stearate, Isopropyl Palmitate, Methyl Methacrylate Crosspolymer, Glycerin, Phenoxyethanol, Prolinamidoethyl Imidazole, Cetearyl Alcohol, Menthone Glycerin Acetal, Glutamylamidoethyl Imidazole, Tocopherol, Lecithin, Stearic Acid, Sodium Cocoyl Glutamate, Butylene Glycol, Xanthan Gum, Hydroxyethylcellulose, Chlorphenesin, Sodium Phytate, Ethylhexylglycerin, Ricinus Communis (Castor) Seed Oil, Anthemis Nobilis Flower Oil, Silanediol Salicylate, Adenosine, Tromethamine, Linalool, Palmitoyl Hexapeptide-52, Polyvinyl Alcohol, Lactic Acid, Glycolic Acid, Palmitoyl Heptapeptide-18, Methylpropanediol, Lavandula Angustifolia (Lavender) Flower Extract.'
 )
  dr_brandt_skincare_needles_no_more_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dr+brandt/dr_brandt_skincare_needles_no_more.png")
  dr_brandt_skincare_needles_no_more.photos.attach(io: dr_brandt_skincare_needles_no_more_attachment, filename: 'dr_brandt_skincare_needles_no_more')


dr_dennis_gross_skincare_hyaluronic_marine_hydration_booster = Product.create!(
  name: 'Hyaluronic Marine Hydration Booster',
  size: '1 oz/ 30 mL',
  price: 68.00,
  category: 'Face Serums',
  brand_id: dr_dennis_gross_skincare.id,
  what_it_is: 'A professional strength time-released concentrate helps infuse and seal deep moisture for firmer, smoother, softer-looking skin.',
  what_it_does: 'These hydration boosting microdroplets contain hyaluronic acid, watermelon extract, and centella asiatica, smoothing the appearance of fine lines and wrinkles for luxuriously softer skin. Multifunctional and easy to use, you can simply apply directly to targeted zones or mix into your favorite skin care products for a customized treatment and enhanced benefits.',
  what_else_you_need_to_know: 'This product is vegan and cruelty-free.',
  how_to_use: ['Apply directly to face, focusing on targeted treatment zones.', 'Also use as a booster by mixing a few drops into your serum, foundation, or to the second step of your Alpha Beta® Peel.', 'For daily AM and/or PM use.'],
  ingredients: 'Oenothera Biennis (Evening Primrose) Flower/Leaf/Stem Extract, Glycerin, Saccharide Isomerate, Yucca Aloifolia Leaf/Root Extract, Sodium Hyaluronate, Linoleic Acid, Centella Asiatica Extract, Cucumis Sativus (Cucumber) Fruit Extract, Ceramide AP, Ceramide EOP, Ceramide NP, Citrullus Lanatus (Watermelon) Fruit Extract, Hydrolyzed Collagen, Camellia Sinensis Leaf Extract, Quercetin Caprylate, Glycolic Acid, Lactic Acid, Chamomilla Recutita (Matricaria) Flower Extract, Glycine Soja (Soybean) Extract, Retinol, Tocopheryl Acetate, Symphytum Officinale Extract, Cocos Nucifera (Coconut) Fruit Juice, Tetrapeptide-21, Copper PCA, Sodium PCA, Urea, Bisabolol, Acrylates/Carbamate Copolymer, C13-14 Isoparaffin, Phytosphingosine, Zinc PCA, Laureth-7, Sodium Lauroyl Lactylate, Isosteareth-200 Linoleate, Polysorbate 20, Carbomer, Cholesterol, Polyacrylamide, Xanthan Gum, Disodium EDTA, Phenoxyethanol, Sodium Benzoate, Fragrance.'
 )
  dr_dennis_gross_skincare_hyaluronic_marine_hydration_booster_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/dr+dennis+gross+skincare/dr_dennis_gross_skincare_hyaluronic_marine_hydration_booster.png")
  dr_dennis_gross_skincare_hyaluronic_marine_hydration_booster.photos.attach(io: dr_dennis_gross_skincare_hyaluronic_marine_hydration_booster_attachment, filename: 'dr_dennis_gross_skincare_hyaluronic_marine_hydration_booster')



olaplex_no_4_bond_maintenance_shampoo = Product.create!(
  name: 'No. 4 Bond Maintenance™ Shampoo',
  size: '8.5 oz/ 250 mL',
  price: 28.00,
  category: 'Shampoo',
  brand_id: olaplex.id,
  what_it_is: 'A highly moisturizing, reparative shampoo that leaves hair easy to manage, shiny, and healthier with each use.',
  what_else_you_need_to_know: 'This shampoo repairs and protects hair from everyday stresses—including damaged hair, split ends, and frizz—by re-linking broken bonds. No.4 is color-safe and proven to reduce breakage and strengthen all types of hair.',
  how_to_use: ['Treat hair with Olaplex No. 3 (sold separately).', 'Apply and massage product throughout hair.', 'Rinse product from hair.', 'Follow with Olaplex No. 4 Bond Maintenance™ Conditioner (sold separately).'],
  ingredients: 'Water, Cetearyl Alcohol, PPG-3 Benzyl Ether Myristate, Caprylic/Capric Triglyceride, Cetyl Alcohol,Octyldodecyl Ricinoleate, Quaternium-91, Cetrimonium Chloride, Divinyldimethicone/Dimethicone Copolymer, Behentrimonium Chloride, Glycerin, Cetyl Esters, Isododecane, Bis-Aminopropyl Diglycol Dimaleate, Fragrance, Panthenol, Phospholipids, Dimethicone PEG-7 Isostearate, Pseudozyma Epicola/Argania Spinosa Kernel Oil Ferment Filtrate, Pseudozyma Epicola/Camellia Sinensis Seed Oil Ferment Extract Filtrate, Tocopheryl Linoleate/Oleate, Quaternium-95, Propanediol, Punica Granatum Extract, Morinda Citrifolia Fruit Extract, PEG-8, Euterpe Oleracea Fruit Extract, Camellia Sinensis Seed Oil, Crambe Abyssinica Seed Oil, Hydroxypropyl Cyclodextrin, Persea Gratissima (Avocado) Oil, Vitis Vinifera (Grape) Seed Oil, Disodium EDTA, Polysilicone-15, C11-15 Pareth-7, Hydroxypropyl Guar, Glycine Soja (Soybean) Oil, PEG-45M, PEG-7 Amodimethicone, Amodimethicone, C12-13 Pareth-23, C12-13 Pareth-3, Laureth-9, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate, PEG-4, Phenoxyethanol, Hexyl Cinnamal.'
 )
  olaplex_no_4_bond_maintenance_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/olaplex/olaplex_no_4_bond_maintenance_shampoo.png")
  olaplex_no_4_bond_maintenance_shampoo.photos.attach(io: olaplex_no_4_bond_maintenance_shampoo_attachment, filename: 'olaplex_no_4_bond_maintenance_shampoo')



briogeo_scalp_revival_charcoal_coconut_oil_microexfoliating_shampoo = Product.create!(
  name: 'Scalp Revival Charcoal + Coconut Oil Micro-exfoliating Shampoo',
  size: '8 oz/ 236 mL',
  price: 42.00,
  category: 'Shampoo',
  brand_id: briogeo.id,
  what_it_is: 'A unique, charcoal- and coconut oil-infused scalp shampoo that detoxifies, exfoliates, soothes, and balances the scalp for optimal scalp health.',
  what_it_does: 'This unique shampoo infuses binchotan charcoal to draw impurities from the scalp and hair follicle, providing the foundation for optimal scalp health. Vegetable-derived micro-exfoliators remove dead skin cells and product buildup to support a clean, balanced, and healthy scalp, as a cooling blend of peppermint and spearmint oils reduces scalp itchiness. Tea tree oil features anti-septic and healing properties to reduce scalp irritation, while coconut oil delivers superior moisturization to the scalp to combat and prevent dryness and flakiness. Super-vitamin panthenol provides essential nutrients to strengthen the hair roots and shaft.',
  what_else_you_need_to_know: 'This product is vegan, cruelty-free, and formulated without gluten, silicones, DEA, or synthetic dyes.',
  how_to_use: ['Apply to wet hair and vigorously massage into the scalp and through to the ends.', 'Rinse and repeat as necessary.', 'Apply your favorite Briogeo conditioner or treatment post-shampoo.'],
  ingredients: 'Water, Sodium Lauroyl Methyl Isethionate*, Cocamidopropyl Betaine*, Sodium Cocoyl Isethionate*, Glycerin*, Cocos Nucifera (Coconut) Oil, Glyceryl Stearate*, Sodium Methyl Oleoyl Taurate*, Microcrystalline Cellulose*, Hydrogenated Castor Oil, Lithium Magnesium Sodium Silicate, Panthenol*, Xylitylglucoside*, Charcoal Powder, Melaleuca Alternifolia (Tea Tree) Leaf Oil, Mentha Piperita (Peppermint) Oil, Zingiber Officinale (Ginger) Root Oil, Mentha Viridis (Spearmint) Leaf Oil, Anhydroxylitol*, Bisabolol*, Menthyl Lactate*, Xylitol*, Polyquaternium-7, Fragrance. *Coconut, vegetable, plant, or sugar derived.'
 )
  briogeo_scalp_revival_charcoal_coconut_oil_microexfoliating_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/briogeo/briogeo_scalp_revival_charcoal_coconut_oil_microexfoliating_shampoo.png")
  briogeo_scalp_revival_charcoal_coconut_oil_microexfoliating_shampoo.photos.attach(io: briogeo_scalp_revival_charcoal_coconut_oil_microexfoliating_shampoo_attachment, filename: 'briogeo_scalp_revival_charcoal_coconut_oil_microexfoliating_shampoo')


alterna_haircare_caviar_antiaging_replenishing_moisture_shampoo = Product.create!(
  name: 'CAVIAR Anti-Aging® Replenishing Moisture Shampoo',
  size: '16.5 oz/ 488 mL',
  price: 52.00,
  category: 'Shampoo',
  brand_id: alterna_haircare.id,
  what_it_is: 'A luxe shampoo infused with caviar that restores moisture to dry, dull hair.',
  what_it_does: 'CAVIAR Anti-Aging Replenishing Moisture Shampoo is formulated with pure caviar extract—rich in omega 3 fatty acids, proteins, minerals, and vitamins A, C, and D—to visibly improve the signs of aging hair in as little as one use. A proprietary blend of Sea Silk® and an Age Control Complex® help target the physical, environmental, and natural signs of aging and stress that can cause hair to look older and start to lose moisture, becoming dry, brittle, and more prone to breakage.',
  what_else_you_need_to_know: 'Inspired by the Science of Skincare for Hair®, Caviar Anti-Aging is the first comprehensive line of hair care products that address intrinsic (natural aging process), chemical, and environmental aging by infusing hair with the finest, most effective ingredients to restore hydration, strength, vibrancy, and elasticity for more youthful-looking hair. Every product contains pure caviar from the roe of non-endangered sturgeon fish, sustainably farmed in France. It is naturally luxurious and rich in vitamins, minerals, and omega fatty acids that help restore hair\'s lipid layer to its optimal state—the key to healthier, younger-looking hair.',
  how_to_use: ['Massage throughout wet hair and rinse thoroughly.', 'For best results, follow CAVIAR Anti-Aging Replenishing Moisture Conditioner.'],
  ingredients: 'Water, Disodium Laureth Sulfosuccinate, Sodium Cocoyl Isethionate, Sodium Lauryl Sulfoacetate, Cocamidopropyl Hydroxysultaine, Sodium Lauroyl Sarcosinate, Cocamidopropylamine Oxide, Acrylates Copolymer, Methyl Gluceth-20, Glycol Distearate, Glycereth-26, Algae Extract, Amodimethicone, Saccharomyces/Magnesium Ferment, Saccharomyces/Copper Ferment, Saccharomyces/Iron Ferment, Saccharomyces/Silicon Ferment, Saccharomyces/Zinc Ferment, Phospholipids, Soy Amino Acids, Sodium Phytate, Polysilicone-15Linum Usitatissimum (Linseed) Seed Oil, Helianthus Annuus (Sunflower) Seed Oil, Hydrolyzed Vegetable Protein PG-Propyl Silanetriol, Glycerin, Laureth-9, Caviar Extract, Butyrospermum Parkii (Shea) Butter, Ascorbic Acid, Superoxide Dismutase, Polyquaternium-10, Trideceth-12, Tocopheryl Acetate, C12-13 Pareth-3, C12-13 Pareth-23, Divinyldimethicone/Dimethicone Copolymer, Lauryl Alcohol, C11-15 Pareth-7, Butylene Glycol, Polyquaternium-7, Decyl Glucoside, Dihydroxypropyl PEG-5 Linoleammonium Chloride, Guar Hydroxypropyltrimonium Chloride, Citric Acid, Disodium EDTA, Aminomethyl Propanol, Isopropyl Alcohol, Tetrasodium EDTA, Alcohol, Potassium Sorbate, Polyaminopropyl Biguanide, Benzoic Acid, Phenoxyethanol, Methylisothiazolinone, Fragrance.'
 )
  alterna_haircare_caviar_antiaging_replenishing_moisture_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/alterna+healthcare/alterna_haircare_caviar_antiaging_replenishing_moisture_shampoo.png")
  alterna_haircare_caviar_antiaging_replenishing_moisture_shampoo.photos.attach(io: alterna_haircare_caviar_antiaging_replenishing_moisture_shampoo_attachment, filename: 'alterna_haircare_caviar_antiaging_replenishing_moisture_shampoo')


living_proof_perfect_hair_day_shampoo = Product.create!(
  name: 'Perfect Hair Day Shampoo',
  size: '8 oz/ 236 mL',
  price: 26.00,
  category: 'Shampoo',
  brand_id: living_proof.id,
  what_it_is: 'A formula that enhances hair smoothness, volume, strength, and shine.',
  what_else_you_need_to_know: 'Perfect Hair Day Shampoo is powered by Living Proof’s patented healthy hair molecule (OFPMA) to smooth, polish and protect strands. This formula helps create visibly healthier hair, and helps repel dirt and oil to keep hair cleaner, longer. It is also color-safe and safe for chemically treated hair.',
  how_to_use: ['Apply to wet hair.', 'Lather.', 'Rinse.', 'Follow with Perfect hair Day™ Conditioner (sold separately).'],
  ingredients: 'Water, Sodium Lauroyl Methyl Isethionate, Cocamidopropyl Betaine, Sodium Methyl Cocoyl Taurate, Decyl Glucoside, Glycol Distearate, Octafluoropentyl Methacrylate (OFPMA), PCA Glyceryl Oleate, Behenyl Alcohol, PEG-150 Pentaerithrityl Tetrastearate, IPDI/PEG-15 Soyamine Copolymer Dimer Dilinoleate, PEG-200 Hydrogenated Glyceryl Palmate, PEG-7 Glyceryl Cocoate, Dihydroxypropyl PEG-5 Linoleammonium Chloride, Polyquaternium-47, Laureth-4, Laureth-23, PEG-6 Caprylic/Capric Glycerides, Fragrance, Tetrasodium EDTA, Citric Acid, Methylchloroisothiazolinone, Methylisothiazolinone, Hexyl Cinnamal, Limonene, Linalool, Citronellol, Butylphenyl Methylpropional, Magnesium Nitrate, Magnesium Chloride.'
 )
  living_proof_perfect_hair_day_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/living+proof/living_proof_perfect_hair_day_shampoo.png")
  living_proof_perfect_hair_day_shampoo.photos.attach(io: living_proof_perfect_hair_day_shampoo_attachment, filename: 'living_proof_perfect_hair_day_shampoo')


living_proof_full_shampoo = Product.create!(
  name: 'Full Shampoo',
  size: '8 oz/ 236 mL',
  price: 26.00,
  category: 'Shampoo',
  brand_id: living_proof.id,
  what_it_is: 'A gentle, yet thoroughly cleansing shampoo that helps to transform fine, flat hair to look and feel like naturally thick hair.',
  what_else_you_need_to_know: 'This formula is powered by Living Proof’s patented healthy hair molecule (OFPMA), which preps your hair for maximum fullness and body by removing residue and buildup. It also helps repel dirt and oil to keep hair cleaner, longer. This product is color-safe and safe for chemically treated hair.',
  how_to_use: ['Apply to wet hair.', 'Lather.', 'Rinse.', 'Follow with Perfect hair Day™ Conditioner (sold separately).'],
  ingredients: 'Water, Sodium Lauroyl Methyl Isethionate, Cocamidopropyl Betaine, Sodium Methyl Cocoyl Taurate, Decyl Glucoside, Lactamide MEA, Octafluoropentyl Methacrylate (OFPMA), Hydrolyzed Wheat Protein, Hydrolyzed Soy Protein, PEG‐6 Caprylic/Capric Glycerides, PEG‐150 Pentaerithrityl Tetrastearate, PEG‐7 Glyceryl Cocoate, Polyquaternium‐47, PEG‐200 Hydrogenated Glyceryl Palmate, Citric Acid, Potassium Sorbate, Propanediol, Methylchloroisothiazolinone, Tetrasodium EDTA, Ethylhexylglycerin, Methylisothiazolinone, Fragrance, Limonene, Hexyl Cinnamal, Linalool, Citronellol, Butylphenyl Methylpropional, Magnesium Chloride, Magnesium Nitrate.'
 )
  living_proof_full_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/living+proof/living_proof_full_shampoo.png")
  living_proof_full_shampoo.photos.attach(io: living_proof_full_shampoo_attachment, filename: 'living_proof_full_shampoo')


living_proof_full_conditioner = Product.create!(
  name: 'Full Conditioner',
  size: '8 oz/ 236 mL',
  price: 26.00,
  category: 'Conditioner',
  brand_id: living_proof.id,
  what_it_is: 'A lightweight conditioner that detangles without leaving hair feeling heavy.',
  what_else_you_need_to_know: 'This formula is powered by Living Proof’s patented healthy hair molecule (OFPMA). This product is color-safe and safe for chemically treated hair.',
  how_to_use: ['Start with Full Shampoo (sold separately).', 'Apply Full Conditioner to clean, wet hair, focusing on mid-shaft to ends.', 'Spread evenly throughout hair. Rinse.', 'Follow with one of living Proof’s Full styling products (sold separately).'],
  ingredients: 'Water, Cetyl Alcohol, Octafluoropentyl Methacrylate (OFPMA), Behentrimonium Chloride, Quaternium-87, Hydrolyzed Soy Protein, Hydrolyzed Wheat Protein, Guar Hydroxypropyltrimonium Chloride, Hydroxyethylcellulose, Citric Acid, Methylchloroisothiazolinone, Methylisothiazolinone, Fragrance, Limonene, Hexyl Cinnamal, Linalool, Citronellol, Butylphenyl Methylpropional, Magnesium Nitrate, Magnesium Chloride.'
 )
  living_proof_full_conditioner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/living+proof/living_proof_full_conditioner.png")
  living_proof_full_conditioner.photos.attach(io: living_proof_full_conditioner_attachment, filename: 'living_proof_full_conditioner')


bumble_and_bumble_thickening_volume_shampoo = Product.create!(
  name: 'Thickening Volume Shampoo',
  size: '8 oz/ 236 mL',
  price: 26.00,
  category: 'Shampoo',
  brand_id: bumble_and_bumble.id,
  what_it_is: 'A lightweight cleanser for anyone craving fullness.',
  what_it_does: 'This shampoo builds body in the shower and gives fine or limp hair a lift while moisturizing and sealing split ends. It\'s ideal for fine, thinning, limp, or flyaway hair.',
  what_else_you_need_to_know: 'For really full results, pair with Thickening Conditioner, Thickening Serum, and Thickening Hairspray. This shampoo is compatible with color-treated hair. This product is on the 2018 Women\'s Health Best Shampoos for Thinning Hair list.',
  how_to_use: ['Work a dab into wet hair.', 'Lather and rinse.'],
  ingredients: 'Water, Sodium Laureth Sulfate, Sodium Chloride, Lauramidopropyl Betaine, Aloe Barbadensis Leaf Juice, Panthenol, Tocopherol, Acetamide MEA , Myristamine Oxide, Magnesium Chloride, Sorbitol, Polyquaternium-11, Polyquaternium-10, Citric Acid, Sodium Hydroxide, Fragrance, Hexyl Cinnamal, Linalool, Butylphenyl Methylpropional, Tetrasodium EDTA, Magnesium Nitrate, Methylchloroisothiazolinone, Methylisothiazolinone, Phenoxyethanol, Ext. Violet 2 (CI 60730).'
 )
  bumble_and_bumble_thickening_volume_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bumble+and+bumble/bumble_and_bumble_thickening_volume_shampoo.png")
  bumble_and_bumble_thickening_volume_shampoo.photos.attach(io: bumble_and_bumble_thickening_volume_shampoo_attachment, filename: 'bumble_and_bumble_thickening_volume_shampoo')


bumble_and_bumble_hairdressers_invisible_oil_shampoo = Product.create!(
  name: 'Hairdresser’s Invisible Oil Shampoo',
  size: '8.5 oz/ 250 mL',
  price: 31.00,
  category: 'Shampoo',
  brand_id: bumble_and_bumble.id,
  what_it_is: 'A multitasking, hydrating shampoo infused with six feather-light oils to instantly transform dry, coarse, frizzy hair to soft, smooth, silky, and detangled.',
  what_else_you_need_to_know: 'This product is free of alcohol and sulfate cleansers (SLS and SLES) that dry out the hair. It is on the 2018 Esquire.com Top 10 Shampoos list.',
  how_to_use: ['Work a dab into wet hair, lather well, and rinse thoroughly.', 'Follow with Bumble and bumble Hairdresser\'s Invisible Oil Conditioner.'],
  ingredients: 'Water , Disodium Laureth Sulfosuccinate , Sodium Cocoyl Isethionate , Sodium Lauryl Sulfoacetate , Glycerin , Sodium Lauroyl Sarcosinate , Coco-Betaine , Acrylates Copolymer , Decyl Glucoside , Butylene Glycol , Glycol Distearate , Laureth-23 , Glycereth-26 , Vitis Vinifera (Grape) Seed Oil , Prunus Amygdalus Dulcis (Sweet Almond) Oil , Macadamia Integrifolia Seed Oil , Cocos Nucifera (Coconut) Oil , Gardenia Tahitensis (Tiare) Flower Extract , Argania Spinosa Kernel Oil , Hydroxypropyltrimonium Hydrolyzed Corn Starch , Carthamus Tinctorius (Safflower) Seed Oil , Sodium Hyaluronate , Phenyl Trimethicone , Panthenyl Ethyl Ether , Sodium Pca , Pantethine , Polyquaternium-7 , Polyquaternium-10 , Potassium Hydroxide , Sodium Chloride , Sodium Sulfate , Fragrance , Linalool , Hexyl Cinnamal , Butylphenyl Methylpropional , Phenoxyethanol , Methylisothiazolinone , Methylchloroisothiazolinone'
 )
  bumble_and_bumble_hairdressers_invisible_oil_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bumble+and+bumble/bumble_and_bumble_hairdressers_invisible_oil_shampoo.png")
  bumble_and_bumble_hairdressers_invisible_oil_shampoo.photos.attach(io: bumble_and_bumble_hairdressers_invisible_oil_shampoo_attachment, filename: 'bumble_and_bumble_hairdressers_invisible_oil_shampoo')


amika_bust_your_brass_cool_blonde_shampoo = Product.create!(
  name: 'Bust Your Brass Cool Blonde Shampoo',
  size: '8 oz/ 236 mL',
  price: 20.00,
  category: 'Shampoo',
  brand_id: amika.id,
  what_it_is: 'An ultra-violet, brass-busting shampoo that delivers bright and shiny, cool-toned results—perfect for blonde, silver, and gray color hair, whether natural or enhanced.',
  what_it_does: 'How blonde keeps its cool. Ultra-violet, brass-busting formulas let hair stay bright and light. Amika Bust Your Brass Cool Blonde Shampoo delivers bright and shiny, cool-toned results—perfect for blonde, silver, and gray color hair, whether natural or enhanced.',
  what_else_you_need_to_know: 'This product is formulated without MIT/MCI, artificial colors, formaldehydes, formaldehyde-releasing agents, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, triclocarban, aluminum, talc, and have less than one percent synthetic fragrances.',
  how_to_use: ['Wet hair and gently massage a small amount through scalp and hair.', 'Rinse thoroughly with warm water and follow with Bust Your Brass Cool Blonde Conditioner.'],
  ingredients: 'Water, Sodium C 14-16 Olefin Sulfonate, Cocamidopropyl Betaine, Glycerin, Disodium Cocoamphodiacetate, Glycol Stearate, Fragrance/Parfum, PEG-7 Glyceryl Cocoate, Sodium Methyl Cocoyl Taurate, Dehydroacetic Acid, PEG-150 Distearate, POLYQUATERNIUM-10, PEG-12 Dimethicone, Citric Acid, Violet External 2 (CI 60730), Disodium EDTA, Prunus Serotina (Wild Cherry) Bark Extract, Hydrolyzed Keratin, Persea Gratissima (Avocado) Oil, Hippophae Rhamnoides (Sea Buckthorn) Seed Oil, Benzyl Alcohol, Propylene Glycol.'
 )
  amika_bust_your_brass_cool_blonde_shampoo_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/amika/amika_bust_your_brass_cool_blonde_shampoo.png")
  amika_bust_your_brass_cool_blonde_shampoo.photos.attach(io: amika_bust_your_brass_cool_blonde_shampoo_attachment, filename: 'amika_bust_your_brass_cool_blonde_shampoo')


kat_von_d_tattoo_liner = Product.create!(
  name: 'Tattoo Liner',
  color: ['Trooper - satin black', 'Mad Max Brown - rich chocolate brown'],
  size: '0.019 oz/ 0.55 mL',
  price: 20.00,
  category: 'Eyeliner',
  brand_id: kat_von_d.id,
  what_it_is: 'A liquid eyeliner with an innovative brush tip for effortless, precise application.',
  what_it_does: 'Achieve eye perfection with this high-pigment, waterproof liner that stays put all day for a fade-, melt-, crack-, and run-resistant finish. The superfine and flexible brush tip glides across the lashline for incredibly fluid application, allowing you to create a variety of looks with ease. Unlike traditional felt tip liners, this brush tip will not fray.',
  what_else_you_need_to_know: 'Tattoo Liner is completely free of animal-derived ingredients and is not tested on animals. It is vegan, cruelty-free, and oil-free.',
  how_to_use: ['For a subtle defining line, lightly drag the brush tip across the base of your lash line from the inner to the outer corner, pressing the brush as close to the lash roots as possible.', 'Use less pressure to create a thinner line and add more pressure to create a bolder line or continue to layer until you achieve desired definition.', 'For best results, wipe brush tip with a damp tissue before applying to prevent powder build-up, which may cause Tattoo Liner to dry out.'],
 )
  kat_von_d_tattoo_liner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/kat+von+d/kat_von_d_tattoo_liner.png")
  kat_von_d_tattoo_liner.photos.attach(io: kat_von_d_tattoo_liner_attachment, filename: 'kat_von_d_tattoo_liner')


urban_decay_24_7_glideon_eye_pencil = Product.create!(
  name: '24/7 Glide-On Eye Pencil',
  color: ['Perversion - matte blackest black', 'Roach - deep copper brown shimmer', 'Desperation - deep taupe to gray matte', 'Sabbath - deep navy matte', 'Empire - dark eggplant matte'],
  size: '0.04 oz/ 1.2 g',
  price: 21.00,
  category: 'Eyeliner',
  brand_id: urban_decay.id,
  what_it_is: 'A dynamic eyeliner pencil in a rainbow of shades.',
  what_it_does: 'Glide on color that stays put. Urban Decay\'s cushiony, creamy eye pencils delivers powerful, vibrant color that slides on smooth and stays soft and creamy for blending (about 30 seconds), then dries to a long-lasting finish that won\'t budge. Line eyes with a hint of color or go for the full artistic, multi-hued effect.',
  what_else_you_need_to_know: 'Created with 50 percent moisturizing ingredients suspended in a sophisticated waterproof formula, this brilliant collection of eye essentials offers long-lasting color and a dreamy, creamy feel when applied.',
  how_to_use: ['Draw precise lines or smudge them for a more smoky look.', 'Use as a base to layer with our Eyeshadow for more depth and dimension.'],
  ingredients: 'Cyclopentasiloxane, Isododecane, Synthetic Wax, Polybutene, Simmondsia Chinensis (Jojoba) Seed Oil, Hydrogenated Cottonseed Oil, Ceresin, Ozokerite, Cera Microcristallina (Microcrystalline Wax/Cire Microcristalline), Tocopherol, Ascorbyl Palmitate, Phenoxyethanol. [+/- (May Contain/Peut contenir): CI 77491/77499 (Iron Oxides), CI 77019 (Mica), CI 77891 (Titanium Dioxide), CI 75470 (Carmine), CI 77510 (Ferric Ferrocyanide)].'
 )
  urban_decay_24_7_glideon_eye_pencil_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/urban+decay/urban_decay_24_7_glideon_eye_pencil.png")
  urban_decay_24_7_glideon_eye_pencil.photos.attach(io: urban_decay_24_7_glideon_eye_pencil_attachment, filename: 'urban_decay_24_7_glideon_eye_pencil')


bobbi_brown_long_wear_gel_eyeliner = Product.create!(
  name: 'Long-Wear Gel Eyeliner',
  color: ['Black Ink - jet black', 'Caviar Ink - deep black-brown', 'Espresso Ink - black brown', 'Chocolate Shimmer Ink - dark red brown', 'Graphite Shimmer Ink - dark grey'],
  size: '0.1 oz/ 3 g',
  price: 27.00,
  category: 'Eyeliner',
  brand_id: bobbi_brown.id,
  what_it_is: 'An intensely pigmented liner with the precision of a liquid and the ease of a gel, for creating a range of eye looks that wear for up to 12 hours.',
  what_it_does: 'This award-winning formula offers up to 12 hours of waterproof, sweat-resistant, humidity-resistant wear. It glides easily onto lids and dries to a flexible finish that won\'t flake or fade.',
  what_else_you_need_to_know: 'This product is three-time Allure Best of Beauty Award Winner (2012, 2011, and 2007).',
  ingredients: 'Isododecane, Cyclopentasiloxane, Polyethylene, Trimethylsiloxysilicate, Disteardimonium Hectorite, Propylene Carbonate, Lecithin, Phenyl Trimethicone, Hydrogenated Polyisobutene, Methicone, Barium Sulfate, Bht, Phenoxyethanol, [+/- Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Mica, Titanium Dioxide (Ci 77891), Blue 1 Lake (Ci 42090), Carmine (Ci 75470), Chromium Oxide Greens (Ci 77288), Manganese Violet (Ci 77742), Yellow 5 Lake (Ci 19140), Chromium Hydroxide Green (Ci 77289), Bismuth Oxychloride (Ci 77163), Ultramarines (Ci 77007), Ferric Ferrocyanide (Ci 77510)]'
 )
  bobbi_brown_long_wear_gel_eyeliner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bobbi+brown/bobbi_brown_long_wear_gel_eyeliner.png")
  bobbi_brown_long_wear_gel_eyeliner.photos.attach(io: bobbi_brown_long_wear_gel_eyeliner_attachment, filename: 'bobbi_brown_long_wear_gel_eyeliner')


lancome_artliner_precision_point_eyeliner = Product.create!(
  name: 'ARTLINER - Precision Point EyeLiner',
  color: ['Noir - Black'],
  size: '0.1 oz/ 3 g',
  price: 30.00,
  category: 'Eyeliner',
  brand_id: lancome.id,
  what_it_is: 'An easy-to-apply, liquid eyeliner with a foam tip that\'s both long-lasting and highly-pigmented.',
  what_it_does: 'A makeup artist favorite, this eyeliner features a unique pairing of two film-forming polymers that work together to make every look last and last. Rich, deep, luminous color pigments offer the most intense color, and its uniquely shaped foam tip pen allows for precise shaping and defining of the eyes.',
  what_else_you_need_to_know: 'Artliner’s unique applicator and easy glide allows you to manage liquid liner and create different looks for your eyes without smudging or skipping.',
  how_to_use: ['Apply close to the lashes for a super tight line, or build to create a dramatic cat-eye or winged-out eye look.', 'Use the lashes as a guide, by resting then pressing the side of the applicator.', 'Use the applicator tip to fill in gaps between lashes, or use thick, bolder lines for a dramatic nighttime feel.'],
 )
  lancome_artliner_precision_point_eyeliner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/lancome/lancome_artliner_precision_point_eyeliner.png")
  lancome_artliner_precision_point_eyeliner.photos.attach(io: lancome_artliner_precision_point_eyeliner_attachment, filename: 'lancome_artliner_precision_point_eyeliner')


benefit_cosmetics_theyre_real_pushup_liner = Product.create!(
  name: 'They’re Real! Push-Up Liner',
  color: ['Black', 'Beyond Brown', 'Beyond Blue', 'Beyond Purple', 'Beyond Green'],
  size: '0.04 oz/ 1.4 g',
  price: 24.00,
  category: 'Eyeliner',
  brand_id: benefit_cosmetics.id,
  what_it_is: 'An innovative, waterproof, lash-hugging gel eyeliner pen that lasts for 24 hours—now available in four brilliant, wearable shades.',
  what_it_does: 'Benefit They’re Real! Push-Up Liner is the first foolproof and budge-proof gel eyeliner in a pen. This eyeliner’s soft AccuFlex™ tip is custom-angled to draw an easy line. Its flat, wide guard gently pushes lashes aside to get close to lash line.',
  what_else_you_need_to_know: 'This product is an Allure Best of Beauty and Beauty Breakthrough award winner. It is vegan-friendly, noncomedogenic, and does not contain latex. It lasts for up to 24 hours and is waterproof, and it should be removed before bedtime to prevent the blocking of pores.',
  how_to_use: ['Twist base once to “push up” gel liner to tip.', 'Resting the AccuFlex™ tip on the base of your lashes, slowly guide along your lash line from the inner or outer corner.', 'Be sure to prep the pen with every application, and glide the liner across the lids as soon as the product is dispensed.', 'Give the base half a rotation to empty out the well, then wipe on a clean, smooth surface (like your hand), and quickly glide along your lash line.', 'To easily remove: Apply They’re Real! Makeup Remover to your line and allow to sit for 20-30 seconds. Wipe away with a cotton swab or pad—no scrubbing required.'],
  ingredients: 'Isododecane, Dextrin Palmitate, Polymethylsilsesquioxane, Synthetic Fluorphlogopite, Trimethylsiloxysilicate, Ethylhexyl Palmitate, Dimethicone, Phenoxyethanol, Disodium Stearoyl Glutamate, Aluminum Hydroxide, Silica. [+/-: CI 19140 (Yellow 5, Yellow 5 Lake), CI 42090 (Blue 1 Lake), CI 77007 (Ultramarines), CI 77163 (Bismuth Oxychloride), CI 77288 (Chromium Oxide Greens), CI 77289 (Chromium Hydroxide Green), CI 77491, CI 77492, CI 77499 (Iron Oxides), CI 77510 (Ferric Ferrocyanide, Ferric Ammonium Ferrocyanide), CI 77742 (Manganese Violet), CI 77891 (Titanium Dioxide)].'
 )
  benefit_cosmetics_theyre_real_pushup_liner_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/benefit+cosmetics/benefit_cosmetics_theyre_real_pushup_liner.png")
  benefit_cosmetics_theyre_real_pushup_liner.photos.attach(io: benefit_cosmetics_theyre_real_pushup_liner_attachment, filename: 'benefit_cosmetics_theyre_real_pushup_liner')


nars_blush = Product.create!(
  name: 'Blush',
  color: ['Sex Appeal - soft peach', 'Seduction - sangria', 'Desire - cotton candy pink', 'Bumpy Ride - bright pink with luminous sheen'],
  size: '0.28 oz/ 8 g',
  price: 39.00,
  category: 'Blush',
  brand_id: nars.id,
  what_it_is: 'An award-winning, pressed powder blush that delivers healthy-looking color to flatter any skin tone.',
  what_else_you_need_to_know: 'Silky, superfine micronized powder pigments in matte and shimmering shades ensure a seamless application. These soft, buildable shades deliver a wide range of effects, from ulta-sheer to powerful pops of color. Each iconic shade features a subtle pink undertone for a natural-looking blush.',
  how_to_use: ['Contour: Create definition by starting at the temple and sweeping along the hairline, under the cheekbone, and down the jawline.', 'Highlight: Glide over areas where the sun hits naturally—the tops of the cheekbones, on temples, and on the bridge of the nose.', 'Pop: Swipe color onto the apples of the cheeks, and swirl in a circular motion, layering to your desired intensity'],
 )
  nars_blush_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/nars/nars_blush.png")
  nars_blush.photos.attach(io: nars_blush_attachment, filename: 'nars_blush')


bareminerals_gen_nude_powder_blush = Product.create!(
  name: 'Gen Nude Powder Blush',
  color: ['Pink Me Up - medium nude pink with gold pearl', 'You Had Me At Merlot - rich berry wine with gold pearl', 'But First, Coffee - rich chocolate with gold pearl', 'That Peach Tho - soft peachy pink'],
  size: '0.21 oz/ 3.7 mL',
  price: 24.00,
  category: 'Blush',
  brand_id: bareminerals.id,
  what_it_is: 'A cushiony powder blush with good-for-skin ingredients that gives a natural, buildable flush of color.',
  what_it_does: 'Instantly warm your complexion, define your cheekbones, and brighten your face with this effortless, highly-blendable, natural-looking color. The cushiony soft formula is infused with good-for-skin ingredients, including bareMinerals’ Blurring Mineral Complex, which provides a beautiful soft-focus effect. Amped up nude shades mimic the natural flush of skin for a healthy, radiant-looking complexion.',
  what_else_you_need_to_know: 'A million ways to go nude. Meet Gen Nude: a collection of next generation nudes developed to complement all skin tones. Good-for-skin formulas are powered by mineral-rich ingredients to smooth and condition lips, eyes, and cheeks for a naturally effortless look. Just blend and layer the colors and finishes for infinite ways to go nude.',
  how_to_use: ['Using the Blooming Blush Brush (sold separately), apply to the apples of the cheeks, blending along the cheekbone.', 'For more dimension, layer on more than one shade or use the beige shades to contour across the hairline, bridge of the nose, and chin, for a multidimensional, naturally flushed look.'],
  ingredients: 'Synthetic Fluorphlogopite, Diisostearyl Malate, Dipentaerythrityl Hexahydroxystearate, Lauroyl Lysine, Vinyl Dimethicone/Methicone Silsesquioxane Crosspolymer, Triethylhexanoin, Sorbitan Sesquiisostearate, Hydrogen Dimethicone, Dimethicone, Tocopherol, Barium Sulfate, Silica, Alumina, Tin Oxide, Chlorphenesin. May Contain (+/-): Mica, Carmine (Ci 75470), Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Red 7 Lake (Ci 15850).'
 )
  bareminerals_gen_nude_powder_blush_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bareminerals/bareminerals_gen_nude_powder_blush.png")
  bareminerals_gen_nude_powder_blush.photos.attach(io: bareminerals_gen_nude_powder_blush_attachment, filename: 'bareminerals_gen_nude_powder_blush')


benefit_cosmetics_galifornia_blush = Product.create!(
  name: 'GALifornia Blush',
  size: '0.17 oz/ 5.0 g',
  price: 30.00,
  category: 'Blush',
  brand_id: benefit_cosmetics.id,
  what_it_is: 'A sunny, golden pink blush.',
  what_it_does: 'Benefit’s GALifornia golden pink blush blends bright pink with shimmering gold, for a sunkissed glow that complements all skin tones. The embellished gold overspray lifts away with each use, and the formula is infused with a subtle shimmer throughout that gives your cheeks a soft sheen. The signature Galifornia Dreamin’ scent features notes of pink grapefruit and vanilla. It comes complete with a custom, rounded blush brush and a mirror for soft, diffused application.',
  how_to_use: ['Dust this pink blush onto the apples of your cheeks for a splash of California color.'],
  ingredients: 'Synthetic Fluorphlogopite, Mica, Cetearyl Ethylhexanoate, Hdi/Trimethylol Hexyllactone Crosspolymer, Dicalcium Phosphate, Squalane, Glycerin, Fragrance, Octyldodecyl Stearoyl Stearate, Caprylyl Glycol, Ethylhexylglycerin, Polysorbate 80, Limonene, 1,2-Hexanediol, Dimethicone, Chondrus Crispus Extract, Xanthan Gum, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate, Tin Oxide, Zinc Stearate, Silica, Lauroyl Lysine, Cetearyl Alcohol, Benzyl Salicylate, Bht, Linalool, Citral, Geraniol, Stearic Acid, Tocopherol, Water. [+/-: Ci 15850 (Red 6, Red 7, Red 7 Lake), Ci 15985 (Yellow 6, Yellow 6 Lake), Ci 19140 (Yellow 5, Yellow 5 Lake), Ci 42090 (Blue 1 Lake), Ci 45410 (Red 27, Red 27 Lake, Red 28 Lake), Ci 73360 (Red 30, Red 30 Lake), Ci 77007 (Ultramarines), Ci 77163 (Bismuth Oxychloride), Ci 77288 (Chromium Oxide Greens), Ci 77289 (Chromium Hydroxide Green), Ci 77491, Ci 77492, Ci 77499 (Iron Oxides), Ci 77510 (Ferric Ferrocyanide, Ferric Ammonium Ferrocyanide), Ci 77742 (Manganese Violet), Ci 77891 (Titanium Dioxide)].'
 )
  benefit_cosmetics_galifornia_blush_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/benefit+cosmetics/benefit_cosmetics_galifornia_blush.png")
  benefit_cosmetics_galifornia_blush.photos.attach(io: benefit_cosmetics_galifornia_blush_attachment, filename: 'benefit_cosmetics_galifornia_blush')


too_faced_sweet_peach_papa_dont_peach_blush = Product.create!(
  name: 'Sweet Peach Papa Don’t Peach Blush',
  size: '0.32 oz/ 9.46 mL',
  price: 30.00,
  category: 'Blush',
  brand_id: too_faced.id,
  what_it_is: 'A brightening blush that\'s infused with a peach fragrance.',
  what_it_does: 'Sweet Peach Papa Don\'t Peach Blush\'s sweet peachy-bronze hue imparts fresh, youthful-looking radiance to cheeks for a touch of summertime warmth. Infused with the essence of peach, this blush smells like peaches, and its rich, pigmented shade provides buildable payoff. Wearable and flattering on any skin tone, it leaves a gilded, pink-pearl, brightening finish.',
  what_else_you_need_to_know: 'At a dinner in Paris, Too Faced Co-founder and Chief Creative Officer Jerrod Blandino had a culinary moment with a peach trifle dessert that featured peaches roasted on an open flame and caramelized. That rich bronzy peach color inspired him to bring back the iconic Papa Don’t Peach Blush from the Too Faced archives. He says it is the perfect natural blush with just enough warmth and a pop of luminosity that every woman can wear.',
  how_to_use: ['Add definition to the hollows of the cheeks with a matte bronzer.', 'Then pop on Papa Don’t Peach Blush on the apples of the cheeks for a warm, radiant finish.'],
  ingredients: ''
 )
  too_faced_sweet_peach_papa_dont_peach_blush_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/too+faced/too_faced_sweet_peach_papa_dont_peach_blush.png")
  too_faced_sweet_peach_papa_dont_peach_blush.photos.attach(io: too_faced_sweet_peach_papa_dont_peach_blush_attachment, filename: 'too_faced_sweet_peach_papa_dont_peach_blush')

  
naked_naked2_palette = Product.create!(
  name: 'Naked2 Palette',
  size: '12 x 0.05 oz/ 1.41 g',
  price: 54.00,
  category: 'Eye Palettes',
  brand_id: naked.id,
  what_it_is: 'An eyeshadow palette, featuring taupe-hued neutrals in a wide range of finishes.',
  what_it_does: 'From luminous shades with shimmer and sparkle to the smoothest mattes imaginable, Urban Decay\'s Naked2 is packed with always-vibrant, taupe-hued neutrals—including a gorgeous grayish brown, a glittery copper, and Urban Decay\’s blackest black. Expand your Naked range to create even more sultry neutral looks, smoky dramatic looks, and everything in between.',
  what_else_you_need_to_know: 'Every shade features Urban Decay’s Pigment Infusion System™, the proprietary blend of ingredients that gives each shade its velvety texture, rich color, serious staying power, and blendability. For easy application, the mirrored case includes a professional-quality, cruelty-free, double-ended Shadow/Blending Brush.',
  how_to_use: ['Use the matte neutrals to contour the eye.', 'Mist your brush with our All Nighter Makeup Setting Spray (or water) before applying metallic or shimmer shades. This helps maximize color payoff.', 'Nude shades are universally flattering for masking discoloration on your lid and brightening up the eye.'],
  ingredients: 'Talc, Caprylic/Capric Triglyceride, Zinc Stearate, Ptfe, Polyethylene Terephthalate, Calcium Aluminum Borosilicate, Ethylene/Acrylic Acid Copolymer, Calcium Sodium Borosilicate, Sodium Dehydroacetate, Synthetic Fluorphlogopite, Phenoxyethanol, Silica, Sorbic Acid, Polyurethane-33, Aluminum Hydroxide, Tin Oxide, Acrylates Copolymer, Polybutylene Terephthalate, Polylactic Acid, Polymethyl Methacrylate, Stearic Acid, Calcium Stearate, Magnesium Stearate. [+/- (All Shades May Contain): Mica, Ci 77891 / Titanium Dioxide, Ci 77491, Ci 77492, Ci 77499 / Iron Oxides, Ci 77742 / Manganese Violet, Ci 77007 / Ultramarines, Ci 77163 / Bismuth Oxychloride, Ci 77400 / Bronze Powder, Ci 77000 / Aluminum Powder, Ci 75470 / Carmine, Ci 42090 / Blue 1 Lake, Ci 77510 / Ferric Ferrocyanide, Ci 77288 / Chromium Oxide Greens, Ci 77510 / Ferric Ammonium Ferrocyanide, Ci 77400 / Copper Powder, Ci 77289 / Chromium Hydroxide Green, Ci 19140 / Yellow 5 Lake, Ci 19140 / Yellow 5].'
 )
  naked_naked2_palette_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/naked/naked_naked2_palette.png")
  naked_naked2_palette.photos.attach(io: naked_naked2_palette_attachment, filename: 'naked_naked2_palette')


kat_von_d_lolita_eyeshadow_palette = Product.create!(
  name: 'Lolita Eyeshadow Palette',
  size: '8 x 0.04 oz/ 1.1 g',
  price: 39.00,
  category: 'Eye Palettes',
  brand_id: kat_von_d.id,
  what_it_is: 'A highly-anticipated eyeshadow palette featuring eight velvety-matte shades inspired by Kat’s legendary lipstick.',
  what_else_you_need_to_know: 'Introducing Kat Von D Beauty’s most highly-anticipated eyeshadow palette of all time, inspired by the lipstick shade that took the world by storm, Lolita. It features eight rosy, matte shades, including fan-favorite Lolita, plus unique yet universally-flattering variations on the original chestnut rose. Each velvety powder is blendable and buildable, in Kat Von D’s signature high-pigment formula for looks that are as unforgettable as the shade itself.',
  ingredients: 'Boron Nitride, Mica, Lauroyl Lysine, Silica, Glyceryl Caprylate, Dimethicone, Squalane, Zinc Stearate, Phenoxyethanol, Potassium Sorbate, Trimyristin, Carthamus Tinctorius (Safflower) Seed Oil, Hydrogenated Lecithin, Rosa Canina Flower Extract, Water, Sodium Dehydroacetate, Sodium Sulfate, Tocopheryl Acetate, Manganese Violet (Ci 77742), Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Titanium Dioxide (Ci 77891), Ultramarines (Ci 77007).'
 )
  kat_von_d_lolita_eyeshadow_palette_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/kat+von+d/kat_von_d_lolita_eyeshadow_palette.png")
  kat_von_d_lolita_eyeshadow_palette.photos.attach(io: kat_von_d_lolita_eyeshadow_palette_attachment, filename: 'kat_von_d_lolita_eyeshadow_palette')


bobbi_brown_infra_red_eyeshadow_palette = Product.create!(
  name: 'Infra-Red Eyeshadow Palette',
  size: '0.54 oz/ 15.3 g',
  price: 39.00,
  category: 'Eye Palettes',
  brand_id: bobbi_brown.id,
  what_it_is: 'A mix-and-match spectrum of matte, metallic, and sparkle shades perfect for creating sizzling eye looks.',
  what_it_does: 'This palette offers a spectrum of matte, metallic, and sparkle shades—from amber and bronze to burgundy and taupe—that are perfect for creating smoldering looks.',
  how_to_use: ['Apply Fever Dream to lids and blend into creases with Angle Eye Shadow Brush.', 'Layer Infra-Red on top and blend into creases and inner corners with Angle Eye Shadow Brush.', 'Smudge Solar Flame and Red Rock along lower lash lines with Smokey Eye Liner Brush.', 'Finish with two to three coats of Smokey Eye Mascara.'],
 )
  bobbi_brown_infra_red_eyeshadow_palette_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/bobbi+brown/bobbi_brown_infra_red_eyeshadow_palette.png")
  bobbi_brown_infra_red_eyeshadow_palette.photos.attach(io: bobbi_brown_infra_red_eyeshadow_palette_attachment, filename: 'bobbi_brown_infra_red_eyeshadow_palette')


too_faced_pretty_rich_diamond_light_eyeshadow_palette = Product.create!(
  name: 'Pretty Rich Diamond Light Eyeshadow Palette',
  size: '16 x 0.04 oz/ 1.1 g',
  price: 49.00,
  category: 'Eye Palettes',
  brand_id: too_faced.id,
  what_it_is: 'A 16-shade eyeshadow palette inspired by the multifaceted beauty of real diamonds.',
  what_else_you_need_to_know: 'This captivating collection of 16 ultra-luxe shades features vivid glitters, creamy mattes, opulent shimmers, and precious pearls that can be layered in infinite ways to mimic the multifaceted beauty of diamonds. The four diamond-shaped, pressed-gel-glitter shadows allow for self-adhesion to minimize glitter fallout so your eyes stay dazzling with breathtaking intensity.',
  how_to_use: ['Prep the eye from lash line to brow, and along lower lash line with Shadow Insurance Eyeshadow Primer.', 'Use matte neutral shades from lightest to darkest to perfectly sculpt and create dimension on every skin tone.', 'Layer shimmery satin shades for bold highlights and color pops.', 'Press the gel-glitter with your finger or a dense flat brush in a stippling motion all over the eyelid to layer the richest glitter look with zero fallout.', 'Create gorgeous and easy looks by breaking down each row in flattering quads of complementary undertones.', 'For a touch of sparkle, use an eyeliner brush to apply the gel-glitter shadow to the lash line or inner corner of the eye.', 'The shade-shifting, shimmery white blends to a pink sheen and can be used to top and transform colors.'],
  ingredients: 'Mica, Talc, Ethylene/Acrylic Acid Copolymer, Dimethicone, Oryza Sativa (Rice) Extract/Oryza Sativa Extract, Lauroyl Lysine, Zinc Stearate, Aluminum Dimyristate, Disodium Stearoyl Glutamate, Methicone, Poloxamer 338, Silica, Triethoxycaprylylsilane, Phenoxyethanol, Sodium Dehydroacetate, Sorbic Acid, Carmine (Ci 75470). May Contain (+/-): Titanium Dioxide (Ci 77891), Ultramarines (Ci 77007), Iron Oxides (Ci 77491, Ci 77492, Ci 77499).'
 )
  too_faced_pretty_rich_diamond_light_eyeshadow_palette_attachment = open("https://s3-us-west-1.amazonaws.com/misora-products/too+faced/too_faced_pretty_rich_diamond_light_eyeshadow_palette.png")
  too_faced_pretty_rich_diamond_light_eyeshadow_palette.photos.attach(io: too_faced_pretty_rich_diamond_light_eyeshadow_palette_attachment, filename: 'too_faced_pretty_rich_diamond_light_eyeshadow_palette')
