require "awesome_print"
require_relative "../config/enviornment.rb"

class JsonParser

    def parse(userdata)
        JSON.parse(userdata)
    end

end

user_data = UrlCreator.new.url_creator('xbl', 'ampoopmonster')
data = JsonParser.new.parse(user_data)

ap data