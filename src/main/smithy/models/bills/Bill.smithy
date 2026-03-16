$version: "2"

namespace com.quri.models.bills

use com.quri.models.money#MonetaryAmount

structure Bill {
    @required
    id: BillMongoId

    @required
    total: MonetaryAmount

    @required
    balance: MonetaryAmount

    createdAt: Timestamp

    updatedAt: Timestamp
}

@pattern("^[a-f0-9]{24}$")
string BillMongoId
