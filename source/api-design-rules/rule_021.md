### ID 21

| Title    | __21 - Enumerations__ |
| :----    | :---------- |
| Strategy | Enumerations are conditionally allowed for REST APIs. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Enumerations (enumerated types) are variable types in a dynamic or static set of allowed values:
+ Dynamic set: a set that can change due to regulations or business requirements;
+ Static set: a set that no longer changes, for example all days of the week.

Enumerations are popular in API design because they are seen as a simple way to describe that dynamic or static set of allowed values. The use of enumerations is only allowed for standalone REST APIs because changing and extending those enumerations has no chain process impact.

If enumerations are based on an international standard (such as <https://www.iso.org/iso-639-language-codes.html>), then the API design must follow that notation. If enumerations are not based on an international standard, enumerations should be defined as mnemonic codes in an UPPER_SNAKE_CASE notation (in accordance with API-66 of the API Designrules Extensions [\[2\]](../references.html)).

#### Rationale

By including enumerations in the JSON Schema, the API call can be rejected prematurely if the enumerations in the API call do not comply with the syntax.

#### Exceptions

Enumerations are not allowed in REST APIs that are part of a chain process because a change in the range of allowed values ​​for a chain process often has an impact on the entire information exchange of such a process and must be implemented by the entire sector by means of a sector release. The allowed values ​​of enumerations are then described in the associated service descriptions.

</details>

