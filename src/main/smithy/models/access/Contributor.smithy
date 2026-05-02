$version: "2"

namespace com.quri.models.access

use com.quri.models.bills#BillId
use com.quri.models.mixins#UserId

/// Access control entry for a bill. Defines what a user is permitted to do.
structure Contributor {
    @required
    userId: UserId

    @required
    access: AccessLevel

    @required
    billId: BillId
}

/// Defines what operations a contributor is permitted to perform on a bill.
///
/// - `OWNER`: full control including publishing, closing, and managing contributors
/// - `EDIT`: can modify receipt contents and liable assignments while DRAFT or PENDING
/// - `SETTLE`: can mark their own liable items as paid; read-only otherwise
/// - `READ`: view only, no mutations permitted
enum AccessLevel {
    OWNER
    EDIT
    SETTLE
    READ
}
