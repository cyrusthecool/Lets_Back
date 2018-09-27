 json.enrollments @enrollments do |enrollment|

  json.user_id enrollment.user_id
  json.event_id enrollment.event_id
  json.status enrollment.status
  json.waitinglist enrollment.waitinglist
  json.admin enrollment.admin
  json.moderator enrollment.moderator

# The event that owns this enrollment
  json.event enrollment.event

# The user that owns this enrollment
  json.user enrollment.user


end
