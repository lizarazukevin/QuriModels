$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.profiles#Profile

@readonly
@paginated(inputToken: "nextToken", outputToken: "nextToken", pageSize: "maxResults", items: "profiles")
@http(method: "GET", uri: "/profiles")
operation ListProfiles {
    input: ListProfilesInput
    output: ListProfilesOutput
}

@input
structure ListProfilesInput {
    @httpQuery("maxResults")
    maxResults: Integer

    @httpQuery("nextToken")
    nextToken: String
}

@output
structure ListProfilesOutput {
    nextToken: String

    @required
    profiles: ProfileList
}

list ProfileList {
    member: Profile
}
