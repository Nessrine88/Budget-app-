# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seeds.rb
  # Helper method to create a user with associated data
def create_user_with_data(name, email, password)
    user = User.create!(name: name, email: email, password: password)
  end
  
  # Helper method to create a group with associated entities
  def create_group_with_entities(name, icon, author_id)
    author = User.find_by(id: author_id)
  
    if author.present?
      group = Group.create!(name: name, icon: icon, author_id: author_id)
      # No entities created here for simplicity
    else
      puts "Author with ID #{author_id} not found."
    end
  end
  
  # Seed data for groups

  create_group_with_entities("Utilities", "https://cdn.iconscout.com/icon/premium/png-256-thumb/higher-utilities-cost-5375353-4492775.png", 1)
  create_group_with_entities("Transportation", "https://cdn2.vectorstock.com/i/1000x1000/26/06/grocery-shopping-cart-icon-linear-isolated-vector-35102606.jpg", 1)
  create_group_with_entities("Entertainment", "https://static.thenounproject.com/png/169025-200.png", 1)
  create_group_with_entities("Dining Out", "https://cdn-icons-png.flaticon.com/512/3437/3437521.png", 1)
  create_group_with_entities("Shopping", "https://p7.hiclipart.com/preview/151/502/514/shopping-bags-trolleys-personal-shopper-computer-icons-shopping-cart-shopping-cart.jpg", 1)
  create_group_with_entities("Healthcare", "https://cdn-icons-png.flaticon.com/512/2382/2382443.png", 1)
  create_group_with_entities("Bills & Subscriptions", "https://cdn-icons-png.flaticon.com/512/4730/4730393.png", 1)
  create_group_with_entities("Travel", "https://cdn.iconscout.com/icon/premium/png-256-thumb/travel-5-81396.png", 1)
  create_group_with_entities("Personal Care", "https://w7.pngwing.com/pngs/668/474/png-transparent-personal-care-computer-icons-room-comb-miscellaneous-text-room.png", 1)
  