$version: "2"

namespace com.quri.models.errors

/// The request was malformed or failed validation.
@httpError(400)
@error("client")
structure ValidationException {
    @required
    message: String
}

/// The requested resource could not be found.
@httpError(404)
@error("client")
structure ResourceNotFoundException {
    @required
    message: String
}

/// An unexpected error occurred on the server.
@httpError(500)
@error("server")
structure InternalFailureException {
    @required
    message: String
}
