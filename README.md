# haikus-html

This is a clone of the project practice named "Haikus", which was a pair of two rails app: frontend **haikus-html** and backend **haikus-api**

## Instructions:

get **haikus-api** running with `--port=3001` (this is hard-coded in **haikus-html** for development) and also run haikus-html

```sh
cd path/to/haikus-api
rails s -p 3001
cd path/to/haikus-html
rails s
```

### dotenv
set an environment variable for API key to access haikus-api. ("making requests" part in **haikus-api** page)

```rb
ApiKey.create!
# => #<ApiKey id: 15, access_token: "7f18f33e90f10a7670c634b7bb8b7827", ...
```
get `access_token` from `rails console` in this way and (to use it as an authentication token,) add this token in `.env` file used with dotenv gem. [usage](https://github.com/bkeepers/dotenv#usage) This file is ignored by `.gitignore`.

```
HAIKUS_API_ACCESS_TOKEN='7f18f33e90f10a7670c634b7bb8b7827'
```
