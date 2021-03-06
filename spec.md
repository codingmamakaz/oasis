# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
      User has_many plants
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
      Plant belongs_to User
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
      Plant has_many Actions through PlantsAction
      Action has_many Plants through PlantsAction
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
      Plant has_many Actions through PlantsAction
      Action has_many Plants through PlantsAction
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
      attribute_name - plants_actions.action_date
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
      User, Plant, Action
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
       /plants/edible, /plants/annual, /plants/in_garden
- [x] Include signup (how e.g. Devise)
      Devise
- [x] Include login (how e.g. Devise)
      Devise
- [x] Include logout (how e.g. Devise)
      Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
      Devise/GoogleOauth2
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
      Users/2/plants(only available for admin) 
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
      plants/2/actions/new 
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
      /plants/new 
Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate 