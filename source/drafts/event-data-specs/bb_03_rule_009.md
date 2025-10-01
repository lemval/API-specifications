### Message size

| ID     | 09 |
| :----  | :---------- |
| Detail | size of the message |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

CloudEvents messages can be routed to different systems and consumers, including devices with 
limited resources. The message size of the event, or event file size, is very important to 
ensure interoperability between these various possibilities. The maximum size of a CloudEvents
compatible message is 256 kB. This means that producers must always keep event payloads compact 
and point to data instead of including data if the event file size is larger than 256 kB.

#### Explanation

This guideline prescribes that the maximum event file size is 256 kB, as relaxation to the NL GOV profile for CloudEvents. The aforementioned profile recommends limiting the maximum size to 64 kB.

#### Constraints

- Advised maximum message size should be limited to 64 kB
- Allowed maximum message size is 256 kB

</details>
