$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.mixins#UserIdList
use com.quri.models.users#Bio
use com.quri.models.users#EmailAddress
use com.quri.models.users#FirstName
use com.quri.models.users#Gender
use com.quri.models.users#LastName
use com.quri.models.users#MiddleName
use com.quri.models.users#PhoneNumber
use com.quri.models.users#Profile
use com.quri.models.users#ProfileId
use com.quri.models.users#UserLocation
use com.quri.models.users#Username

/// Updates an existing profile partially.
@http(method: "PATCH", uri: "/profiles/{profileId}")
operation UpdateProfile {
    input: UpdateProfileInput
    output: UpdateProfileOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure UpdateProfileInput {
    @required
    @httpLabel
    profileId: ProfileId

    username: Username

    firstName: FirstName

    lastName: LastName

    email: EmailAddress

    middleName: MiddleName

    phoneNumber: PhoneNumber

    bio: Bio

    following: UserIdList

    followers: UserIdList

    gender: Gender

    location: UserLocation
}

@output
structure UpdateProfileOutput {
    @required
    profile: Profile
}
