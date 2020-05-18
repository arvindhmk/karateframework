Feature: Post request using karate

Background:
* def payload = read('../../data/payload.json')
* def res = read('../../data/postresponse.json')
* configure ssl = true

Scenario:Create user details

Given url 'https://reqres.in/api/users'
And request payload
And header Content-Type = 'application/json'
And param delay = 3
When method POST
Then status 201
Then print 'response--',response
And  match response  == res

Scenario: post request with Authentication

Given url 'https://reqres.in/api/register'

And form field email = 'eve.holt@reqres.in'
And form field password = 'pistol'
When method POST
Then status 200
Then print 'response==>',response

 * def accessToken = response.token

And print 'accessToken==>',accessToken
  