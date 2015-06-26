json.array! @secrets do |secret|
  json.id secret.id
  json.title secret.title
  json.comment secret.comment
  #  json.user do
  #   json.id secret.user.id
  #  end
end
