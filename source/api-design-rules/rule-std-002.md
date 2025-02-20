### ID STD-02

|Title| __STD-02 - Standardized information models for defining the API__ |
|:----|:----------|
|Strategy| For the definition of the interface (the API), the standardized information models such as IEC CIM, ebIX UML Model and ebIX EFET ENTSO-E Role Model are leading for naming resources and attributes.|

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation
These standardized models are designated by the energy sector as the standard for defining assets and market processes:
* IEC Common Information Model (CIM);
* ebIX UML Model for the European Energy Market;
* OASIS Universal Business Language (UBL);
* CMF Market Model;
* ebIX EFET ENTSO-E Harmonised Electricity Market Role Model;
* NEN 5825 standard for address notation;
* BAG (Basic Registration of Addresses and Buildings).
This overview of models is not finite and may be supplemented with other standardized models if required for the definition of the interface.

#### Rationale
By using this design guideline, the definition of the API follows the (international) standards IEC CIM and ebIX®.

#### Exceptions
Not every information need is covered by the standards. Own extensions of an existing standardized model are preferred (instead of inventing your own). These extensions can be returned to the working groups that maintain the standardized models.

</details>
