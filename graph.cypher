CREATE (Cyberspace:thing {title: "Cyberspace"})
CREATE (Weblog:Cyberspace {title: "Weblog", url:"NULL", description:"NULL", person_name:"NULL"})
CREATE (Website:Cyberspace {title: "Website", url:"NULL", description:"NULL", affiliation:0})
CREATE (SocialNetwork:Cyberspace {title: "SocialNetwork", account_type:"NULL", description:"NULL"})

CREATE (Weblog)-[:is_a]->(Cyberspace)
CREATE (Website)-[:is_a]->(Cyberspace)
CREATE (SocialNetwork)-[:is_a]->(Cyberspace)


CREATE (Person:thing {title:"Person", givenName:"NULL", familyName:"NULL", activeYears:0, award:0, birthDate:0,deathDate:0, 
address:0, gender:"NULL", email:"NULL", other_activity:0, homepage:"NULL", publication:"NULL", telephone:0, nationality:"NULL", speciality:0}) 
WITH Person
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
WITH Individuals, Legal, Artist, Author, Researcher, Servant, Institution, Scientific_Center, Research_Center, Art_Center, NGO
CREATE (Artist)-[:is_a]->(Individuals)
CREATE (Author)-[:is_a]->(Individuals)
CREATE (Researcher)-[:is_a]->(Individuals)
CREATE (Servant)-[:is_a]->(Individuals)
CREATE (Institution)-[:is_a]->(Legal)
CREATE (Scientific_Center)-[:is_a]->(Legal)
CREATE (Research_Center)-[:is_a]->(Legal)
CREATE (Art_Center)-[:is_a]->(Legal)
CREATE (NGO)-[:is_a]->(Legal)
