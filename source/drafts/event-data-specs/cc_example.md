## Event Example

In the next example a *fat* event is given which should be published by EDSN as organisation,
from the source system 'centraal meter register', with example values for the context attributes:

```json
{
   "specversion": "1.0",
   "id": "e65558c4-2734-44f1-b04e-63923b0ab97a",
   "type": "mdm.meter.updated",
   "source": "urn:ean13:87037436423:cmr",
   "time": "2023-09-22T14:01:54.957124Z",
   "subject" : "E00000000035671400",
   "dataversion": "1.0.1",
   "datacontenttype": "application/json",
   "data": {
      ---- payload ----
   }
}
```

In the next example is equal to the previous, except for being a *thin* event (without payload):

```json
{
   "specversion": "1.0",
   "id": "e65558c4-2734-44f1-b04e-63923b0ab26f",
   "type": "mdm.meter.updated",
   "source": "urn:ean13:87037436423:cmr",
   "time": "2023-09-22T14:01:54.957124Z",
   "subject" : "E00000000035671400",
   "dataref": "https://energysector.nl/energy-grid/energy-grid/meter-management/v1/meters/E00000000035671400",
}
```
