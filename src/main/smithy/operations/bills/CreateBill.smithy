$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.money#MonetaryAmount

@http(method: "POST", uri: "/bills")
operation CreateBill {
    input: CreateBillInput
    output: CreateBillOutput
}

structure CreateBillInput {
    total: MonetaryAmount
    balance: MonetaryAmount
    createdAt: Timestamp
}

structure CreateBillOutput {
    bill: Bill
}
