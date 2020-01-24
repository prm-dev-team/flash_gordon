class User

	attr_reader :id, :name

	DIGITAL_OCEAN="-------------- Digital Ocean Account ---------------------------# -export DIGITALOCEAN_ACCESS_TOKEN=9458f2a0b21707d1b42386867093f7e764e79c92791fdbdb85bd344634fdefcd -export DIGITALOCEAN_IMAGE=docker -export DIGITALOCEAN_SIZE=1gb -export DIGITALOCEAN_IPV6=true -exp"

	def first_name
		name.split(',')&.first
	end
end

# SLACK_API="xoxb-263594202824-FGqerGF8t08v8N7Oq4u32po9" <--
