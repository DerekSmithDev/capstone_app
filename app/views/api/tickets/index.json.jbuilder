json.array! @tickets.each do |ticket|
  json.partial! "ticket.json.jbuilder", ticket: ticket
end