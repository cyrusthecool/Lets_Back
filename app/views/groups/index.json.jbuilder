


json.groups @groups do |e|
  json.id e.id
  json.name e.name
  json.location e.location
  json.description e.description
  json.image e.image
  json.nickname e.nickname

  json.roles e.roles

  json.interests e.interests

  json.users e.users

  json.events e.events


end
