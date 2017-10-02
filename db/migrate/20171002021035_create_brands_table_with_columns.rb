class CreateBrandsTableWithColumns < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |b|
      b.column(:brand, :string)
      b.column(:price, :integer)

      b.timestamps()
    end
  end
end
