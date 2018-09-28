require 'yaml'
module IsdCode
	flag_file = "/Users/deekshita.a.k/Documents/isd_code/lib/isd.yaml"
	@@config = YAML::load_file(flag_file)

	def self.custom_yaml_file_path(file)
		@@config = YAML::load_file(file)
	end	

	def self.code(name = nil)
		if name.nil?
			puts "Enter country name or ISD code"
			name = gets.chomp
		end
		value = @@config[name.to_s.downcase]
		if value.nil?
			if @@config.key(name).nil?
				return "Enable to find results"
			else
				return @@config.key(name)
			end
		else
			return value	
		end	
	end

end


