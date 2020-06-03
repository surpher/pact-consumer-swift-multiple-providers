import Foundation

///
/// 🚨🚨🚨 :: WARNING :: 🚨🚨🚨
/// When running PACT tests, pact-mock-service spits out a PACT contract for all the interactions that the
/// pact-mock-service receives in one session.
/// Unfortunately we cannot start and stop mock services programatically for each test (eg. per Provider)
/// because the simulator doesn’t have access and ability to start and stop external services.
/// One workaround is to startup a mock service on different port for each Provider and define which one each test uses.
///
/// When adding PACT tests for a new Provider you must follow these steps:
/// 1. Add the a new case to `PACTProvider` enum below and define the service's name,
/// 2. Make your new <Provider>PACTTest file inherit from `PACTTestCase`
/// 3. Make your new <Provider>PACTTest file conform to `PACTConfigurable` protocol
/// 4. Add the new unique port number to `for i` line in `/Scripts/pact_mock_service_start.sh` file
///

protocol PACTConfigurable {
	var pactProvider: PACTProvider { get }
}

///
/// Each of the Providers should be tested using its own Mock PACT Service.
/// That can, unfortunately, only be done by running as many Mock PACT Services as there are providers.
/// Each on their own port. Make sure the port numbers match port numbers in `Scripts/pact_mock_service_start.sh` script.
///
enum PACTProvider: String {
	case providerOne = "provider-name-one"
	case providerTwo = "provider-name-two"
	case providerThree = "provider-name-three"

	var port: Int {
		switch self {
		case .providerOne: return 1357
		case .providerTwo: return 1468
		case .providerThree: return 1579
		}
	}
}

