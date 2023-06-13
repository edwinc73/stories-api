require "faker"

10.times do
  story = Story.new(
    name: Faker::TvShows::GameOfThrones.character,
    text: "Pizza ipsum dolor amet white garlic mozzarella platter thin crust, garlic meat lovers black olives sausage deep crust bacon & tomato sausage burnt mouth. Pepperoni thin crust chicken wing, parmesan extra cheese peppers pizza pork ranch ham stuffed. NY style green bell peppers parmesan bacon & tomato garlic sauce. Thin crust large ham pizza roll. Platter mayo ricotta melted cheese, white garlic bbq sauce pineapple philly steak. Chicken beef stuffed crust ricotta pepperoni."
  )

  rand(2..7).times do
    comment = Comment.new(
      name: Faker::TvShows::GameOfThrones.character,
      content: Faker::TvShows::GameOfThrones.quote
    )
    comment.story = story
    comment.save!
  end
  story.save!
end
