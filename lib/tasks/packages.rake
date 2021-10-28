namespace :packages do
  desc "TODO"
  task seed_packs: :environment do
    Package.create!([{
      name: "3 psc pack",
      packs: "3",
      price: "$6.99",
      product_id: 1
    },
    {
      name: "5 psc pack",
      packs: "5",
      price: "$8.99",
      product_id: 1
    },
    {
      name: "2 psc pack",
      packs: "2",
      price: "$9.95",
      product_id: 2
    },
    {
      name: "5 psc pack",
      packs: "5",
      price: "$16.95",
      product_id: 2
    },
    {
      name: "8 psc pack",
      packs: "8",
      price: "$24.95",
      product_id: 2
    },
    {
      name: "3 psc pack",
      packs: "3",
      price: "$5.95",
      product_id: 3
    },
    {
      name: "5 psc pack",
      packs: "5",
      price: "$9.95",
      product_id: 3
    },
    {
      name: "9 psc pack",
      packs: "9",
      price: "$16.99",
      product_id: 3
    }])

    p "Created #{Package.count} packs"
  end

end
