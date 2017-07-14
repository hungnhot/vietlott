task :drop_result => :environment do
  Result.delete_all
end
