### ID 24

| Title    | __24 - Use of xxxOf constructs__ |
| :----    | :---------- |
| Strategy | The use of xxxOf (allOf, anyOf, oneOf) constructs in APIs should be avoided. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Although the allOf, anyOf and oneOf constructs are valid OAS3 constructs, they cause problems when generating code and importing applications.

#### Rationale

Various code generators and applications do not handle these constructs properly and generate incorrect code and import errors. If this is resolved in the future, it is worth considering using these constructs for the next breaking change. A market consultation must take place beforehand to check whether the market parties can handle these constructs.

#### Exceptions

ASNO does not explicitly mention the use of xxxOf constructs. On the github site of VNG realisatie (API working group of the Association of Dutch Municipalities), the recommendation does appear to not use xxxOf. Details can be found at the '[Haal Centraal API design decisions](https://github.com/VNG-Realisatie/Haal-Centraal-common/blob/master/docs/design_decisions.md#dd54-gebruik-geen-oneof-of-anyof-constructies-voor-polymorfe-gegevens)'.

</details>
