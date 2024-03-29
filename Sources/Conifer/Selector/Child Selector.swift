// Conifer © 2019–2023 Constantino Tsarouhas

/// A selector of children of given parents.
public struct ChildSelector<Parents : Selector> {
	
	/// A selector selecting parents.
	let parents: Parents
	
}

extension ChildSelector : Selector {
	public func selection(root: UntypedShadow) -> AsyncFlatMapSequence<Parents.Selection, _ShadowBody> {
		parents
			.selection(root: root)
			.flatMap(\.body)
	}
}

extension Selector {
	
	/// Creates a selector that selects the children of the components selected by `self`.
	public var children: ChildSelector<Self> {
		.init(parents: self)
	}
	
}
