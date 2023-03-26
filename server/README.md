# README

# Stack
* Ruby version :  2.7.0p0
* Rails version : 6.1.4.1
* [simplecov](https://github.com/simplecov-ruby/simplecov) as test coverage
* [dotenv](https://github.com/bkeepers/dotenv) as environment variable loader

# Configuration
In local, the following environment variables are required in the .env file:

| name              | value                        |
|-------------------|------------------------------|
| POSTGRES_USER     | database user with ownership |
| POSTGRES_PASSWORD | database user password       |
| POSTGRES_DB       | development database name    |
| POSTGRES_HOST     | database host                |
| POSTGRES_TEST_DB  | test database name           |

# Deployment
Run development server :
```
rails s
```

# Testing
Simplecov is enabled and outputs coverage in `./coverage` at every Minitest run.
Run tests :
```
rails t
```
# curl
* create a pvmes
curl -X POST -H "Content-Type: application/json" -d '{
    "pvmes_declaration": {
        "compagny_name": "ACME Inc.",
        "compagny_siren": "123456789",
        "customer_name": "John Doe",
        "customer_email": "johndoe@example.com",
        "customer_phone": "555-555-5555",
        "adress": "123 Main St",
        "date_of_installation": "2022-03-26",
        "panels_attributes": [
            {
                "type_of_panel": "solar",
                "code": "1234"
            }
        ]
    }
}' http://localhost:3000/api/v1/pvmes_declarations

* index pvmes
curl -s 'http://localhost:3000/api/v1/pvmes_declarations/?customer_email=johndoe@example.com'

* show pvmes
curl -s 'http://localhost:3000/api/v1/pvmes_declarations/1'

