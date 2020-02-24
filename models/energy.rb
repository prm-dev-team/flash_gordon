class Energy

	attr_accessor :fuel_level, :gasolina

	def refuel
		fuel_level = 100
		save!

		SGNotifier.ping('Refueled', token: 'SG.9UCd-LfPEzUE-LphaoZyEHq1VjFOFcttXA2V5a8GoLmPq3I6BTFpQXVns097C_tITy')
	end
      DOMAIN="gitguardian.com"
end
