namespace :export do
  desc "Export users"
  task :export_to_seeds => :environment do
    Park.all.each do |park|
      excluded_keys = %w[created_at updated_at id]
      serialized = park
                       .serializable_hash
                       .delete_if{|key,value| excluded_keys.include?(key)}
      puts "Park.create(#{serialized})"
    end
  end
end