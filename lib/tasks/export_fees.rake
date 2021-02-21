namespace :export do
  desc "Export fees"
  task :export_fees_to_seeds => :environment do
    Fee.all.each do |fee|
      excluded_keys = %w[created_at updated_at id]
      serialized = fee
                       .serializable_hash
                       .delete_if{|key,value| excluded_keys.include?(key)}
      puts "Fee.create(#{serialized})"
    end
  end
end