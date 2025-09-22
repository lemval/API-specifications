### Field 'dataref'

| ID     | 12 |
| :----  | :---------- |
| Name   | dataref |
| Type   | string |
| Detail | reference URL |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `dataref` attributes contains a full reference to the data object to which this message refers to. A consumer should be able to directly invoke the API and get details for the data object.

#### Explanation

Using a `dataref` instead of a payload allows for thin events.

#### Constraints

- Optional
- Contains a non-empty URL value

#### Example

`"dataref": "https://energysector.nl/energy-grid/energy-grid/meter-management/v1/meters/E0000000000000"`

</details>
