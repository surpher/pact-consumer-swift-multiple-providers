import PactConsumerSwift
import XCTest

@testable import PactMultipleProvidersDemo

class ConsumerTwoPactTests: PACTTestCase, PACTConfigurable {

	internal let pactProvider: PACTProvider = .providerTwo

	override func setUp() {
		super.setUp()

		pactMockService = setupMockServiceFor(provider: pactProvider)
	}

	func testAnInteractionForProviderTwo() {
		// Your regular Pact unit test here
		// pactMockService
		//	.uponReceving(...)
		//	. given(...)
		// And so on
	}

}
