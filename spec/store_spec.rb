require "spec_helper"

describe(Store) do
  describe("#brands") do
    it("tells which brands it carries") do
      test_store = Store.create({:name => "list"})
      test_brand1 = Brand.create({:brand => "brand1", :store_id => test_store.id})
      test_brand2 = Brand.create({:brand => "brand2", :store_id => test_store.id})
     expect(test_store.brands()).to(eq([test_brand1, test_brand2]))
    end
  end
end
