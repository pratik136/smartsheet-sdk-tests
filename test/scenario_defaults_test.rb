require_relative 'test_helper'
require 'scenario_defaults'
require 'json'

describe ScenarioWithDefaults do
    describe 'Defaults Test' do
        def given_full_scenario
            @scenario = {
                "scenario" => "test",
                "description" => "it's a test!",
                "request" => {
                    "method" => "PUT",
                    "urlPath" => "/test",
                    "headers" => {
                        "Content-Type" => "application/json"
                    },
                    "body" => {
                        "someReqBody" => 123
                    }
                },
                "response" => {
                    "status" => 200,
                    "statusMessage" => "OK",
                    "headers" => {
                        "Content-Type" => "application/json"
                    },
                    "jsonBody" => {
                        "someField" => 234
                    }
                }
            }
        end

        def given_scenario_without_req_headers
            @scenario = {
                "scenario" => "test",
                "request" => {
                    "method" => "PUT",
                    "urlPath" => "/test",
                    "body" => {
                        "someReqBody" => 123
                    }
                },
                "response" => {
                    "status" => 200,
                    "statusMessage" => "OK",
                    "headers" => {
                        "Content-Type" => "application/json"
                    },
                    "jsonBody" => {
                        "someField" => 234
                    }
                }
            }
        end
      
        def given_defaults_with_content_type
            @defaults = {
                "request" => {
                    "headers" => {
                        "Content-Type" => "some type"
                    }
                }
            }
        end

        def given_defaults_with_new_header
            @defaults = {
                "request" => {
                    "headers" => {
                        "Something-New" => "used"
                    }
                }
            }
        end

        def given_defaults_with_different_type
            @defaults = {
                "response" => {
                    "jsonBody" => {
                        "someField" => {
                            "somethingElse" => 345
                        }
                    }
                }
            }
        end
      
        it 'does not override existing values with defaults' do
            given_full_scenario
            given_defaults_with_content_type

            scenario = ScenarioWithDefaults.new(@scenario, @defaults).with_defaults
            scenario['request']['headers']['Content-Type'].must_equal 'application/json'
        end

        it 'uses defaults when value is not specified' do
            given_full_scenario
            given_defaults_with_new_header

            scenario = ScenarioWithDefaults.new(@scenario, @defaults).with_defaults
            scenario['request']['headers']['Something-New'].must_equal 'used'
        end

        it 'adds headers when needed to specify default' do
            given_scenario_without_req_headers
            given_defaults_with_content_type

            scenario = ScenarioWithDefaults.new(@scenario, @defaults).with_defaults
            scenario['request']['headers'].must_be_instance_of Hash
            scenario['request']['headers']['Content-Type'].must_equal 'some type'
        end

        it 'does not overwrite existing values when types differ' do
            given_full_scenario
            given_defaults_with_content_type

            scenario = ScenarioWithDefaults.new(@scenario, @defaults).with_defaults
            scenario['response']['jsonBody']['someField'].must_equal(234)
        end
    end
end