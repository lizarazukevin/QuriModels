$version: "2"

namespace com.quri.models.mixins

/// User ID mixin for requests originating from Clerk JWT.
@mixin
structure Owned {
    @required
    ownerId: ClerkId
}

/// Clerk user ID from registered JWT subject claim.
/// Format: "user_" followed by alphanumeric characters.
/// Example: "user_2abc123xyz"
@pattern("^user_[a-zA-Z0-9]+$")
string ClerkId
