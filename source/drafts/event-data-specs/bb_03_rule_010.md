### Naming convention

| ID     | 10 |
| :----  | :---------- |
| Name   | Naming convention |
| Detail | Case convention and name size limit |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

CloudEvents requires that context attributes be described as key-value pairs. The names of 
the context attributes may not exceed 20 characters and must consist of lowercase letters 
('a' to 'z') or digits ('0' to '9') from the ASCII character set. 
The payload attributes follow the case convention of the
corresponding REST API and are in camelCase according to API Design Guidelines [ID16](../api-design-rules/).

#### Explanation

This guideline applies if own, e.g. domain-specific attributes ('extended attributes'), are 
defined and included in messages. It also requires that the same convention is used
between the payload of the event and the resource payload of the corresponding REST API.

#### Constraints

- Context attributes in lowercase
- Payload attributes in camelCase

</details>
