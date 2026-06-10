$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.bills#BillDescription
use com.quri.models.bills#BillId
use com.quri.models.bills#BillName
use com.quri.models.bills#BillStatus
use com.quri.models.common#MonetaryAmount
use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.receipts#ReceiptIdList

/// Updates an existing bill record partially.
@http(method: "PATCH", uri: "/bills/{id}")
operation UpdateBill {
    input: UpdateBillInput
    output: UpdateBillOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure UpdateBillInput {
    @required
    @httpLabel
    id: BillId

    name: BillName

    status: BillStatus

    hidden: Boolean

    description: BillDescription

    balance: MonetaryAmount

    receipts: ReceiptIdList
}

@output
structure UpdateBillOutput {
    @required
    bill: Bill
}
