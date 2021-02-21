namespace :export do
  desc "Export pictures"
  task :export_images_to_seeds => :environment do
    Image.all.each do |image|
      excluded_keys = %w[created_at updated_at id]
      serialized = image
                       .serializable_hash
                       .delete_if{|key,value| excluded_keys.include?(key)}
      puts "Image.create(#{serialized})"
    end
  end
end