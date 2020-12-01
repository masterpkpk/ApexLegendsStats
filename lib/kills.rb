class Kills

    def total(data)
        kills = data["data"]["segments"][0]["stats"]["kills"]["displayValue"]
        puts 'You have a total of ' + kills +  ' kills!'
    end
end