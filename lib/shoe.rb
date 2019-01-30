class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    # Don't store duplicates if they already exist
    if !BRANDS.include?(brand)
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  # The reason we are using only a reader macro and a custom setter method
  # is because we need to modify this method to shovel brands into the class
  # def brand=(brand)
  #   @brand = brand
  #   BRANDS << brand
  # end
end