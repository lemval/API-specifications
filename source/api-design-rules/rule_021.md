### ID 21

| Title    | __21 - Enumerations__                                 |
| :------- | :---------------------------------------------------- |
| Strategy | Enumerations are conditionally allowed for REST APIs. |

<details><summary>


Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Enumerations (enumerated types) are variable types in a *dynamic* or *static* set of allowed values:

+ <u>Dynamic set</u>: a set that can change due to regulations, business requirements, application- or user settings;
+ <u>Static set</u>: a set that hardly ever changes, for example all days of the week.

Enumerations are popular in API design because they are seen as a simple way to describe that dynamic or static set of allowed values. The use of enumerations is **only** allowed for *Static sets*. Dynamic sets might change at any time and thus should not be used as enumerated types in an API since changes in the range of enumerations will break any API that uses them. 

If enumerations are based on an international standard (such as <https://www.iso.org/iso-639-language-codes.html>), then the API design must follow that notation. If enumerations are not based on an international standard, enumerations should be defined as *mnemonic codes* in an *UPPER_SNAKE_CASE* notation (in accordance with API-66 of the API Designrules Extensions [\[2\]](../references.html)). Enumerations based on international standards are considered part of a Static set.

#### Rationale

By including enumerations in the JSON Schema, the API call can be rejected prematurely if the enumerations in the API call do not comply with the syntax.

#### Exceptions

The use of *Dynamic sets* as enumerations is **not** allowed in REST APIs because a change in the range of allowed values is a breaking change and forces all API clients to update to a new version. Therefore, dynamic sets should be exchanged through other means, while the permitted values are provided via an alternative mechanism - such as service design documentation.

</details>

