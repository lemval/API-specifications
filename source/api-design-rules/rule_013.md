### ID 13

| Title    | __13 - Defining date, time and date-time__ |
| :----    | :---------- |
| Strategy | The date and time notation must be complete and unambiguous. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Date, time and date-time notation must conform to W3C DTF Note ISO 8601 [\[7\]](../references.html).
This ensures unambiguous interpretation of date/time internationally.

Advice for specification of a time or a timestamp:
+ Use UTC and the "Z" as time zone designator;
+ Specify the time with seconds and milliseconds. If milliseconds are not known, use "000".

Example: `2020-02-07T14:55:42.000Z` or `14:55:43.000Z` 

#### Rationale

The date/time notation according to W3C DTF Note ISO 8601 [\[7\]](../references.html) is defined in [TC021](https://energiedatawijzer.nl/documenten/tc021-vastlegging-datum-tijd-conventies/).

#### Exceptions

None.

</details>

