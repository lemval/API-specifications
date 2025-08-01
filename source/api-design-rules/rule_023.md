### ID 23

| Title    | __23 - API specification__ |
| :----    | :---------- |
| Strategy | APIs are to be specified as [OAS v3](https://spec.openapis.org/#openapi-specification), and rendered in either JSON or YAML. |


<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

APIs are to be specified as OpenAPI Specification v3 or higher (OAS3). Details to be found at the [OpenAPI initiative](https://www.openapis.org/) and [https://spec.openapis.org/#openapi-specification] for all specification versions.  This is conform ASNO API-16 [\[2\]](../references.html).

The representation format of an OpenAPI specification can be either JSON or YAML, depending on preference. Preferred format is JSON, in compliance with ASNO API-51 [\[2\]](../references.html).

#### Rationale

The process that providers publish APIs in accordance with OAS3 leads to predictability, improved interoperability and contributes to a higher developer experience for consumers. The OAS3 standard allows for a representation in either JSON or YAML and ample tools exist to transform from one representation to the other. In compliance with ASNO, there should be at least a JSON version of the OAS3 at a standard location. However, a YAML representation is also allowed.  

#### Exceptions


</details>

