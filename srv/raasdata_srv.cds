using app.raasdata from '../db/raasdata';
using WSTRANSACTIONVIEW from '../db/raasdata';

@requires: 'authenticated-user'

service RaasDataService {

 entity Interactions_Header
	as projection on raasdata.Interactions_Header;

 entity Interactions_Items
	as projection on  raasdata.Interactions_Items;


 @readonly
 entity WSTransction as projection on WSTRANSACTIONVIEW;
}
