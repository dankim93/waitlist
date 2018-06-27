#Waitlist Project

Rails backend with custom endpoints for tables and diners

Where full URLs are provided in responses they will be rendered as if service
is running on 'https://vast-tundra-35304.herokuapp.com/'.

## Diners Endpoints

* All diners `GET    /api/diners/`
* Create diner `POST   /api/diners/`
* Get diner `GET   /api/diners/:id`
* Delete diner `DELETE   /api/diners/:id`

## Tables Endpoints

* Available tables order by ASC capacity `GET    /api/tables/available/`(.:format)  api/tables#available
* All tables `GET    /api/tables/`
* Create table `POST   /api/tables/`
* Get table `GET    /api/tables/:id`
* Delete table `DELETE /api/tables/:id`
