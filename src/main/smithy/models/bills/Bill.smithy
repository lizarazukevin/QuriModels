$version: "2"

namespace com.quri.models.bills

use com.quri.models.money#MonetaryAmount

structure Bill {
    @required
    billId: BillId

    @required
    total: MonetaryAmount

    @required
    balance: MonetaryAmount

    createdAt: Timestamp
}

string BillId
