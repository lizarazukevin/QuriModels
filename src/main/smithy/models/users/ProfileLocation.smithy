$version: "2"

namespace com.quri.models.users

use com.quri.models.common#CountryCode

/// General location for a user's demographic data.
///
/// Fields are unconstrained here except for country.
structure ProfileLocation {
    @required
    city: String

    @required
    state: String

    @required
    country: CountryCode
}
