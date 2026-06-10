$version: "2"

namespace com.quri.models.mixins

/// Shared pagination input fields for list operations.
/// Apply to any @paginated operation input that uses token-based cursor pagination.
@mixin
structure Paginated {
    @httpQuery("maxResults")
    @range(min: 1, max: 100)
    maxResults: Integer

    @httpQuery("nextToken")
    nextToken: String
}
