$version: "2"

namespace com.quri.models.mixins

/// Lifecycle timestamps for persisted models.
/// Both fields are optional to accommodate records created before auditing was enforced.
@mixin
structure Auditable {
    createdAt: Timestamp
    updatedAt: Timestamp
}
