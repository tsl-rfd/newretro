namespace :retro do

	desc "Migrate users to the ca organization"
	task migrate_to_ca: :environment do 
		User.update_all(:organization_id => Organization.ca)
		Team.update_all(:organization_id => Organization.ca)
	end

end