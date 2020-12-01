class RankScore

    def total(data)
        rank = data["data"]["segments"][0]["stats"]["rankScore"]["metadata"]["rankName"]
        puts 'Your rank is ' + rank + '.'
    end
end