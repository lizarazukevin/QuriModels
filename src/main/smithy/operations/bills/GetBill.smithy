$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.mixins#MongoId

/// Fetches a single bill by id.
@readonly
@http(method: "GET", uri: "/bills/{billId}")
operation GetBill {
    input: GetBillInput
    output: GetBillOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure GetBillInput {
    @required
    @httpLabel
    billId: MongoId
}

@output
structure GetBillOutput {
    @required
    bill: Bill
}
