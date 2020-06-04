# pact-consumer-swift-multiple-providers
An example how to use [pact-consumer-swift](https://github.com/DiUS/pact-consumer-swift) to test multiple providers with external Ruby dependency (ie: [pact-ruby-standalone](https://github.com/pact-foundation/pact-ruby-standalone)).


> Due to the limitation of how the underlying mock server works (the Ruby Pact Mock Server), one instance of the mock service should be for one provider. Most other pact implementations start and stop the mock service as part of the test framework, however this is not possible when running in a sandboxed environment like the iOS simulator.
>
> The usual workaround that people use is to start multiple mock servers up at the beginning of the test phase running on different ports.

[https://github.com/DiUS/pact-consumer-swift/issues/98#issuecomment-63850369](https://github.com/DiUS/pact-consumer-swift/issues/98#issuecomment-63850369)
