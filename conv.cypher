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
create (Website:Cyberspace:thing {title:"Website", affiliation:0, uri:0, ID:0, tag:"Website"})
create (Weblog:Cyberspace:thing {title:"Weblog", uri:0, ID:0, writer:"NULL", tag:"Weblog"})
create (SocialNetwork:Cyberspace:thing {title:"SocialNetwork", account_type:"NULL", uri:0, ID:0, tag:"SocialNetwork"})
create (Instagram:SocialNetwork:Cyberspace:thing {title:"Instagram", uri:0, ID:0, tag:"Instagram" })
create (Telegram:SocialNetwork:Cyberspace:thing {title:"Telegram", uri:0, ID:0, tag:"Telegram"})
create (twitter:SocialNetwork:Cyberspace:thing {title:"twitter", uri:0 , ID:0, tag:"twitter"})

create (Art:Product:thing {title:"Art", tag:"Art", uri:0})
create (Cultural:Product:thing {title:"Cultural", source:"NULL", tag:"Cultural", uri:0})
create (Media:Product:thing {title:"Media". tag:"Media", uri:0})
create (Scientific_Research:Product:thing {title:"Scientific-Research",DOI:0,content:"NULL",edition:0, 
number_of_pages:0,reference:"NULL",status:"NULL",subject:"NULL",tag:"Scientific_Research",text:"NULL",uri:0,version:0})

create (Thesis:Scientific_Research:Product:thing {title:"Thesis", English_abstract:0,English_title:"NULL",abstract:0,defense_date:0,field:"NULL" ,keywords:"NULL",
student_name:"NULL", tag:"Thesis", thesis_degree:"NULL", university:"NULL", uri:0})
create (Article:Scientific_Research:Product:thing {title:"Article", English_abstract:0, English_title:"NULL",abstract:0, accept_date:0,citation:0 , field:"NULL",
keywords:"NULL",  tag:"Article", university:"NULL", uri:0})
create (research:Scientific_Research:Product:thing {title:"research",English_title:"NULL", abstract:0, budget:0, field:"NULL" ,keywords:"NULL",
object:"NULL" , tag:"research" })
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

create (Handicraft:Art:Product:thing {title:"Handicraft",  uri:0, tag:"Handicraft"})
create (ImageArt:Art:Product:thing {tiltle:"ImageArt",  uri:0, tag:"ImageArt"})
create (Music:Art:Product:thing {tiltle:"Music", duration:0,content_size:0, uri:0, genre:"NULL" ,tag:"Music"})
create (PerformingArt:Art:Product:thing {tiltle:"PerformingArt", performance_date:0, miner_type:0, major_type:0 ,uri:0, tag:"PerformingArt" , status:0})
create (VisualArt:Art:Product:thing {tiltle:"VisualArt",  uri:0, tag:"VisualArt"})
create (Screenplay:ImageArt:Art:Product:thing {tiltle:"Screenplay" ,duration:0,  uri:0, tag:"Screenplay"})
create (Video:ImageArt:Art:Product:thing {tiltle:"Video", video_quality:0,  major_type:0, miner_type:0,  genre:"NULL", duration:0,
content_size:0, uri:0, tag:"Video" ,caption:"NULL"})


//Relations

create 
(Event)-[:has_Participant] ->(Organization_Event),
(Image)-[:has_imagetype] -> (Image_type),
(Event)-[:has_location] -> (Place),
(Organization)-[:has_member] ->(Person),
(Product)-[:has_producer] ->(Person_Product),
(Person)-[:has_product]->(Person_Product),
(Organization)-[:has_product]->(Person_Product),
(video)-[:has_videotype]->(Video_type),
(Person)-[:knows]->(Person),
(Product)-[:location_created]->(Place),
(Organization)-[:participate]->(Person_Event)
(Organization)-[:participate]->(Organization_Event),
(Person)-[:participate]->(Person_Event),
(Person)-[:participate]->(Organization_Event),
(Organization)-[:performs]->(Person_Event),
(Organization)-[:performs]->(Organization_Event),
(Person)-[:performs]->(Person_Event),
(Person)-[:performs]->(Organization_Event),
(Event)-[:presents]->(Product),
(Product)-[:related_to]->(Event),
(Event)-[:top_event]->(Event),
(Event)-[:has_Participant] ->(Person_Event),
(Product)-[:has_producer] ->(Organization_Product),
(Organization)-[:has_product]->(Organization_Product)

