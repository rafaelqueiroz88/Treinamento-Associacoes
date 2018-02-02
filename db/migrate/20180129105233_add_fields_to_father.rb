class AddFieldsToFather < ActiveRecord::Migration[5.1]
  def change
    add_column :fathers, :cpf, :string
    add_column :fathers, :email, :string
    add_reference :fathers, :occupation, foreign_key: true
  end
end
