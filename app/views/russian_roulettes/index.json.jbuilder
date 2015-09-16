json.array!(@russian_roulettes) do |russian_roulette|
  json.extract! russian_roulette, :id, :player, :bulloc, :round, :alive
  json.url russian_roulette_url(russian_roulette, format: :json)
end
