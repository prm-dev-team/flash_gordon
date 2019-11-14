class User

	attr_reader :id, :name

	def first_name
		name.split(',')&.first
	end
end