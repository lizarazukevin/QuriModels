$version: "2"

namespace quri.operations

use quri.bill#Bill
use quri.bill#BillId

operation GetBill {
    input: GetBillInput
    output: GetBillOutput
}

structure GetBillInput {
    @required
    billId: BillId
}

structure GetBillOutput {
    bill: Bill
}