def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]

puts "*    Let's cook a Spanish Omelette!    *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

  puts "Got all ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "You need to go shopping"
    print_progress_bar
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  else
    puts "That's not a valid input. Try again."
  end
end

steps = [
  { description: "Scrape potatoes", action: "scrape_potatoes" },
  { description: "Cut potatoes into thick slices", action: "cut_potatoes" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step" },
  { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
  { description: "Add onion to the pan", action: "generic_recipe_step" },
  { description: "Strain potatoes and onions through a colander into a large bowl", action: "generic_recipe_step" },
  { description: "Break the eggs", action: "break_eggs" },
  { description: "Beat the eggs separately", action: "generic_recipe_step" },
  { description: "Stir into the bowl the potatoes with plenty of salt", action: "generic_recipe_step" },
  { description: "Heat a little of the strained oil in a smaller pan", action: "generic_recipe_step" },
  { description: "Tip everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
  { description: "When almost set, invert on a plate and slide back into the pan", action: "generic_recipe_step" },
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
]

print_divider
puts "See below the different steps to follow:"

steps.each_with_index do |step, index|
  puts (index + 1).to_s + ") " + step[:description]
end
