//Class Hierarchy

CREATE
(thing {title:"thing"}),
(Cyberspace:thing {title:"Cyberspace", uri:0, ID:0, tag:"Cyberspace"}),
(Event:thing { title:"Event",duration(hour):0 ,e_type:0 ,end_date/time:0 , eventStatus:0 ,  is_accessible_for_free:"NULL" , language:"NULL",
number_of_people_attending:0, previous_start_date:0 , start_date/time:0, subject:"NULL" ,uri:0, ID:0, tag:"Event"}),
(Image_type:thing {title:"Image_type",  uri:0, ID:0, tag:"Image_type"}),
(Organization:thing {title:"Organization", address:0, activity_type:0, award:0, email:"NULL", fax_number:0 , organization_name:"NULL",stablish_date:0,
telephone:0 ,uri:0, ID:0}),
(Organization_Product:thing {title:"Organization-Product", description:"NULL" , end_date/time:0 , start_date/time:0 ,relation_type:0   ,ID:0 , 
uri:0 ,type_of_collaboration:"NULL", tag:"Organization-Product"}),
(Organization_Event:thing {title:"Organization-Event", description:"NULL" , end_date/time:0 , start_date/time:0  ,relation_type:0 ,ID:0, uri:0,
type_of_collaboration:"NULL", tag:"Organization-Event"}),
(Person:thing {title:"Person" ,address:0, activeYears:0, gender:"NULL" , award:0, birthDate:0, deathDate:0, email:"NULL",givenName:"NULL" ,
familyName:"NULL", nationality:"NULL", homepage:"NULL" ,other_activity:0 , speciality:0 ,uri:0,  telephone:0 , ID:0, tag:"Person"}),
(Person_Product:thing {title:"Person-Product", description:"NULL", end_date/time:0 , start_date/time:0 ,relation_type:0  , type_of_collaboration:"NULL",
ID:0, uri:0 , tag:"Organization"}),
(Person_Event:thing {title: "Person-Event" ,description:"NULL" , end_date/time:0 , start_date/time:0 ,relation_type:0  ,ID:0, uri:0 ,
type_of_collaboration:"NULL", tag:"Person-Event"}),
(Product:thing {title:"Product", brand:"NULL" ,category:"NULL" ,description:"NULL" , is_accessible_for_free:"NULL", language:"NULL" ,material:"NULL", 
modification_date:0, p_type:0, productID:0, product_name:"NULL", production_date:0, release_date:0,award:0, uri:0, subject:"NULL", ID:0, tag:"Product"}),
(Place:thing {title:"Place", address:0, area_code:0 , area_name:"NULL", city_name:"NULL", coordinates:0 , historical_map:0 ,province_name:"NULL" ,
uri:0, ID:0 , tag:"Place"}),
(Video_type:thing {title:"Video_type"})

//SubClass

