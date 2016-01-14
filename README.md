# haikus-html

## Instructions:

get [**haikus-api**](https://github.com/charliemcelfresh/haikus-api) running

```sh
git clone https://github.com/charliemcelfresh/haikus-api.git
rails s -p 3001
```
get haikus-html running

```
git clone https://github.com/charliemcelfresh/haikus-html.git
rails s
```
### dotenv
set an environment variable for API key to access haikus-api. [making-requests](https://github.com/charliemcelfresh/haikus-api#making-requests)

```rb
ApiKey.create!
# => #<ApiKey id: 15, access_token: "7f18f33e90f10a7670c634b7bb8b7827", ...
```
get `access_token` from `rails console` in this way and (to use it as an authentication token,) add this token in `.env` file used with dotenv gem. [usage](https://github.com/bkeepers/dotenv#usage) This file is ignored by `.gitignore`.

```
HAIKUS_API_ACCESS_TOKEN='7f18f33e90f10a7670c634b7bb8b7827'
```
