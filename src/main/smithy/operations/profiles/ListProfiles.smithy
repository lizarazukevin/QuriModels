$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.profiles#Profile

@readonly
@http(method: "GET", uri: "/profiles")
operation ListProfiles {
    output: ListProfilesOutput
}

list ProfileList {
    member: Profile
}

structure ListProfilesOutput {
    profiles: ProfileList
}
