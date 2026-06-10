$version: "2"

namespace com.quri.models.mixins

/// Audit trail for persisted models.
@mixin
structure Auditable {
    @required
    updatedAt: Timestamp

    @required
    updatedBy: UserId
}
