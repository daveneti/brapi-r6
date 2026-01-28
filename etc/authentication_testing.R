setwd(".")
library("R6")
library("httr2")
source("pkg/R/authentication.R")

# function to guess username

guess_username()

# function to do basic authentication

req <- request("https://httpbin.org/basic-auth/user/passwd")

## This should fail with a 401

auth <- basic_authentication("user1", "password1")

req |> auth$authentication() |>
  req_perform() |>
  resp_status() 

## This should pass with 200

auth <- basic_authentication("user", "passwd")

req |> auth$authentication() |>
  req_perform() |>
  resp_status() 

# function to do client credentials

## Mock the server

library(webfakes)
library(jsonlite)

app <- new_app()

# OAuth2 token endpoint (client credentials grant)
app$post("/oauth/token", function(req, res) {
  body <- fromJSON(rawToChar(req$body))
  if (body$grant_type == "client_credentials" &&
      body$client_id == "test_client" &&
      body$client_secret == "test_secret") {
    res$send(list(
      access_token = "mock_access_token",
      token_type = "bearer",
      expires_in = 3600
    ))
  } else {
    res$status <- 401
    res$send(list(error = "invalid_client"))
  }
})

server <- app$listen(8888)

## This should pass with 200

token_url <- "http://127.0.0.1:8000/oauth/token"
client_id <- "test_client"
client_secret <- "test_secret"

auth <- client_credentials(id = client_id,
                               secret = client_secret,
                               token_url = token_url,
                               name = "test")

req <- request("http://127.0.0.1:8000/bearer")

req |> auth$authentication() |>
  req_perform() |>
  resp_status() 
