ActiveAdmin.register Order do
	actions :all, :except => [:new,:edit]
end
