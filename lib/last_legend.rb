
class LastPlayedLegend

    def total(data)
        legend = data["data"]["metadata"]["activeLegendName"]
        puts 'The last legend you played was ' + legend + '.'
    end
end