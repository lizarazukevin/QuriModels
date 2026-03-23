$version: "2"

namespace com.quri.models.mixins

/// Base identity mixin for MongoDB-backed models.
/// Composes a validated ObjectId string as the primary key.
@mixin
structure Identifiable {
    @required
    id: MongoId
}

/// 24-character lowercase hex MongoDB ObjectId.
/// Example: "507f1f77bcf86cd799439011"
@pattern("^[a-f0-9]{24}$")
string MongoId
