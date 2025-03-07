# NBility levels for paths

Here are the NBility business object levels listed which are valid for the [URI 2.0 conventions](../uri-conventions/) \<Path\> element.

Currently, [NBility version 2.3](https://nbility-model.github.io/NBility-business-capabilities-Archi/) is available which is using a different BOM.

## Root level BOM

These are the established names for the business objects on root level.

|NBility designation|BOM root level|
| --- | --- |
|1|customer|
|2|energy-transport|
|3|energy-grid|
|4|measurement|
|5|work|
|6|energy-market|

## First sublevel BOM

There are two sublevels within the structure to further divide the resources. These are the established names for the business objects on the second level of NBility.

|NBility designation|BOM second level|
| --- | --- |
|1.1| customer |
|1.2| customer-agreement |
|1.3| customer-settlement |
|1.4| customer-case |
|2.1| transport-control |
|2.2| transport-deviation |
|2.3| transport-planning |
|3.1| energy-grid-change[^1] |
|3.2| energy-grid-quality |
|3.3| energy-grid-policy |
|4.1| measurement |
|4.2| measurement |
|5.1| work-portfolio |
|5.2| work-order |
|5.3| work-activity |
|5.4| work-resource |
|6.1| market-participant |
|6.2| connection |
|6.3| market-process |
|6.4| data-provision |

[^1]: Small deviation as NBility version 2.0 calls level 3.1 'grid change' instead of the more consistent variant "energy grid change".

## Second sublevel BOM

These are the established names for the business objects on the third level of NBility. Because this list is pretty large we will suffice with the objects of the CMF most relevant group "energy-market". For other groups, please see NBility version 2.0.

|NBility designation|BOM third level|
| --- | --- |
|6.1.1| market-participant |
|6.1.2| market-case |
|6.1.3| market-agreement |
|6.1.4| energy-market |
|6.2.1| connection |
|6.2.2| facility |
|6.2.3| congestion-area |
|6.3.1| market-request |
|6.3.2| energy-schedule[^2] |
|6.3.3| energy-exchange |
|6.3.4| market-invoice |
|6.3.5| regulation-demand[^2] |
|6.3.6| regulation-offer[^2] |
|6.4.3| consent-from-system-user |

[^2]: Small deviation as NBility version 2.0 uses multiple terms for these levels. For clarity the choice is made to use the most viable options.
