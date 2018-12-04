json.array! @venues.each do |venue|
  json.partial! "venue.json.jbuilder", venue: venue
end