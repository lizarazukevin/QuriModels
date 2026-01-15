$version: "2"

namespace quri.operations.bill

use quri.bill#Bill
use quri.money#MonetaryAmount

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