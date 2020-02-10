require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    it "is valid with valid attributes" do
      categoryExample = Category.new(name: 'bob')
      product = Product.new(name: 'a', price: 1, price_cents: 100, quantity: 1, category: categoryExample)
      expect(product).to be_valid
    end
    it "is not valid without valid name" do
      categoryExample = Category.new(name: 'bob')
      product = Product.new(price: 1, price_cents: 100, quantity: 1, category: categoryExample)
      expect(product).to_not be_valid
    end
    it "is not valid without valid price" do
      categoryExample = Category.new(name: 'bob')
      product = Product.new(name: 'a', quantity: 1, category: categoryExample)
      expect(product).to_not be_valid
    end
    it "is not valid without valid quanitty" do
      categoryExample = Category.new(name: 'bob')
      product = Product.new(name: 'a', price: 1, price_cents: 100, category: categoryExample)
      expect(product).to_not be_valid
    end
    it "is not valid without valid category" do
      categoryExample = Category.new(name: 'bob')
      product = Product.new(name: 'a', price: 1, price_cents: 100, quantity: 1)
      expect(product).to_not be_valid
    end
  end
end