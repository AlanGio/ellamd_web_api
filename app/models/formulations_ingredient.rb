class FormulationsIngredient < ApplicationRecord
  belongs_to :formulation
  belongs_to :ingredient
end
