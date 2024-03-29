// Conifer © 2019–2023 Constantino Tsarouhas

/// A value that selects (untyped) components for a given root.
public protocol Selector {
	
	/// Returns selected components for `root`.
	func selection(root: UntypedShadow) -> Selection
	associatedtype Selection : AsyncSequence where Selection.Element == UntypedShadow
	
}
