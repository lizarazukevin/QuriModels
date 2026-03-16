$version: "2"

metadata validators = [
    {
        name: "AbbreviationName"
    }
    {
        name: "CamelCase"
    }
    {
        name: "RepeatedShapeName"
    }
    {
        name: "NoninclusiveTerms"
    }
    {
        name: "StandardOperationVerb"
        configuration: {
            verbs: ["Get", "List", "Create", "Update", "Delete", "Put"]
            prefixes: ["Batch"]
            suggestAlternatives: {
                Make: ["Create"]
                Fetch: ["Get"]
                Remove: ["Delete"]
                Modify: ["Update"]
            }
        }
    }
    {
        name: "InputOutputStructureReuse"
    }
    {
        name: "MissingPaginatedTrait"
    }
    {
        name: "ShouldHaveUsedTimestamp"
    }
    {
        name: "UnreferencedShape"
    }
    {
        name: "MissingSensitiveTrait"
    }
]
