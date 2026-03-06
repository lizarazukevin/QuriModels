$version: "2"

namespace com.quri.operations.bills

use com.quri.errors#ResourceNotFoundException
use com.quri.models.bills#BillMongoId

@http(method: "DELETE", uri: "/bills/{billId}")
operation DeleteBill {
    input: DeleteBillInput
    output: DeleteBillOutput
    errors: [
        ResourceNotFoundException
    ]
}

structure DeleteBillInput {
    @required
    @httpLabel
    billId: BillMongoId
}

structure DeleteBillOutput {
    billId: BillMongoId
}
