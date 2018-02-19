INSERT INTO health_label_ref (type, web_label, api_label, description, ingredients_table) 
VALUES
  ('Diet', 'Balanced',  'balanced',  'Protein/Fat/Carb values in 15/35/50 ratio', ' '),
  ('Diet', 'High-Fiber',  'high-fiber',  'More than 5g fiber per serving', ' '),
  ('Diet', 'High-Protein',  'high-protein',  'More than 50% of total calories from proteins', ' '),
  ('Diet', 'Low-Carb',  'low-carb',  'Less than 20% of total calories from carbs', ' '),
  ('Diet', 'Low-Fat',  'low-fat',  'Less than 15% of total calories from fat', ' '),
  ('Diet', 'Low-Sodium',  'low-sodium',  'Less than 140mg Na per serving', ' '),
  ('Health', 'Alcohol-free',  'alcohol-free',  'No alcohol used or contained', ' '),
  ('Health', 'Celery-free',  'celery-free',  'Does not contain celery or derivatives', 'label_ingred_ref'),
  ('Health', 'Crustacean-free',  'crustacean-free',  'Does not contain crustaceans (shrimp, lobster etc.) or derivatives', 'label_ingred_ref'),
  ('Health', 'Dairy',  'dairy-free',  'No dairy; no lactose', 'label_ingred_ref'),    
  ('Health', 'Eggs',  'egg-free',  'No eggs or products containing eggs', 'label_ingred_ref'),
  ('Health', 'Fish',  'fish-free', 'No fish or fish derivatives', 'label_ingred_ref'),
  ('Health', 'Gluten',  'gluten-free', 'No ingredients containing gluten', 'label_ingred_ref'),
  ('Health', 'Kidney friendly', 'kidney-friendly', 'Per serving – phosphorus less than 250 mg AND potassium less than 500 mg AND sodium: less than 500 mg', ' '),
  ('Health', 'Kosher',  'kosher',  'Contains only ingredients allowed by the kosher diet. However it does not guarantee kosher preparation of the ingredients themselves', ' '),
  ('Health', 'Low potassium', 'low-potassium', 'Less than 150mg per serving', ' '),
  ('Health', 'Lupine-free', 'lupine-free', 'Does not contain lupine or derivatives', ' '),
  ('Health', 'Mustard-free',  'mustard-free',  'Does not contain mustard or derivatives', ' '),
  ('Health', 'No oil added',  'no-oil-added',  'No oil added except to what is contained in the basic ingredients', ' '),
  ('Health', 'No-sugar',  'low-sugar', 'No simple sugars – glucose, dextrose, galactose, fructose, sucrose, lactose, maltose', ' '),
  ('Health', 'Paleo', 'paleo', 'Excludes what are perceived to be agricultural products; grains, legumes, dairy products, potatoes, refined salt, refined sugar, and processed oils', ' '),
  ('Health', 'Peanuts', 'peanut-free', 'No peanuts or products containing peanuts', 'label_ingred_ref'),
  ('Health', 'Pescatarian', 'pescatarian', 'Does not contain meat or meat based products, can contain dairy and fish', ' '),
  ('Health', 'Pork-free', 'pork-free', 'Does not contain pork or derivatives', ' '),
  ('Health', 'Red meat-free', 'red-meat-free', 'Does not contain beef, lamb, pork, duck, goose, game, horse, and other types of red meat or products containing red meat', ' '),
  ('Health', 'Sesame-free', 'sesame-free', 'Does not contain sesame seed or derivatives', 'label_ingred_ref'),
  ('Health', 'Shellfish', 'shellfish-free',  'No shellfish or shellfish derivatives', 'label_ingred_ref'),
  ('Health', 'Soy', 'soy-free',  'No soy or products containing soy', 'label_ingred_ref'), 
  ('Health', 'Sugar-conscious', 'sugar-conscious', 'Less than 4g of sugar per serving', ' '),
  ('Health', 'Tree Nuts', 'tree-nut-free', 'No tree nuts or products containing tree nuts', 'label_ingred_ref'),
  ('Health', 'Vegan', 'vegan', 'No meat, poultry, fish, dairy, eggs or honey', ' '),
  ('Health', 'Vegetarian', 'vegetarian', 'No meat, poultry, or fish', ' '),
  ('Health', 'Wheat-free', 'wheat-free', 'No wheat, can have gluten though', 'label_ingred_ref');


INSERT INTO label_ingred_ref (health_id, api_label, ingredient) 
VALUES
  ('10', 'dairy-free', 'Butter'),
  ('10', 'dairy-free', 'Butter fat'),
  ('10', 'dairy-free', 'Butter oil'),
  ('10', 'dairy-free', 'Butter acid'),
  ('10', 'dairy-free', 'Butter ester'),
  ('10', 'dairy-free', 'Buttermilk'),
  ('10', 'dairy-free', 'Casein'),
  ('10', 'dairy-free', 'Casein hydrolysate'),
  ('10', 'dairy-free', 'Caseinates (in all forms)'),
  ('10', 'dairy-free', 'Cheese'),
  ('10', 'dairy-free', 'Cottage cheese'),
  ('10', 'dairy-free', 'Cream'),
  ('10', 'dairy-free', 'Curds'),
  ('10', 'dairy-free', 'Custard'),
  ('10', 'dairy-free', 'Diacetyl'),
  ('10', 'dairy-free', 'Ghee'),
  ('10', 'dairy-free', 'Half-and-half'),
  ('10', 'dairy-free', 'Lactalbumin'),
  ('10', 'dairy-free', 'Lactalbumin phosphate'),
  ('10', 'dairy-free', 'Lactoferrin'),
  ('10', 'dairy-free', 'Lactose'),
  ('10', 'dairy-free', 'Milk'),
  ('10', 'dairy-free', 'Milk protein hydrolysate'),
  ('10', 'dairy-free', 'Pudding'),
  ('10', 'dairy-free', 'Recaldent(R)'),
  ('10', 'dairy-free', 'Rennet casein'),
  ('10', 'dairy-free', 'Sour cream'),
  ('10', 'dairy-free', 'Sour cream solids'),
  ('10', 'dairy-free', 'Sour milk solids'),
  ('10', 'dairy-free', 'Tagatose'),
  ('10', 'dairy-free', 'Whey (in all forms)'),
  ('10', 'dairy-free', 'Whey protein hydrolysate'),
  ('10', 'dairy-free', 'Yogurt'),
  ('11', 'egg-free', 'Albumin'),
  ('11', 'egg-free', 'Albumen'),
  ('11', 'egg-free', 'Egg'),
  ('11', 'egg-free', 'Egg dried'),
  ('11', 'egg-free', 'Egg powdered'),
  ('11', 'egg-free', 'Egg solids'),
  ('11', 'egg-free', 'Egg white'),
  ('11', 'egg-free', 'Egg yolk'),
  ('11', 'egg-free', 'Eggnog'),
  ('11', 'egg-free', 'Lysozyme'),
  ('11', 'egg-free', 'Mayonnaise'),
  ('11', 'egg-free', 'Meringue'),
  ('11', 'egg-free', 'Meringue powder'),
  ('11', 'egg-free', 'Ovalbumin'),
  ('11', 'egg-free', 'Surimi'),
  ('22', 'peanut-free', 'Arachis oil'),
  ('22', 'peanut-free', 'Peanut oil'),
  ('22', 'peanut-free', 'Artificial nuts'),
  ('22', 'peanut-free', 'Beer nuts'),
  ('22', 'peanut-free', 'Cold-pressed peanut oil'),
  ('22', 'peanut-free', 'Expelled peanut oil'),
  ('22', 'peanut-free', 'Extruded peanut oil'),
  ('22', 'peanut-free', 'Goobers'),
  ('22', 'peanut-free', 'Ground nuts'),
  ('22', 'peanut-free', 'Lupin'),
  ('22', 'peanut-free', 'Lupine'),
  ('22', 'peanut-free', 'Legume'),
  ('22', 'peanut-free', 'Mandelonas'),
  ('22', 'peanut-free', 'Mixed nuts'),
  ('22', 'peanut-free', 'Monkey nuts'),
  ('22', 'peanut-free', 'Nut meat'),
  ('22', 'peanut-free', 'Nut pieces'),
  ('22', 'peanut-free', 'Peanut butter'),
  ('22', 'peanut-free', 'Peanut flour'),
  ('22', 'peanut-free', 'Peanut protein hydrolysate'),
  ('30', 'tree-nut-free', 'Almond'),
  ('30', 'tree-nut-free', 'Artificial nuts'),
  ('30', 'tree-nut-free', 'Beechnut'),
  ('30', 'tree-nut-free', 'Black walnut hull extract'),
  ('30', 'tree-nut-free', 'Brazil nut'),
  ('30', 'tree-nut-free', 'Butternut'),
  ('30', 'tree-nut-free', 'Cashew'),
  ('30', 'tree-nut-free', 'Chestnut'),
  ('30', 'tree-nut-free', 'Chinquapin nut'),
  ('30', 'tree-nut-free', 'Coconut'),
  ('30', 'tree-nut-free', 'Filbert'),
  ('30', 'tree-nut-free', 'Hazelnut'),
  ('30', 'tree-nut-free', 'Gianduja'),
  ('30', 'tree-nut-free', 'Ginkgo nut'),
  ('30', 'tree-nut-free', 'Hickory nut'),
  ('30', 'tree-nut-free', 'Litchi nut'),
  ('30', 'tree-nut-free', 'Lichee nut'),
  ('30', 'tree-nut-free', 'Lychee nut'),
  ('30', 'tree-nut-free', 'Macadamia nut'),
  ('30', 'tree-nut-free', 'Marzipan and almond paste'),
  ('30', 'tree-nut-free', 'Nangai nut'),
  ('30', 'tree-nut-free', 'Natural nut extract'),
  ('30', 'tree-nut-free', 'Nut butters'),
  ('30', 'tree-nut-free', 'Cashew butter'),
  ('30', 'tree-nut-free', 'Nut distillates'),
  ('30', 'tree-nut-free', 'Nut alcoholic extracts'),
  ('30', 'tree-nut-free', 'Nut meal'),
  ('30', 'tree-nut-free', 'Nut meat'),
  ('30', 'tree-nut-free', 'Nut milk'),
  ('30', 'tree-nut-free', 'Almond milk'),
  ('30', 'tree-nut-free', 'Cashew milk'),
  ('30', 'tree-nut-free', 'Nut oils'),
  ('30', 'tree-nut-free', 'Walnut oil'),
  ('30', 'tree-nut-free', 'Almond oil'),
  ('30', 'tree-nut-free', 'Nut paste'),
  ('30', 'tree-nut-free', 'Almond paste'),
  ('30', 'tree-nut-free', 'Nut pieces'),
  ('30', 'tree-nut-free', 'Pecan'),
  ('30', 'tree-nut-free', 'Pesto'),
  ('30', 'tree-nut-free', 'Pili nut'),
  ('30', 'tree-nut-free', 'Pine nut'),
  ('30', 'tree-nut-free', 'Indian nut'),
  ('30', 'tree-nut-free', 'Pignoli nut'),
  ('30', 'tree-nut-free', 'Pigñolia nut'),
  ('30', 'tree-nut-free', 'Pignon nut'),
  ('30', 'tree-nut-free', 'Piñon nut'),
  ('30', 'tree-nut-free', 'Pinyon nut'),
  ('30', 'tree-nut-free', 'Pistachio'),
  ('30', 'tree-nut-free', 'Praline'),
  ('30', 'tree-nut-free', 'Shea nut'),
  ('30', 'tree-nut-free', 'Walnut'),
  ('30', 'tree-nut-free', 'Walnut hull extract'),
  ('30', 'tree-nut-free', 'Beer nuts'),

 
  
  