json.users @users do |user|

  json.name user.name
  json.email user.email
  json.bio user.bio
  json.admin user.admin
  json.location user.location
  json.image user.image
  json.id user.id
  json.password user.password

  json.events user.events

  json.groups user.groups

end
