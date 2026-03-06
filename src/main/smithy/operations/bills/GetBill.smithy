$version: "2"

namespace com.quri.operations.bills

use com.quri.errors#ResourceNotFoundException
use com.quri.models.bills#Bill
use com.quri.models.bills#BillMongoId

@readonly
@http(method: "GET", uri: "/bills/{billId}")
operation GetBill {
    input: GetBillInput
    output: GetBillOutput
    errors: [
        ResourceNotFoundException
    ]
}

structure GetBillInput {
    @required
    @httpLabel
    billId: BillMongoId
}

structure GetBillOutput {
    bill: Bill
}
