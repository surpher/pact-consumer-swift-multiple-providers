import Foundation
import PactConsumerSwift

@testable import PactMultipleProvidersDemo

// Your Pact Tests parent class for setting up different providers
class PactTestCase {

	let consumer = "consumer_name"

	var pactMockService: MockService!
	let pactMockServiceBaseUrl = "http://localhost"

	func setupMockService(provider: PACTProvider) -> MockService {
		return MockService(
			provider: provider.rawValue,
			consumer: consumer,
			pactVerificationService: PactVerificationService(
				url: pactMockServiceBaseUrl,
				port: provider.port
			)
		)
	}

}
