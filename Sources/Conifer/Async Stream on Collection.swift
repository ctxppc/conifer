// Conifer © 2019–2023 Constantino Tsarouhas

extension RandomAccessCollection {
	
	/// Creates an asynchronous stream of elements of `self`.
	func makeAsyncStream() -> AsyncStream<Element> {
		var remaining = self[...]
		return AsyncStream {
			remaining.popFirst()
		}
	}
	
}
