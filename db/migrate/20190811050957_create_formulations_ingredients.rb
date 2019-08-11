class CreateFormulationsIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :formulations_ingredients do |t|
      t.references :formulation, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.float :percentage

      t.timestamps
    end
  end
end
