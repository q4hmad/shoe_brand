require "spec_helper"

describe(Brand) do
  describe("#store") do
    it("tells which stores carry the brand") do
      test_store = Store.create({:name => "Fuego"})
      test_brand = Brand.create({:brand => "Vince Camuto", :store_id => test_store.id})
      expect(test_brand.store()).to(eq(test_store))
    end
  end
end
