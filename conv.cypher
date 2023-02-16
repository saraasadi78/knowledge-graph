//Class Hierarchy

CREATE
(thing {title:"thing"}),
(Cyberspace:thing {title:"Cyberspace", uri:0, ID:0, tag:"Cyberspace"}),
(Event:thing { title:"Event",duration:0 ,e_type:0 ,end_date:0 , eventStatus:0 ,  is_accessible_for_free:"NULL" , language:"NULL",
number_of_people_attending:0, previous_start_date:0 , start_date:0, subject:"NULL" ,uri:0, ID:0, tag:"Event"}),
(Image_type:thing {title:"Image_type", uri:0, ID:0, tag:"Image_type"}),
(Organization:thing {title:"Organization", address:0, activity_type:0, award:0, email:"NULL", fax_number:0 , organization_name:"NULL",stablish_date:0,
telephone:0 ,uri:0, ID:0}),
(Organization_Product:thing {title:"Organization-Product", description:"NULL" , end_date:0 , start_date:0 ,relation_type:0 ,ID:0 , 
uri:0 ,type_of_collaboration:"NULL", tag:"Organization-Product"}),
(Organization_Event:thing {title:"Organization-Event", description:"NULL", end_date:0 , start_date:0  ,relation_type:0 ,ID:0, uri:0,
type_of_collaboration:"NULL", tag:"Organization-Event"}),
(Person:thing {title:"Person" ,address:0, activeYears:0, gender:"NULL" , award:0, birthDate:0, deathDate:0, email:"NULL",givenName:"NULL" ,
familyName:"NULL", nationality:"NULL", homepage:"NULL", other_activity:0 , speciality:0 ,uri:0,  telephone:0 , ID:0, tag:"Person"}),
(Person_Product:thing {title:"Person-Product", description:"NULL", end_date:0 , start_date:0 ,relation_type:0  , type_of_collaboration:"NULL",
ID:0, uri:0 , tag:"Organization"}),
(Person_Event:thing {title: "Person-Event" ,description:"NULL" , end_date:0 ,start_date:0 ,relation_type:0 ,ID:0, uri:0 ,
type_of_collaboration:"NULL", tag:"Person-Event"}),
(Product:thing {title:"Product", brand:"NULL" ,category:"NULL" ,description:"NULL" , is_accessible_for_free:"NULL", language:"NULL" ,material:"NULL", 
modification_date:0, p_type:0, productID:0, product_name:"NULL", production_date:0, release_date:0,award:0, uri:0, subject:"NULL", ID:0, tag:"Product"}),
(Place:thing {title:"Place", address:0, area_code:0 , area_name:"NULL", city_name:"NULL", coordinates:0 , historical_map:0 ,province_name:"NULL" ,
uri:0, ID:0 , tag:"Place"}),
(Video_type:thing {title:"Video_type"})

//SubClass

create (Website:Cyberspace:thing {title:"Website", affiliation:0, uri:0, ID:0, tag:"Website"})
create (Weblog:Cyberspace:thing {title:"Weblog", uri:0, ID:0, writer:"NULL", tag:"Weblog"})
create (SocialNetwork:Cyberspace:thing {title:"SocialNetwork", account_type:"NULL", uri:0, ID:0, tag:"SocialNetwork"})
create (Instagram:SocialNetwork:Cyberspace:thing {title:"Instagram", uri:0, ID:0, tag:"Instagram" })
create (Telegram:SocialNetwork:Cyberspace:thing {title:"Telegram", uri:0, ID:0, tag:"Telegram"})
create (twitter:SocialNetwork:Cyberspace:thing {title:"twitter", uri:0 , ID:0, tag:"twitter"})

create (Art:Product:thing {title:"Art", tag:"Art", uri:0, ID:0})
create (Cultural:Product:thing {title:"Cultural", source:"NULL", tag:"Cultural", uri:0, ID:0})
create (Media:Product:thing {title:"Media", tag:"Media", uri:0, ID:0})
create (Scientific_Research:Product:thing {title:"Scientific-Research",DOI:0,content:"NULL",edition:0, ID:0,
number_of_pages:0,reference:"NULL",status:"NULL",subject:"NULL",tag:"Scientific_Research",text:"NULL",uri:0,version:0})

create (Thesis:Scientific_Research:Product:thing {title:"Thesis", English_abstract:0,English_title:"NULL",abstract:0,defense_date:0,field:"NULL" ,keywords:"NULL",
student_name:"NULL", tag:"Thesis", thesis_degree:"NULL", university:"NULL", uri:0})
create (Article:Scientific_Research:Product:thing {title:"Article", English_abstract:0, English_title:"NULL",abstract:0, accept_date:0,citation:0 , field:"NULL",
keywords:"NULL",  tag:"Article", university:"NULL", uri:0})
create (research:Scientific_Research:Product:thing {title:"research",English_title:"NULL", abstract:0, budget:0, field:"NULL" ,keywords:"NULL",
object:"NULL" ,tag:"research" })
create (Book:Scientific_Research:Product:thing {title:"Book",English_title:"NULL", ISBN:0, chapter:0 , first_publication_date:0, genre:"NULL" , keywords:"NULL",
last_publication_date:0, number_of_volumes:0 , tag:"Book"})
create (Manuscript:Scientific_Research:Product:thing {title:"Manuscript", English_title:"NULL", librarys_name:"NULL", line_type:"NULL", place_of_production:"NULL",
tag:"Manuscript", unique_ID:0})

create (Multimedia:Media:Product:thing {title:"Multimedia", content_size:0,content_type:"NULL", genre:"NULL" , tag:"Multimedia", uri:0 })
create (Notices:Media:Product:thing {title:"Notices" ,author:"NULL", tag:"Notices", uri:0})
create (News:Notices:Media:Product:thing {title:"News", publication_date:0, tag:"News", uri:0})
create (Report:Notices:Media:Product:thing {title:"Report",  publication_date:0, tag:"Report",uri:0 })
create (Note:Notices:Media:Product:thing {title:"Note", scope_note:"NULL", tag:"Note", uri:0})
create (Conversation:Notices:Media:Product:thing {title:"Conversation", tag:"Conversation", uri:0})
create (Audio:Multimedia:Media:Product:thing {title:"Audio",tag:"Audio", uri:0 })
create (Image:Multimedia:Media:Product:thing {title:"Image", tag:"Image", uri:0})
create (video:Multimedia:Media:Product:thing {title:"video", tag:"video" , uri:0})

create (text:Cultural:Product:thing {title:"text", tag:"text", uri:0})
create (Poem:Cultural:Product:thing {title:"Poem", age_range:0, centrality:0, tag:"Poem", uri:0 , major_type:0 , miner_type:0})
create (Quran:text:Cultural:Product:thing {title:"Quran", tag:"Quran", uri:0, translated_text:"NULL"})

create (Handicraft:Art:Product:thing {title:"Handicraft",  uri:0, tag:"Handicraft", ID:0})
create (ImageArt:Art:Product:thing {tiltle:"ImageArt",  uri:0, tag:"ImageArt", ID:0})
create (Music:Art:Product:thing {tiltle:"Music", duration:0,content_size:0, uri:0, genre:"NULL" ,tag:"Music", ID:0})
create (PerformingArt:Art:Product:thing {tiltle:"PerformingArt", performance_date:0, miner_type:0, major_type:0 ,uri:0, tag:"PerformingArt" , status:0, ID:0})
create (VisualArt:Art:Product:thing {tiltle:"VisualArt",  uri:0, tag:"VisualArt", ID:0})
create (Screenplay:ImageArt:Art:Product:thing {tiltle:"Screenplay" ,duration:0,  uri:0, tag:"Screenplay", ID:0})
create (Video:ImageArt:Art:Product:thing {tiltle:"Video", video_quality:0,  major_type:0, miner_type:0,  genre:"NULL", duration:0, ID:0,
content_size:0, uri:0, tag:"Video" ,caption:"NULL"})


//Relations

create (Event)-[:has_Participant] ->(Organization_Event)
create (Image)-[:has_imagetype] -> (Image_type)
create (Event)-[:has_location] -> (Place)
create (Organization)-[:has_member] ->(Person)
create (Product)-[:has_producer] ->(Person_Product)
create (Person)-[:has_product]->(Person_Product)
create (Organization)-[:has_product]->(Person_Product)
create (video)-[:has_videotype]->(Video_type)
create (Person)-[:knows]->(Person)
create (Product)-[:location_created]->(Place)
create (Organization)-[:participate]->(Person_Event)
create (Organization)-[:participate]->(Organization_Event)
create (Person)-[:participate]->(Person_Event)
create (Person)-[:participate]->(Organization_Event)
create (Organization)-[:performs]->(Person_Event)
create (Organization)-[:performs]->(Organization_Event)
create (Person)-[:performs]->(Person_Event)
create (Person)-[:performs]->(Organization_Event)
create (Event)-[:presents]->(Product)
create (Product)-[:related_to]->(Event)
create (Event)-[:top_event]->(Event)
create (Event)-[:has_Participant] ->(Person_Event)
create (Product)-[:has_producer] ->(Organization_Product)
create (Organization)-[:has_product]->(Organization_Product)


//Individuals 

create (E1:Event {title:"انتخاب کتاب سال رضوی"})
create (E2:Event {title:"نمایشگاه پوستر دانشجویی"})
create (E3:Event {title:"همایش نقش زیارت در کاهش آسیب اجتماعی"})
create (E4:Event {title:"جشنواره دانشجویی دانشگاه علوم پزشکی"})
create (E5:Event {title:"تاتر تک بازیگر"})
create (E6:Event {title:"مسابقه سیره و معارف رضوی"})
create (E7:Event {title:"همایش جاده ولایت"})
create (E8:Event {title:"نمایشگاه پوستر دانشجویی"})
create (E9:Event {title:"همایش اقتصاد خانواده در فرهنگ رضوی"})
create (E10:Event {title:"همایش ایثار و شهادت"})
create (E11:Event {title:"همایش سیره  معارف رضوی"})
create (E12:Event {title:"یادمان شهری رضوی"})
create (E_10:Event {title:"جشنواره دهم"})
create (film:Video_type)
create (Img_1:Image {title:"عکس شماره 1", p_type:"پوستر"})
create (Img_2:Image {title:"عکس شماره 2", p_type:"پوستر"})
create (P1:Place {city_name:"مشهد", province_name:"خراسان رضوی"})
create (P2:Place {city_name:"سبزوار", province_name:"خراسان رضوی"})
create (painting:Image_type)
create (photo:Image_type)
create (poster:Image_type)
create (Per_1:Person  {familyName:"سلطانی" , givenName:"محمود"})
create (Per_2:Person  {familyName:"سعیدی" , givenName:"رضا"})
create (Per_3:Person  {familyName:"کاهانی" , givenName:"محسن"})
create (Per_Event_1:Person_Event {relation_type:"شرکت کننده"})
create (Per_Event_2:Person_Event {relation_type:"داور"})
create (Per_Pro_1:Person_Product)
create (Per_Pro_2:Person_Product)
create (Vid_1:video {title:"مراسم اختتامیه"})
create (trailer:video)
create (shortfilm:video)
create (rawvideo:video)

//relationships

create (E1)-[:has_location]->(P1)
create (E1)-[:has_Participant]->(Per_Event_1)
create (E1)-[:has_Participant]->(Per_Event_2)
create (E1)-[:has_location]->(P1)
create (E1)-[:top_event]->(E_10)
create (E2)-[:top_event]->(E_10)
create (E3)-[:top_event]->(E_10)
create (E4)-[:top_event]->(E_10)
create (E5)-[:top_event]->(E_10)
create (E6)-[:top_event]->(E_10)
create (E7)-[:top_event]->(E_10)
create (E8)-[:top_event]->(E_10)
create (E9)-[:top_event]->(E_10)
create (E10)-[:top_event]->(E_10)
create (E11)-[:top_event]->(E_10)
create (E12)-[:top_event]->(E_10)

create (Img_1)-[:has_imagetype]->(photo)
create (Img_1)-[:has_producer]->(Per_Pro_1)
create (Img_1)-[:related_to]->(E2)
create (Img_2)-[:has_producer]->(Per_2)
create (Img_2)-[:related_to]->(E2)

create (Per_1)-[:has_product]->(Per_Pro_1)
create (Per_2)-[:participate]->(Per_Event_1)
create (Per_3)-[:participate]->(Per_Event_2)

create (Vid_1)-[:has_videotype]->(rawvideo)
create (Vid_1)-[:related_to]->(E1)

//Match (e:Event), (o:Organization_Event) CREATE (e)-[h:has_Participant]->(o) RETURN e,h,o


MATCH (e:Event), (o:Organization_Event)
WHERE e.title = 'Event' AND o.title = 'Organization_Event'
CREATE (e)-[:has_Participant]->(o)

MATCH (i:Image), (t:Image_type)
WHERE i.title = 'Image' AND t.title = 'Image_type'
CREATE (i)-[:has_imagetype]->(t)

MATCH (e:Event), (p:Place)
WHERE e.title = 'Event' AND p.title = 'Place'
CREATE (e)-[:has_location]->(p)

MATCH (organization:Organization), (person:Person)
CREATE (organization)-[:has_member]->(person)

MATCH (n:thing {title:"Cyberspace"})
MERGE (Event:thing { title:"Event",duration:0 ,e_type:0 ,end_date:0 , eventStatus:0 ,  is_accessible_for_free:"NULL" , language:"NULL",
number_of_people_attending:0, previous_start_date:0 , start_date:0, subject:"NULL" ,uri:0, ID:0, tag:"Event"})
CREATE (Event)-[:has_location]->(n)
