json.roles @roles do |role|

  json.user_id role.user_id
  json.group_id role.group_id
  json.admin role.admin
  json.moderator role.moderator

  json.group role.group

  json.user role.user


end
