#show.json.jbuilder
json.extract! @pvmes_declaration, :compagny_name,
                                   :compagny_siren,
                                   :customer_name,
                                   :customer_email,
                                   :customer_phone,
                                   :adress
json.panels @pvmes_declaration.panels do |panel|
  json.extract! panel, :hybrid, :code
end
