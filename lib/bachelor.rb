require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    data[season].each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, contestant|
    data[season].each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        hometown_count = hometown_count + 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    data[season].each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each do |contestant_hash|
    total_age += contestant_hash["age"].to_f
  end
  (total_age/data[season].count).round
end
