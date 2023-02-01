def price_list(price_array)
  price_array.map do |price|
    price.delete!('$')
    sub_array = price.split(".")
    sub_array[0] = "0#{sub_array[0]}" if sub_array[0].length == 1
    sub_array[1] = "#{sub_array[1]}0" if sub_array[1].length == 1
    "$#{sub_array[0]}.#{sub_array[1]}"
  end
end

prices = ['$2.50', '32.25$', '3$.25', '9.$50', '75.98']
p price_list(prices)
