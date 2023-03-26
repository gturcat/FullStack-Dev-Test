#index.json.jbuilder
json.array! @pvmes_declarations do |pvmes_declaration|
  json.extract! pvmes_declaration, :compagny_name,
                                   :compagny_siren,
                                   :customer_name,
                                   :customer_email,
                                   :customer_phone,
                                   :adress,
                                   :status
  json.panels pvmes_declaration.panels do |panel|
    json.extract! panel, :type_of_panel, :code
  end
end
