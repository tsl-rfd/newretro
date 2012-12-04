if Rails.env.development? || Category.count == 0
  Category.destroy_all
  
  %w(aha fuzzy).each do |name|
    Category.create name: name unless Category.exists?(name: name)
  end

  puts "#{Category.count} categories."

end