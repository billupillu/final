json.array!(@priest_profiles) do |priest_profile|
  json.extract! priest_profile, :id, :name, :phone_wrk, :phone_pr, :religion, :icon, :brief, :description, :street, :area, :city, :state, :pin
  json.url priest_profile_url(priest_profile, format: :json)
end
