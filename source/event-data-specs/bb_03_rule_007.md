### Field 'dataversion'

| ID     | 07 |
| :----  | :---------- |
| Name   | dataversion |
| Type   | string |
| Detail | metadata specification version |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `dataversion` attribute contains the semantic version of the event data represented by the 
`data` attribute. It must formatted according to **major.minor.patch** notation as described in 
API Design Guideline [ID02](../api-design-rules/).

#### Explanation

This guideline is energy sector specific. The NL GOV profile for CloudEvents does not prescribe 
this attribute. Note that the major versioning is reflected in the URI address of the queue (see [MFF BAS URI Guidelines](../uri-conventions/)). 

#### Constraints

- Mandatory if a `data` attribute is present
- Contains a non-empty string value

#### Example

`"dataversion" : "1.0.1"`

</details>
