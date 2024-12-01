# frozen_string_literal: true

class ProductCardContentComponent < ViewComponent::Base
  def initialize(product:)
    @product = product
  end
end
