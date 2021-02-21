namespace :export do
  desc "Export addresses"
  task :export_address_to_seeds => :environment do
    Address.all.each do |address|
      excluded_keys = %w[created_at updated_at id]
      serialized = address
                       .serializable_hash
                       .delete_if{|key,value| excluded_keys.include?(key)}
      puts "Address.create(#{serialized})"
    end
  end
end