$version: "2"

namespace com.quri

use aws.protocols#restJson1
use com.quri.models.errors#InternalFailureException
use com.quri.models.errors#ValidationException
use com.quri.operations.bills#CreateBill
use com.quri.operations.bills#DeleteBill
use com.quri.operations.bills#GetBill
use com.quri.operations.bills#ListBills
use com.quri.operations.profiles#CreateProfile
use com.quri.operations.profiles#DeleteProfile
use com.quri.operations.profiles#GetProfile
use com.quri.operations.profiles#ListProfiles
use com.quri.operations.receipts#CreateReceipt
use com.quri.operations.receipts#DeleteReceipt
use com.quri.operations.receipts#GetReceipt
use com.quri.operations.receipts#ListReceipts

@restJson1
service Quri {
    version: "1.0"
    operations: [
        CreateBill
        CreateProfile
        CreateReceipt
        DeleteBill
        DeleteProfile
        DeleteReceipt
        GetBill
        GetProfile
        GetReceipt
        ListBills
        ListProfiles
        ListReceipts
    ]
    errors: [
        ValidationException
        InternalFailureException
    ]
}
