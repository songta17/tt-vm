# Introduction
Tiny demo for an trading api.

# DATA
After making bundle install, you can generate the seed to simulate datas.
```rails db:create db:migrate db:seed```

------------------------------------------------

# Potatoe Price

## Get all PotatoePrices
This endpoint retrieves all otatoe Prices in the database.

### HTTP Request
 ```GET http://localhost:3000/api/v1/potatoe_prices/```
### Query Parameters

| Parameter | Default | Description | 
| ----------- | ----------- | ----------- |
| time | nil | The result will only include potatoe prices for a day. |

### example:
 ```http://localhost:3000/potatoe_prices.json?time=2022-10-2 ```

## Get the Maximal Gain
This endpoint retrieves all maximal gain.

### HTTP Request
 ```GET http://localhost:3000/api/v1/potatoe_prices/maximal_gain```
### Query Parameters

| Parameter | Default | Description | 
| ----------- | ----------- | ----------- |
| time | nil | The result will only include maximal price for a day. |

### example:
 ```http://localhost:3000/api/v1/potatoe_prices/maximal_gain.json?time=2022-10-2```



