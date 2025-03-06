### Field 'specversion'

ID 01

| ID | 01 |
| :----    | :---------- |
| Name | specversion |
| Type | string |
| Detail | metadata specification version |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `specversion` attribute identifies the version of the CloudEvents specification used by the event. This enables interpretation of the context. Conformance requirements for event producers dictate that they must use a value of '1.0' when referring to this version of the specification.

#### Explanation

The CloudEvents standard specifies that only the 'major' and 'minor' version numbers are included in this attribute. This allows 'patch' changes to be made to the specification without changing the value of this property in the serialization.

#### Constraints

- Mandatory
- Contains a non-empty string value

#### Example

`"specversion" : "1.0"`

</details>
