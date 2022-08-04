# GitTalk

An incomplete, possibly hazardous implementation of the GitHub REST-API in SqueakSmalltalk.
Works with Squeak 5.3+.

[![CI](https://github.com/hpi-swa-teaching/GitHub-API/actions/workflows/ci.yml/badge.svg)](https://github.com/hpi-swa-teaching/GitHub-API/actions/workflows/ci.yml)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/GitHub-API/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/GitHub-API)


# Installation

Download the newest release and install the ```.sar``` file within your Squeak environment! Alternatively, you can clone the repo using the default Git Browser. 

## Adding necessary functionality to the WebClient
You may need to add the following method to the ````WebClient```` class included in the ````WebClient-Core```` package, for the client to run as expected:

````
httpPatch: urlString content: postData type: contentType do: aBlock
  "PATCH the data to the given url"
​
  | request |

  self initializeFromUrl: urlString.
  request := self requestWithUrl: urlString.
  request method: 'PATCH'.
  contentType ifNotNil:[request contentType: contentType].
  request contentLength: postData size.
  userAgent ifNotNil:[request headerAt: 'User-Agent' put: userAgent].
  aBlock value: request.

  ^ self sendRequest: request content: postData readStream size: postData size
````
# Usage
Instanciate a new GitHubAPI-Object in your workspace by running 
````
api := GitHubAPI new.
```` 
Head on over to https://github.com/settings/tokens/new and create a new access token (make sure to selected your correct scopes and write down your access token). \
Now run your first API request and get your current user profile (inspect the result, to see your data):
````
api user get
```` 
All available endpoints and parameters can be explored in the offical [GitHub Rest API Documenatation](https://docs.github.com/en/rest).
