CREATE (Cyberspace:thing {title: "Cyberspace"})
CREATE (Weblog:Cyberspace {title: "Weblog", url:"NULL", description:"NULL", person_name:"NULL"})
CREATE (Website:Cyberspace {title: "Website", url:"NULL", description:"NULL", affiliation:0})
CREATE (SocialNetwork:Cyberspace {title: "SocialNetwork", account_type:"NULL", description:"NULL"})

CREATE (Weblog)-[:is_a]->(Cyberspace)
CREATE (Website)-[:is_a]->(Cyberspace)
CREATE (SocialNetwork)-[:is_a]->(Cyberspace)
