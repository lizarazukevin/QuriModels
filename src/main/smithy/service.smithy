$version: "2"

namespace com.quri

use aws.protocols#restJson1
use com.quri.operations.bills#CreateBill
use com.quri.operations.bills#DeleteBill
use com.quri.operations.bills#GetBill
use com.quri.operations.bills#ListBills
use com.quri.operations.profiles#CreateProfile
use com.quri.operations.profiles#DeleteProfile
use com.quri.operations.profiles#GetProfile
use com.quri.operations.profiles#ListProfiles

@restJson1
service Quri {
    version: "2024-01-01"
    operations: [
        CreateBill
        CreateProfile
        DeleteBill
        DeleteProfile
        GetBill
        GetProfile
        ListBills
        ListProfiles
    ]
}
