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

The `subject` attribute represents a specific data element related to the event `type`. Each event type can define its own interpretation of the subject. For example, in an event of type `mdm.meter.updated` the subject refers to the meter number that was updated. Including the subject in contextual metadata is particularly useful for generic subscription filtering scenarios and for clarifying the event its scope without requiring payload parsing.

#### Explanation

As messages can be numerous there is a need to filter relevant messages for the consumer. This field offers additional context for processing.

#### Constraints

- Optional
- Contains a non-empty value

#### Example

`"subject" : "E00000000035671400"`

</details>
