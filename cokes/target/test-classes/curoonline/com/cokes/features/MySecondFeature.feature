Feature:response content negotiation should succeed
	Scenario: response content negotiation should succeed
		Given I receive <responseContentType> data
		When I send a search request
		Then I should get a successful response
 
 
	Scenario: response content negotiation should fail
		Given I receive <responseContentType> data
		When I send a search request
		Then I should get an unsuccessful response
		And the response code should be 406
 
 
	Scenario: request content negotiation should succeed
		Given I send <requestContentType> data
		When I send a create request
		Then I should get a successful response
		And I should get my newly created resource
 
 
	Scenario: request content negotiation should fail
		Given I send <requestContentType> data
		When I send a create request
		Then I should get an unsuccessful response
		And the response code should be 415