import SwiftUI

struct SelectionHighlightModifier: ViewModifier {
    let isSelected: Bool

    func body(content: Content) -> some View {
        content
            .background(isSelected ? Color.appBackground.opacity(0.3) : Color.clear)
            .cornerRadius(6)
    }
}

extension View {
    func highlightedWhenSelected(_ isSelected: Bool) -> some View {
        modifier(SelectionHighlightModifier(isSelected: isSelected))
    }
}
