class Order < ApplicationRecord

  def sum_of_price
    price = 0
    price = tshirt * 110 + shirt * 110 + suit * 1610 + sweater * 590 + cardigan * 780 + blouse * 550 + othertops * 410 + pants * 660 + skirt * 660 + onepiece * 1230
    if price >= 2000
      return price
    else
      return price += 500
    end
  end

  def set
    { price: sum_of_price }
  end
end
