# smartsheet-sdk-tests
Mock test suite for all language SDKs

## Requirements
### For Packaging Scenarios
* Node 6.11+

### For Running/Modifying the Mock API Server
* Java 7+

## Overview
This repository provides a number of scripts that can be used to bundle a WireMock server with Smartsheet scenario configuration files. It also contains scripts that can be used by Travis builds to install and run a WireMock server bundle.

## Contents
* [Running the Test Server](#running-the-test-server)
* [Creating Scenarios](#creating-scenarios)
* [Bundling Packages](#bundling-packages)
* [Releasing a Package](#releasing-a-package)
* [Using with Travis CI](#using-with-travis-ci)

## Running the Test Server
To run the test server, unzip `sdk_tests_package.zip` and run the provided launch script:

```bash
$ unzip -qq sdk_tests_package.zip -d sdk_tests_package
$ cd sdk_tests_package
$ ./launch.sh
```

Once the server is running, you can run the mock API tests for your SDK. See the SDK's documentation for more information.

## Creating Scenarios
Scenarios can either be written by hand following the [scenario spec](#scenario-specification) or by [converting a Postman collections export file](#converting-postman-export-files). In order to use the new scenarios, the scenario file(s) must be added to the `data/scenarios` directory and the package must be rebundled - see [bundling packages](#bundling-packages).

### Scenario Defaults
Some scenario fields are added through the use of defaults. Look at the file `data/stub_defaults.json` to see which fields will be added. Defaults will only be added when the field does not exist in the scenario - they do not override existing values.

### Scenario Specification
Scenario files should have the following structure:

```json
[
  {
    "scenario": "The scenario name",
    "description": "A description of what you are testing. This will only appear in the generated docs.",
    "request": {
      "method": "The HTTP method: GET, POST, DELETE, etc",
      "urlPath": "The relative path of the url: /sheets/1",
      "queryParameters": {
        "some query key": "some query value"
      },
      "headers": {
        "some header key": "some header value"
      },
      "body": {
        "this is the full, expected JSON body.": 123
      }
    },
    "response": {
      "status": 200,
      "statusMessage": "OK",
      "headers": {
        "some header key": "some header value"
      },
      "jsonBody": {
        "this is the JSON body that will be returned.": 123
      }
    }
  }
]
```

Not all fields shown above are required. The minimal required fields are as follows:

```json
[
  {
    "scenario": "The scenario name",
    "request": {
      "method": "The HTTP method: GET, POST, DELETE, etc",
      "urlPath": "The relative path of the url: /sheets/1"
    },
    "response": {
      "status": 200,
      "statusMessage": "OK",
      "jsonBody": {
        "this is the JSON body that will be returned.": 123
      }
    }
  }
]
```



### Converting Postman Export Files
Scenario files can be created from Postman export files, version 2. See [here](https://www.getpostman.com/docs/postman/collections/data_formats) for information on how to export a Postman collection. Scenario files are converted using the `convert_from_postman.js` script:

```bash
$ node convert_from_postman.js --collection=path/to/collection.json --output=my_scenarios.json
```

Once the scenario file has been converted, you should verify that the scenarios look as expected. Make sure every request has a response, no Postman variables appear in the request, and all the data has been sanitized.

## Bundling Packages
To bundle a package, run the following in a bash terminal:

```bash
$ sh package.sh path/to/diff-extension.jar
```

When called successfully, the new package (both a directory and zip) will be created in the current directory. See [running the test server](#running-the-test-server) for information on how to start the new server.

## Releasing a Package
To release a package, commit your newly created ZIP file and merge it into `master`. Once your new ZIP has been merged, all Travis builds will use it for mock API tests. Note that adding a new ZIP will not trigger a Travis build of the SDKs so it is a good idea to rerun the most recent Travis build for each SDK to verify that the tests pass.

## Using with Travis CI
Travis can use this package to run the Smartsheet WireMock mock API server. This package contains two scripts to use with Travis: an install script and a start script. The install script unzips the server. The start script starts WireMock in the background and waits for WireMock to warm-up.

### Configuring SDKs to Run the Mock API
Add the following to your SDK's `.travis.yml` configuration file to run the WireMock server:

```yaml
before_install:
  - git clone https://github.com/smartsheet-platform/smartsheet-sdk-tests.git
  - smartsheet-sdk-tests/travis_scripts/install_wiremock.sh

script:
  - smartsheet-sdk-tests/travis_scripts/start_wiremock.sh
  # run SDK specific functional and mock API tests
```

For example, the Node SDK's `.travis.yml` configuration is:

```yaml
before_install:
  - git clone https://github.com/smartsheet-platform/smartsheet-sdk-tests.git
  - smartsheet-sdk-tests/travis_scripts/install_wiremock.sh

script:
  - smartsheet-sdk-tests/travis_scripts/start_wiremock.sh
  - npm test
```
