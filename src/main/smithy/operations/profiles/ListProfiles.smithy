$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.mixins#Paginated
use com.quri.models.users#Profile

/// Returns a paginated list of all profiles.
/// Use `nextToken` from the response to fetch the next page.
/// Omit `maxResults` to use the server default page size.
@readonly
@paginated(inputToken: "nextToken", outputToken: "nextToken", pageSize: "maxResults", items: "profiles")
@http(method: "GET", uri: "/profiles")
operation ListProfiles {
    input: ListProfilesInput
    output: ListProfilesOutput
}

@input
structure ListProfilesInput with [Paginated] {}

@output
structure ListProfilesOutput {
    @required
    profiles: ProfileList

    nextToken: String
}

/// Ordered list of profiles returned in a single paginated response.
list ProfileList {
    member: Profile
}
