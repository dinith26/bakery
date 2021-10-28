namespace :products do
  desc "TODO"
  task seed_genres: :environment do
    Product.create!([{
      name: "Vegemite Scroll",
      code: "VS5"
    },
    {
      name: "Blueberry Muffin",
      code: "MB11"
    },
    {
      name: "Croissant",
      code: "CF"
    }])

    p "Created #{Product.count} products"
  end

end
