@shopping_cart = []
@validity_check = true

@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

puts "\nNamaste yogi! We are delighted to have you in our store. We have lots of beautiful accessories! Here you can find a list of our products: \n"

@products.each { |product|
  puts "\n#{product[:name]} for #{product[:price]} Euro (ref. #{product[:reference_number]})"
}

def choosing_product
  ref_nums = []
  @products.each { |product|
      ref_nums << product[:reference_number]
  }

    puts "\nWhat would you like to buy? Enter reference number: "

  choice = gets.chomp.to_i
  @validity_check = ref_nums.include? choice
  @products.each { |product|
    if choice == product[:reference_number]
      print "\nYour chosen product is #{product[:name]}. Good choice!\n"
      @shopping_cart << product
    elsif @validity_check == false
      puts "\nThat reference number doesn't exist! Pick a valid number!"
      break
    end
 }
end

loop do
  choosing_product
  if @validity_check == false
    choosing_product
  else
    break
  end
end


def total_product
  puts "\nYour cart now includes:"
  amount = 0
  @shopping_cart.each { |product|
    amount += product[:price]
    product.each { |key, value|
      if key == :name
        puts "#{value}"
      end
    }
  }
  puts "\nThe total amount of the products in your shopping card is #{amount} Euro."
end

def sth_else
  loop do
    total_product
    puts "Would you like something else? (Y/N)"
    answer = gets.chomp.upcase
    if answer == "Y"
      choosing_product
    elsif answer == "N"
      puts "Thank you for shopping with us!"
      break
    else
      puts "Sorry, I didn't understand your answer. Please put either Y or N!"
    end
  end
end

sth_else

=begin
def display_cart
  for
  puts
end
=end
