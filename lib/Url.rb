class Url

    def url_creator(platform, user)
        url = "https://public-api.tracker.gg/v2/apex/standard/profile/#{platform}/#{user}/?TRN-Api-Key=3642f6e8-0c7b-4133-94b4-b7eaf683b301"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse(userdata)
        JSON.parse(userdata)
    end

end



