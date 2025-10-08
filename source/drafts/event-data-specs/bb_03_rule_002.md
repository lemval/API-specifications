### Field 'id'

| ID     | 02 |
| :----  | :---------- |
| Name   | id |
| Type   | string |
| Detail | message identifier |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `id` attribute identifies the individual event, (preferrably) in the form of a UUID.

#### Explanation

CloudEvents provides a solution to implement idempotency, requiring that the combination of id and source uniquely identifies an event, which can be used as the idempotency key in downstream implementations. The combination of id and source must therefore be unique from the perspective of the producer. The combination of id and source can be used by a consumer to determine whether an event has already been processed.

#### Constraints

- Mandatory
- Contains a non-empty string value
- Producer is responsible that `id` (combined with `source`) is unique over all events

#### Example

`"id": "f3dce042-cd6e-4977-844d-05be8dce7cea"`

</details>
