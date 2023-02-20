create (E1:Event {title:"انتخاب کتاب سال رضوی", Ev:1})
create (E2:Event {title:"نمایشگاه پوستر دانشجویی",Ev:2 })
create (E3:Event {title:"همایش نقش زیارت در کاهش آسیب اجتماعی",Ev:3})
create (E4:Event {title:"جشنواره دانشجویی دانشگاه علوم پزشکی", Ev:4})
create (E5:Event {title:"تاتر تک بازیگر", Ev:5})
create (E6:Event {title:"مسابقه سیره و معارف رضوی", Ev:6})
create (E7:Event {title:"همایش جاده ولایت", Ev:7})
create (E8:Event {title:"نمایشگاه پوستر دانشجویی", Ev:8})
create (E9:Event {title:"همایش اقتصاد خانواده در فرهنگ رضوی", Ev:9})
create (E10:Event {title:"همایش ایثار و شهادت", Ev:10})
create (E11:Event {title:"همایش سیره  معارف رضوی", Ev:11})
create (E12:Event {title:"یادمان شهری رضوی", Ev:12})
create (E_10:Event {title:"جشنواره دهم", Ev:13})

create (Img_1:Image {title:"عکس شماره 1", p_type:"پوستر"})
create (Img_2:Image {title:"عکس شماره 2", p_type:"پوستر"})

create (P1:Place {city_name:"مشهد", province_name:"خراسان رضوی"})
create (P2:Place {city_name:"سبزوار", province_name:"خراسان رضوی"})

create (Vid_1:video {title:"مراسم اختتامیه"})

create (Per_Event_1:Person_Event {relation_type:"شرکت کننده"})
create (Per_Event_2:Person_Event {relation_type:"داور"})

create (Per_1:Person  {title:"محمود سلطانی" ,familyName:"سلطانی" , givenName:"محمود"})
create (Per_2:Person  {title:"رضا سعیدی" ,familyName:"سعیدی" , givenName:"رضا"})
create (Per_3:Person  {title:"محسن‌ کاهانی" ,familyName:"کاهانی" , givenName:"محسن"})

create (org:Organization {title:"بنیاد امام رضا"})
create (mon:Monasebat {title:"میلاد حضرت امام علی بن موسی الرضا(علیه السلام)"})

create (pro1:Product {title:"نمایش"})
create (pro2:Product {title:"موسیقی"})
create (pro3:Product {title:"مقاله"})
create (pro4:Product {title:"صنایع دستی"})
create (pro5:Product {title:"ویدیو"})
create (pro6:Product {title:"داستان"})

create (Sc1:Screenplay {title:"نمایشنامه بـه روایت خورشیـد"})
create (Sc2:Screenplay {title:"نمایشنامه چـراغ گمشـدگان"})
create (Sc3:Screenplay {title:"نمایشنامه دل لـرزه"})
create (Sc4:Screenplay {title:"نمایشنامه روز بـر می‌آیـد"})
create (Sc5:Screenplay {title:"نمایشنامه ســردار"})
create (Sc6:Screenplay {title:"نمایشنامه سفر به اقلیـم آفتاب"})
create (Sc7:Screenplay {title:"نمایشنامه شصت دقیقه مانـده به وقت بارانی"})

CREATE (org)-[:participate]->(E1)
CREATE (org)-[:participate]->(E2)
CREATE (org)-[:participate]->(E3)
CREATE (org)-[:participate]->(E4)
CREATE (org)-[:participate]->(E5)
CREATE (org)-[:participate]->(E6)
CREATE (org)-[:participate]->(E7)
CREATE (org)-[:participate]->(E8)
CREATE (org)-[:participate]->(E9)
CREATE (org)-[:participate]->(E10)
CREATE (org)-[:participate]->(E11)
CREATE (org)-[:participate]->(E12)
CREATE (org)-[:participate]->(E13)


create (E1)-[:has_location]->(P1)
create (E1)-[:has_Participant]->(Per_Event_1)
create (E1)-[:has_Participant]->(Per_Event_2)
create (E1)-[:top_event]->(E_10)
create (E1)-[:has_screenplay]->(Sc1)
create (E1)-[:has_product]->(pro1)
create (E1)-[:has_product]->(pro2)
create (E1)-[:has_product]->(pro3)
create (pro)-[:is]->(Sc1)
create (E1)-[:beMonasebat]->(mon)
create (E1)-[:has_screenplay]->(Sc7)

create (E2)-[:has_location]->(P2)
create (E2)-[:has_Participant]->(Per_Event_1)
create (E2)-[:has_product]->(pro1)
create (E2)-[:has_product]->(pro5)
create (E2)-[:has_product]->(pro4)
create (E2)-[:has_screenplay]->(Sc2)
create (E2)-[:has_screenplay]->(Sc3)
create (E2)-[:beMonasebat]->(mon)

create (E3)-[:has_location]->(P1)
create (E3)-[:has_Participant]->(Per_Event_2)
create (E3)-[:has_product]->(pro1)
create (E3)-[:has_product]->(pro6)
create (E3)-[:has_product]->(pro5)
create (E3)-[:has_screenplay]->(Sc4)
create (E3)-[:has_screenplay]->(Sc5)
create (E3)-[:beMonasebat]->(mon)

create (E4)-[:has_location]->(P1)
create (E4)-[:has_Participant]->(Per_Event_1)
create (E4)-[:has_product]->(pro1)
create (E4)-[:has_product]->(pro4)
create (E4)-[:has_product]->(pro2)
create (E4)-[:has_screenplay]->(Sc6)
create (E4)-[:beMonasebat]->(mon)

create (E5)-[:has_location]->(P1)
create (E5)-[:has_Participant]->(Per_Event_1)
create (E5)-[:has_product]->(pro1)
create (E5)-[:has_screenplay]->(Sc7)
create (E5)-[:beMonasebat]->(mon)

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

//query
MATCH (e1:Event {Ev:1})-[r]-(n)
RETURN e1, r, n








