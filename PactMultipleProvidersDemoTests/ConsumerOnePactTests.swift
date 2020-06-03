import PactConsumerSwift
import XCTest

@testable import PactMultipleProvidersDemo

class ConsumerOnePactTests: PACTTestCase, PACTConfigurable {

	internal let pactProvider: PACTProvider = .providerOne

	override func setUp() {
		super.setUp()

		pactMockService = setupMockServiceFor(provider: pactProvider)
	}

	func testAnInteractionForProviderOne() {
		// Your regular Pact unit test here
		// pactMockService
		//	.uponReceving(...)
		//	. given(...)
		// And so on
	}

}
