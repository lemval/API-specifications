### ID 11

| Title    | __11 - Use of JSON Schema Specification__ |
| :----    | :---------- |
| Strategy | Every API call with a body must be provided with a JSON Schema Specification. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

ASNO does not require the inclusion of a JSON Schema in the API ([API-23](https://docs.geostandaarden.nl/api/API-Strategie-ext/#api-23)). ​​The design guideline for the energy sector does require the inclusion of a JSON Schema in the API.

#### Rationale

By including the JSON Schema in the API, an API call can be rejected early, already in the gateway, if the API call does not comply with the syntax. This prevents other applications from being burdened with handling syntactically invalid API calls. Including the JSON Schema also enables the API 'user' to validate his own messages before the implementation of the API is available.

#### Exceptions

None.

</details>

