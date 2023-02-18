CREATE (Cyberspace:thing {title: "Cyberspace"})
CREATE (Weblog:Cyberspace {title: "Weblog", url:"NULL", description:"NULL", person_name:"NULL"})
CREATE (Website:Cyberspace {title: "Website", url:"NULL", description:"NULL", affiliation:0})
CREATE (SocialNetwork:Cyberspace {title: "SocialNetwork", account_type:"NULL", description:"NULL"})
CREATE (Weblog)-[:is_a]->(Cyberspace)
CREATE (Website)-[:is_a]->(Cyberspace)
CREATE (SocialNetwork)-[:is_a]->(Cyberspace)

CREATE (Event:thing { title:"Event",name:"event",duration:0 ,end_date:0 , eventStatus:0 ,  is_accessible_for_free:"NULL" , language:"NULL",
number_of_people_attending:0, previous_start_date:0 , start_date:0, subject:"NULL"})
CREATE (Organization:thing {title:"Organization", name:"Organization",address:0, activity_type:0, award:0, email:"NULL", fax_number:0 ,telephone:0})
CREATE (Product:thing {title:"Product",name:"Product", category:"NULL", brand:"NULL" ,description:"NULL" , is_accessible_for_free:"NULL", language:"NULL",
material:"NULL",modification_date:0, p_type:0, productID:0, product_name:"NULL",production_date:0, release_date:0,award:0, uri:0, subject:"NULL", ID:0,tag:"Product"})
CREATE (Place:thing {title:"Place",city_name:"NULL",province_name:"NULL" , address:0, area_code:0 , area_name:"NULL",  coordinates:0 , historical_map:0})
CREATE (Person:thing {title:"Person", givenName:"NULL", familyName:"NULL", activeYears:0, award:0, birthDate:0,deathDate:0, 
address:0, gender:"NULL", email:"NULL", other_activity:0, homepage:"NULL", publication:"NULL", telephone:0, nationality:"NULL", speciality:0}) 
CREATE (Person_Product:thing {title:"Person-Product", description:"NULL", end_date:0 , start_date:0 ,relation_type:0 , type_of_collaboration:"NULL",ID:0})

WITH Person , Event, Organization, Product, Place , Person_Product
CREATE (Individuals:Person {title:"Individuals", name:"Individuals"})-[:is_a]->(Person)
CREATE (Legal:Person {title:"Legal" , name:"Legal"})-[:is_a]->(Person)
CREATE (Artist:Individuals {title:"Artist" , name:"Artist" })
CREATE (Author:Individuals {title:"Author",name:"Author" })
CREATE (Researcher:Individuals {title:"Researcher", name:"Researcher"})
CREATE (Servant:Individuals {title:"Servant", name:"Servant"})
CREATE (Institution:Legal {title:"Institution"})
CREATE (Scientific_Center:Legal {title:"Scientific_Center"})
CREATE (Research_Center:Legal {title:"Research_Center"})
CREATE (Art_Center:Legal {title:"Art_Center"})
CREATE (NGO:Legal {title:"NGO"})
CREATE (Artist)-[:is_a]->(Individuals)
CREATE (Author)-[:is_a]->(Individuals)
CREATE (Researcher)-[:is_a]->(Individuals)
CREATE (Servant)-[:is_a]->(Individuals)
CREATE (Institution)-[:is_a]->(Legal)
CREATE (Scientific_Center)-[:is_a]->(Legal)
CREATE (Research_Center)-[:is_a]->(Legal)
CREATE (Art_Center)-[:is_a]->(Legal)
CREATE (NGO)-[:is_a]->(Legal)
CREATE (Person)-[:knows]->(Person)
CREATE (Person)-[:organizes]->(Event)
CREATE (Person)-[:acts]->(Event)
CREATE (Person)-[:participates]->(Event)
CREATE (Person)-[:performes]->(Event)
CREATE (Person)-[:directs]->(Event)
CREATE (Person)-[:affiliates]->(Organization)
CREATE (Person)-[:is_a_member_of]->(Organization)
CREATE (Organization)-[:funds]->(Event)
CREATE (Organization)-[:organizes]->(Event)
CREATE (Organization)-[:performes]->(Event)
CREATE (Organization)-[:participates]->(Event)
CREATE (Event)-[:hasLocation]->(Place)
CREATE (Event)-[:presents]->(Product)
CREATE (Product)-[:locationCreated]->(Place)
CREATE (Person_Product)-[:isProduced]->(Product)
CREATE (Product)-[:isRelatedTo]->(Product)
CREATE (Event)-[:previousEvent_superEvent_subEvent]->(Event)

WITH Product
CREATE (Cultural:Product {title:"Cultural"})-[:is_a]->(Product)
CREATE (Poem:Cultural {title:"Poem", age_range:0, centrality:0, tag:"Poem", uri:0,era:0 , major_type:0 , miner_type:0,format:"NULL", reward:"NULL",
source:0, situation:0, language:"NULL"})-[:is_a]->(Cultural)
CREATE (Prose:Cultural {title:"Prose", language:"NULL", type:"NULL", subject:"NULL"})-[:is_a]->(Cultural)
CREATE (Quran:Prose {title:"Quran",translated_text:"NULL", shomareayat:0, soore:0})-[:is_a]->(Prose)
CREATE (Quote:Prose {title:"Quote", text:"NULL", source:"NULL"})-[:is_a]->(Prose)
CREATE (Story:Prose {title:"Story",source:"NULL", status:0, contentPage:0, reward:0})-[:is_a]->(Prose)
CREATE (Hadith:Prose {title:"Hadith", text:"NULL",source:"NULL"})-[:is_a]->(Prose)
CREATE (Letter:Prose {title:"Letter", eventName:"NULL", status:0, source:"NULL", reward:0})-[:is_a]->(Prose)
CREATE (ResearchProduct:Product:thing {title:"ResearchProduct", language:"NULL", number_of_pages:0, content:"NULL", doi:0, edition:0,
title:"NULL", version:0})-[:is_a]->(Product)
CREATE (Thesis:ResearchProduct {title:"Thesis", abstract:0, keywords:0, thesis_degree:"NULL",defense_date:0 ,Field:"NULL", Status:0 ,
university:"NULL", student_name:"NULL" ,type:"NULL", EnglishAbstract:"NULL", EnglishTitle:"NULL"})-[:is_a]->(ResearchProduct)
CREATE (Article:ResearchProduct {title:"Article", citation:0, abstract:0, keywords:"NULL", type:"NULL" ,Status:"NULL" ,university:"NULL",
English_title:"NULL", EnglishAbstract:"NULL", AcceptDate:0})-[:is_a]->(ResearchProduct)
CREATE (Manuscript:ResearchProduct {title:"Manuscript", type:"NULL" , citation:0 ,English_title:"NULL", Status:0 ,unique_ID:0 ,StorageLibrary:0 ,
StorageCity:"NULL", StorageCountry:"NULL", line_type:"NULL", place_of_production:"NULL", PageCount:0 ,size:0, ProduceLocation:"NULL"})-[:is_a]->(ResearchProduct)
CREATE (Book:ResearchProduct {title:"Book", ISBN:0, first_publication_date:0 ,citation:0, genre:"NULL",Reference:0, type:"NULL",language:"NULL",
chapter:0 ,abstract:0 , keywords:"NULL", last_publication_date:0})-[:is_a]->(ResearchProduct)
CREATE (research:ResearchProduct {title:"research",budget_total:0, objective:0, abstract:0, start_date:0, Status:"NULL", number_of_volumes:0,
keywords:"NULL",type:"research", area:"NULL"})-[:is_a]->(ResearchProduct)

WITH Product
CREATE (Art:Product {title:"Art", name:"Art"})-[:is_a]->(Product)
CREATE (Media:Product:thing {title:"Media", tag:"Media", uri:0, ID:0})-[:is_a]->(Product)
CREATE (PerformingArt:Art:Product {tiltle:"PerformingArt", miner_type:0, major_type:0 , language:"NULL", situation:0, year:0,
reward:0, subject:"NULL"})-[:is_a]->(Art)
CREATE (VisualArt:Art:Product {tiltle:"VisualArt",ReferenceLink:"NULL",Reference:"NULL",situation:0, year:0, reward:0, area:"NULL",
subject:"NULL", miner_type:0, major_type:0})-[:is_a]->(Art)
CREATE (ImageArt:Art:Product {tiltle:"ImageArt"})-[:is_a]->(Art)
CREATE (Music:Art:Product {tiltle:"Music",language:"NULL",year:0, reward:0, area:"NULL",subject:"NULL"})-[:is_a]->(Art)
CREATE (Handicraft:Art:Product {title:"Handicraft" ,situation:0, year:0, type:"NULL" ,reward:0,subject:"NULL", area:"NULL"})-[:is_a]->(Art)
CREATE (Screenplay:ImageArt:Art {tiltle:"Screenplay",situation:0, year:0, type:"NULL" ,reward:0,subject:"NULL", area:"NULL" ,time:0, 
producerslastname:"NULL",producersname:"NUL", directorslastname:"NULL", directorsname:"NULL", miner_type:0, major_type:0 })-[:is_a]->(ImageArt)
CREATE (Video:ImageArt:Art {tiltle:"Video", name:"Video" , video_quality:0, major_type:0, miner_type:0,  genre:"NULL", duration:0,content_size:0,
caption:"NULL"})-[:is_a]->(ImageArt)
WITH Media
CREATE (Multimedia:Media:Product:thing {title:"Multimedia", content_size:0,content_type:"NULL", genre:"NULL" , tag:"Multimedia", uri:0 })-[:is_a]->(Media)
CREATE (Notices:Media:Product:thing {title:"Notices" ,author:"NULL", tag:"Notices", uri:0})-[:is_a]->(Media)
CREATE (News:Notices:Media:Product:thing {title:"News", publication_date:0, tag:"News", uri:0})-[:is_a]->(Notices)
CREATE (Report:Notices:Media:Product:thing {title:"Report",  publication_date:0, tag:"Report",uri:0 })-[:is_a]->(Notices)
CREATE (Note:Notices:Media:Product:thing {title:"Note", scope_note:"NULL", tag:"Note", uri:0})-[:is_a]->(Notices)
CREATE (Conversation:Notices:Media:Product:thing {title:"Conversation", tag:"Conversation", uri:0})-[:is_a]->(Notices)

CREATE (Telecast:Multimedia:Media {title:"Telecast",status:0, type:"NULL", date:0, subject:"NULL",guest_rank:0,contentType:0})-[:is_a]->(Multimedia)
CREATE (Image:Multimedia:Media {title:"Image", photographer:"NULL",type:"NULL", date:0,subject:"NULL",status:0})-[:is_a]->(Multimedia)
CREATE (Podcast:Multimedia:Media {title:"Podcast" , category:"NULL",status:0,contentType:0,subject:"NULL" })-[:is_a]->(Multimedia)
CREATE (Music_Video:Multimedia:Media {title:"Music_Video", duration:0,size:0, category:"NULL",date:0, contentType:0})-[:is_a]->(Multimedia)
CREATE (Audio:Multimedia:Media{title:"Audio", category:"NULL",status:0,contentType:0,subject:"NULL"})-[:is_a]->(Multimedia)
CREATE (Photo:Multimedia:Media{title:"Photo", type:"NULL", date:0, subject:"NULL",status:0})-[:is_a]->(Multimedia)
CREATE (Motion_Graphics:Multimedia:Medi{title:"Motion_Graphics"})-[:is_a]->(Multimedia)
CREATE (Film:Multimedia:Media{title:"Film", duration:0,size:0,date:0, contentType:0})-[:is_a]->(Multimedia)
CREATE (Radio_program:Multimedia:Media{title:"Radio_program", status:0, type:"NULL", date:0, subject:"NULL", guest_rank:0,contentType:0})-[:is_a]->(Multimedia)
CREATE (Animation:Multimedia:Media{title:"Animation"})-[:is_a]->(Multimedia)

