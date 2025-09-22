### Field 'subject'

| ID     | 11 |
| :----  | :---------- |
| Name   | subject |
| Type   | string |
| Detail | subject filter |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `subject` attribute holds a specific data element for the `type`. Each `type` can have its own content definition. For example, for `mdm.meter.updated` this may be the meter number associated. It still needs to be considered as metadata, not as payload data.

#### Explanation

As messages can be numerous there is a need to filter relevant messages for the consumer. This field offers additional context for processing.

#### Constraints

- Optional
- Contains a non-empty value

#### Example

`"subject" : "E00000000035671400"`

</details>
