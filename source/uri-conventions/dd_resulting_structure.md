## Resulting structure of an energy sector URI

### Energy sector URI naming convention

Combining all components mentioned in the previous chapter results in the following naming convention:

```
https://api.<Environment>.<Routing>.energysector.nl/<Root level>/<sublevel 1>/<sublevel 2>/<API name>/<Version>/<Collection>/{ID}[?<Query>][#<Fragment>]
```
{: .boxed }

### Examples of energy sector URIs
As a first example, we will mention an API that can be used to manage contracts for market services. These are contracts for balancing capacity, redispatch capacity or
demand management.

| Part | Value | Remark |
| --- | --- | --- |
| Method of exposure | api | applies to all APIs)|
| Environment        | prd | production environment, so omit for customers |
| Routing to service | cmf | cloud application in the EDSN landscape |
| Root level         | energy-market | NBility BOM level 1 |
| Level 2            | market-participant | NBility BOM level 2 |
| Level 3            | market-agreement | NBility BOM level 3 |
| API name           | contract-management | contraction of capability and BOM level 3 |
| Version            | v1 | |
| Collection         | market-agreements | according to CIM and NBility 6.1.3. |
| Resource identifier| 879999999999999999 | |

A URI based on the above example would then be as follows formed:

`https://api.cmf.energysector.nl/energy-market/market-participant/market-agreement/contractmanagement/v1/market-agreements/879999999999999999`

Some actual examples:

| BOM level 1 | BOM level 2 | BOM level 3  | API name | Collection |
| --- | --- | --- | --- | --- |
| energy-market | market-participant | market-case      | market-case-management | tickets |
| energy-market | market-participant | market-agreement | contract-management    | marketagreements |
| energy-market | connection         | connection       | eancode-retrieval      | ecbinfoset |
| energy-market | connection         | facility         | pgm-type-bcd-management|power-generatingmodules |
| energy-market | market-process     | energy-exchange  | profile-fractions-retrieval | profile-fractions |
| energy-market | market-process     | energy-exchange  | conversion-factors-retrieval | gridarea-calorificconversion-factors |
| energy-market | market-process     | energy-exchange  | readings-retrieval | 24months-readings |

*Some compositions deviate from the standard derivation in section 3.5.4*