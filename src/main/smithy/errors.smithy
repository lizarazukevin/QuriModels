$version: "2"

namespace com.quri.errors

@error("client")
@httpError(404)
structure ResourceNotFoundException {
    @required
    message: String
}

@error("client")
@httpError(400)
structure ValidationError {
    @required
    message: String
}

@error("server")
@httpError(500)
structure InternalError {
    @required
    message: String
}
