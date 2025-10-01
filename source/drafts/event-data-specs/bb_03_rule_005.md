### Field 'datacontenttype'

| ID     | 05 |
| :----  | :---------- |
| Name   | datacontenttype |
| Type   | string |
| Detail | message payload encoding |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `datacontenttype` attribute describes how the event data in `data` is
encoded. Event producers must provide the `datacontenttype` context attribute
to enable event consumers to determine the content type of the event data.

#### Explanation

This guideline tightens NL GOV profile for CloudEvents and prescribes that
`datacontenttype` must always be present as a context attribute if
event data is present. In NL GOV profile for CloudEvents this is
a recommendation.

#### Constraints

- Mandatory if a `data` attribute is specified
- Contains a non-empty string value
- Conform [RFC 2046](https://datatracker.ietf.org/doc/html/rfc2046)

#### Example

`"datacontenttype" : "application/json"`

</details>
