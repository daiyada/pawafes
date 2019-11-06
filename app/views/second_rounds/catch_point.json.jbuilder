json.points do
  json.array! @points, :name, :muscle, :agile, :technique, :change, :spirit
end

json.muscle do
  json.muscle_base_point @muscle_base_point
  json.muscle_action_point @muscle_action_point
end

json.agile do
  json.agile_base_point @agile_base_point
  json.agile_action_point @agile_action_point
end

json.technique do
  json.technique_base_point @technique_base_point
  json.technique_action_point @technique_action_point
end

json.change do
  json.change_base_point @change_base_point
  json.change_action_point @change_action_point
end

json.spirit do
  json.spirit_base_point @spirit_base_point
  json.spirit_action_point @spirit_action_point
end