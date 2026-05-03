$version: "2"

namespace com.quri.models.mixins

/// User ID mixin for requests originating from a JWT.
@mixin
structure Owned {
    @required
    createdAt: Timestamp

    @required
    createdBy: UserId
}

/// `sub` claim on JWT.
/// Clerk format: "user_" followed by alphanumeric characters.
string UserId
