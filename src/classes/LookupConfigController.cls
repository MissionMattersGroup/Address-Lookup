public class LookupConfigController {
	public String objectName { get; set; }
	public String streetField { get; set; }
	public String cityField { get; set; }
	public String stateField { get; set; }
	public String zipField { get; set; }
	public String countyField { get; set; }
	public mmg_cl__Address_Lookup__c addressLookup { get; set; }
	public List<SelectOption> objectList { get; set; }
	Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();
	public List<SelectOption> fieldList { get; set; }

	public LookupConfigController() {
		populateObjectList();
		objectName='';
	}

	public void populateObjectList () {
		objectList = new List<SelectOption>();
		for(string objectApiName : gd.keySet()) {
			SelectOption so = new SelectOption(objectApiName, gd.get(objectApiName).getDescribe().getLabel());
			objectList.add(so);
		}
	}
	public PageReference populateFieldList() {
		fieldList = new List<SelectOption>();
		Schema.SObjectType soType = gd.get(objectName);
		DescribeSObjectResult dsr = soType.getDescribe();
		Map<String, Schema.SObjectField> fieldMap = dsr.fields.getMap();
		for (string fieldApiName : fieldMap.keySet()) {
			SelectOption fso = new SelectOption(fieldApiName, fieldMap.get(fieldApiName).getDescribe().getLabel());
			fieldList.add(fso);
		}
			return null;
	}

}
