#delimit ;

   infix
      year     1 - 20
      sex      21 - 40
      race     41 - 60
      res16    61 - 80
      reg16    81 - 100
      born     101 - 120
      rincome  121 - 140
      wkageism 141 - 160
      wkracism 161 - 180
      majorcol 181 - 200
      ballot   201 - 220
      barate   221 - 240
      eftotlt  241 - 260
      sector   261 - 280
      id_      281 - 300
      wrkstat  301 - 320
      hrs2     321 - 340
      wrkslf   341 - 360
      wrkgovt  361 - 380
      indus10  381 - 400
      marital  401 - 420
      age      421 - 440
      educ     441 - 460
      degree   461 - 480
      sei10educ 481 - 500
using GSS.dat;

label variable year     "Gss year for this respondent                       ";
label variable sex      "Respondents sex";
label variable race     "Race of respondent";
label variable res16    "Type of place lived in when 16 yrs old";
label variable reg16    "Region of residence, age 16";
label variable born     "Was r born in this country";
label variable rincome  "Respondents income";
label variable wkageism "R feels discriminated because of age";
label variable wkracism "R feels discriminated because of race";
label variable majorcol "The field of degree r earned";
label variable ballot   "Ballot used for interview";
label variable barate   "Rate of ba degree earning in college respondent attended";
label variable eftotlt  "Total number of students enrolled in college respondent attended";
label variable sector   "Type of college respondent attended";
label variable id_      "Respondent id number";
label variable wrkstat  "Labor force status";
label variable hrs2     "Number of hours usually work a week";
label variable wrkslf   "R self-emp or works for somebody";
label variable wrkgovt  "Govt or private employee";
label variable indus10  "Rs industry code (naics 2007)";
label variable marital  "Marital status";
label variable age      "Age of respondent";
label variable educ     "Highest year of school completed";
label variable degree   "Rs highest degree";
label variable sei10educ "Percentage of some college educ in occ10 based on acs 2010";


label define gsp001x
   2        "Female"
   1        "Male"
;
label define gsp002x
   3        "Other"
   2        "Black"
   1        "White"
   0        "Not applicable"
;
label define gsp003x
   9        "No answer"
   8        "Don't know"
   6        "City gt 250000"
   5        "Big-city suburb"
   4        "50000 to 250000"
   3        "Town lt 50000"
   2        "Farm"
   1        "Country,nonfarm"
   0        "Not applicable"
;
label define gsp004x
   9        "Pacific"
   8        "Mountain"
   7        "W. sou. central"
   6        "E. sou. central"
   5        "South atlantic"
   4        "W. nor. central"
   3        "E. nor. central"
   2        "Middle atlantic"
   1        "New england"
   0        "Foreign"
;
label define gsp005x
   9        "No answer"
   8        "Don't know"
   2        "No"
   1        "Yes"
   0        "Not applicable"
;
label define gsp006x
   99       "No answer"
   98       "Don't know"
   13       "Refused"
   12       "$25000 or more"
   11       "$20000 - 24999"
   10       "$15000 - 19999"
   9        "$10000 - 14999"
   8        "$8000 to 9999"
   7        "$7000 to 7999"
   6        "$6000 to 6999"
   5        "$5000 to 5999"
   4        "$4000 to 4999"
   3        "$3000 to 3999"
   2        "$1000 to 2999"
   1        "Lt $1000"
   0        "Not applicable"
;
label define gsp007x
   9        "No answer"
   8        "Dont know"
   2        "No"
   1        "Yes"
   0        "Not applicable"
;
label define gsp008x
   9        "No answer"
   8        "Dont know"
   2        "No"
   1        "Yes"
   0        "Not applicable"
;
label define gsp009x
   99       "No answer"
   98       "Dk/uncoded"
   80       "Information technology"
   79       "Parks and recreation"
   78       "Textiles/cloth"
   77       "Public relations"
   76       "Gerontology"
   75       "Dance"
   74       "Mechanics/machine trade"
   73       "Urban and regional planning"
   72       "Electronics"
   71       "Administrative science/public administration"
   70       "Criminology/criminal justice"
   69       "Statistics"
   68       "Aviation, aeronatics"
   67       "Tv, film"
   66       "Educational administration"
   65       "Ethnic studies"
   64       "Humanities"
   63       "Fine arts"
   62       "Visual arts/graphic design"
   61       "Human services"
   60       "Social sciences"
   59       "Environment science/studies"
   58       "Food science/nutrition/culinary arts"
   57       "Child development"
   56       "Industrial relations"
   55       "Health"
   54       "Other vocational"
   53       "General sutdies"
   52       "Social work"
   51       "General sciences"
   50       "Other"
   49       "Liberal arts"
   48       "Veterinary medicine"
   47       "Theology"
   46       "Theater arts"
   45       "Special education"
   44       "Socology"
   43       "Political science"
   42       "Psychology"
   41       "Physics"
   40       "Physical education"
   39       "Philosophy"
   38       "Pharmacy"
   37       "Optometry"
   36       "Nursing"
   35       "Music"
   34       "Medicine"
   33       "Mathmatics"
   32       "Marketing"
   31       "Library science"
   30       "Law enforcement"
   29       "Law"
   28       "Journalism"
   27       "Industry & techn"
   26       "Home economics"
   25       "History"
   24       "Geology"
   23       "Geography"
   22       "Forestry"
   21       "Foreign language"
   20       "Finance"
   19       "English"
   18       "Engineering"
   17       "Economics"
   16       "Education"
   15       "Dentistry"
   14       "Computer science"
   13       "Comm. disorders"
   12       "Communications/speech"
   11       "Chemistry"
   9        "Business administration"
   8        "Biology"
   7        "Art"
   6        "Architecture"
   5        "Anthropolgy"
   4        "Allied health"
   3        "Agriculture"
   2        "Advertising"
   1        "Accounting/bookkeeping"
   0        "Not applicable"
;
label define gsp010x
   4        "Ballot d"
   3        "Ballot c"
   2        "Ballot b"
   1        "Ballot a"
   0        "Not applicable"
;
label define gsp011x
   9        "No answer"
   3        "58%+"
   2        "40-57.9%"
   1        "0-39.9%"
   -1       "Not applicable"
;
label define gsp012x
   9        "No answer"
   2        "468+"
   1        "0-467"
   -1       "Not applicable"
;
label define gsp013x
   99       "Sector unknown (not active)"
   9        "Private for-profit, less-than 2-year"
   8        "Private not-for-profit, less-than 2-year"
   7        "Public, less-than 2-year"
   6        "Private for-profit, 2-year"
   5        "Private not-for-profit, 2-year or less"
   4        "Public, 2-year"
   3        "Private for-profit, 4-year or above"
   2        "Private not-for-profit, 4-year or above"
   1        "Public, 4-year or above"
   0        "Administrative unit"
   -1       "Not applicable"
;
label define gsp014x
   9        "No answer"
   8        "Other"
   7        "Keeping house"
   6        "School"
   5        "Retired"
   4        "Unempl, laid off"
   3        "Temp not working"
   2        "Working parttime"
   1        "Working fulltime"
   0        "Not applicable"
;
label define gsp015x
   99       "No answer"
   98       "Don't know"
   -1       "Not applicable"
;
label define gsp016x
   9        "No answer"
   8        "Don't know"
   2        "Someone else"
   1        "Self-employed"
   0        "Not applicable"
;
label define gsp017x
   9        "No answer"
   8        "Don't know"
   2        "Private"
   1        "Government"
   0        "Not applicable"
;
label define gsp018x
   9999     "No answer"
   9997     "Uncodeable"
   9870     "Active duty military personnel, all other"
   9790     "U.s. armed forces/n.s."
   9780     "U.s. coast guard"
   9770     "U.s. marine corps"
   9690     "U.s. navy"
   9680     "U.s. air force"
   9670     "U.s. army"
   9590     "National security and international affairs"
   9570     "Administration of economic programs and space research"
   9490     "Administration of environmental quality and housing programs"
   9480     "Administration of human resource programs"
   9470     "Justice, public order, and safety activities"
   9390     "Other general government and support"
   9380     "Public finance activities"
   9370     "Executive offices and legislative bodies"
   9290     "Private households"
   9190     "Business, professional, political, and similar organizations"
   9180     "Labor unions"
   9170     "Civic, social, advocacy organizations, and grantmaking and giving services"
   9160     "Religious organizations"
   9090     "Other personal services"
   9080     "Funeral homes, and cemeteries and crematories"
   9070     "Drycleaning and laundry services"
   8990     "Nail salons and other personal care services"
   8980     "Beauty salons"
   8970     "Barber shops"
   8890     "Footwear and leather goods repair"
   8880     "Personal and household goods repair and maintenance"
   8870     "Commercial and industrial machinery and equipment repair and maintenance"
   8790     "Electronic and precision equipment repair and maintenance"
   8780     "Car washes"
   8770     "Automotive repair and maintenance"
   8690     "Drinking places, alcoholic beverages"
   8680     " restaurants and other food services"
   8670     "Recreational vehicle parks and camps, and rooming and boarding houses"
   8660     "Traveler accommodation"
   8590     "Other amusement, gambling, and recreation industries"
   8580     "Bowling centers"
   8570     "Museums, art galleries, historical sites, and similar institutions"
   8560     "Independent artists, performing arts, spectator sports, and related industries"
   8470     "Child day care services"
   8390     "Vocational rehabilitation services"
   8380     "Community food and housing, and emergency services"
   8370     "Individual and family services"
   8290     "Residential care facilities, without nursing"
   8270     "Nursing care facilities"
   8190     "Hospitals"
   8180     "Other health care services"
   8170     "Home health care services"
   8090     "Outpatient care centers"
   8080     "Offices of other health practitioners"
   8070     "Offices of optometrists"
   7990     "Offices of chiropractors"
   7980     "Offices of dentists"
   7970     "Offices of physicians"
   7890     "Other schools and instruction, and educational support services"
   7880     "Business, technical, and trade schools and training"
   7870     "Colleges and universities, including junior colleges"
   7860     "Elementary and secondary schools"
   7790     "Waste management and remediation services"
   7780     "Other administrative and other support services"
   7770     "Landscaping services"
   7690     "Services to buildings and dwellings"
   7680     "Investigation and security services"
   7670     "Travel arrangements and reservation services"
   7590     "Business support services"
   7580     "Employment services"
   7570     "Management of companies and enterprises"
   7490     "Other professional, scientific, and technical services"
   7480     "Veterinary services"
   7470     "Advertising and related services"
   7460     "Scientific research and development services"
   7390     "Management, scientific, and technical consulting services"
   7380     "Computer systems design and related services"
   7370     "Specialized design services"
   7290     "Architectural, engineering, and related services"
   7280     "Accounting, tax preparation, bookkeeping, and payroll services"
   7270     "Legal services"
   7190     "Commercial, industrial, and other intangible assets rental and leasing"
   7180     "Other consumer goods rental"
   7170     "Video tape and disk rental"
   7080     "Automotive equipment rental and leasing"
   7070     "Real estate"
   6990     "Insurance carriers and related activities"
   6970     "Securities, commodities, funds, trusts, and other financial investments"
   6890     "Non-depository credit and related activities"
   6880     "Savings institutions, including credit unions"
   6870     "Banking and related activities"
   6780     "Other information services"
   6770     "Libraries and archives"
   6695     "Data processing, hosting, and related services"
   6690     "Other telecommunications services"
   6680     "Wired telecommunications carriers"
   6672     "Internet publishing and broadcasting and web search portals"
   6670     "Radio and television broadcasting and cable subscription programming"
   6590     "Sound recording industries"
   6570     "Motion pictures and video industries"
   6490     "Software publishers"
   6480     "Periodical, book, and directory publishers"
   6470     "Newspaper publishers"
   6390     "Warehousing and storage"
   6380     "Couriers and messengers"
   6370     "Postal service"
   6290     "Services incidental to transportation"
   6280     "Scenic and sightseeing transportation"
   6270     "Pipeline transportation"
   6190     "Taxi and limousine service"
   6180     "Bus service and urban transit"
   6170     "Truck transportation"
   6090     "Water transportation"
   6080     "Rail transportation"
   6070     "Air transportation"
   5790     "Not specified retail trade"
   5690     "Other direct selling establishments"
   5680     "Fuel dealers"
   5670     "Vending machine operators"
   5592     "Mail order houses"
   5591     "Electronic auctions"
   5590     "Electronic shopping"
   5580     "Miscellaneous retail stores"
   5570     "Gift, novelty, and souvenir shops"
   5490     "Used merchandise stores"
   5480     "Office supplies and stationery stores"
   5470     "Retail florists"
   5390     "Miscellaneous general merchandise stores"
   5380     "Department stores and discount stores"
   5370     "Book stores and news dealers"
   5290     "Music stores"
   5280     "Sewing, needlework, and piece goods stores"
   5270     "Sporting goods, camera, and hobby and toy stores"
   5190     "Jewelry, luggage, and leather goods stores"
   5180     "Shoe stores"
   5170     "Clothing stores"
   5090     "Gasoline stations"
   5080     "Health and personal care, except drug, stores"
   5070     "Pharmacies and drug stores"
   4990     "Beer, wine, and liquor stores"
   4980     "Specialty food stores"
   4970     "Grocery stores"
   4890     "Lawn and garden equipment and supplies stores"
   4880     "Hardware stores"
   4870     "Building material and supplies dealers"
   4790     "Radio, tv, and computer stores"
   4780     "Household appliance stores"
   4770     "Furniture and home furnishings stores"
   4690     "Auto parts, accessories, and tire stores"
   4680     "Other motor vehicle dealers"
   4670     "Automobile dealers"
   4590     "Not specified wholesale trade"
   4585     "Wholesale electronic markets, agents and brokers"
   4580     "Miscellaneous nondurable goods, merchant wholesalers"
   4570     "Farm supplies, merchant wholesalers"
   4560     "Alcoholic beverages, merchant wholesalers"
   4490     "Petroleum and petroleum products, merchant wholesalers"
   4480     "Farm product raw materials, merchant wholesalers "
   4470     "Groceries and related products, merchant wholesalers"
   4390     "Apparel, fabrics, and notions, merchant wholesalers"
   4380     "Drugs, sundries, and chemical and allied products, merchant wholesalers"
   4370     "Paper and paper products, merchant wholesalers"
   4290     "Miscellaneous durable goods, merchant wholesalers"
   4280     "Recyclable material, merchant wholesalers"
   4270     "Machinery, equipment, and supplies, merchant wholesalers"
   4260     "Hardware, plumbing and heating equipment, and supplies, merchant wholesalers"
   4190     "Electrical and electronic goods, merchant wholesalers"
   4180     "Metals and minerals, except petroleum, merchant wholesalers"
   4170     "Professional and commercial equipment and supplies, merchant wholesalers"
   4090     "Lumber and other construction materials, merchant wholesalers"
   4080     "Furniture and home furnishing, merchant wholesalers"
   4070     "Motor vehicles, parts and supplies, merchant wholesalers"
   3990     "Not specified manufacturing industries"
   3980     "Miscellaneous manufacturing, n.e.c."
   3970     "Sporting and athletic goods, and doll, toy and game manufacturing"
   3960     "Medical equipment and supplies manufacturing"
   3890     "Furniture and related product manufacturing"
   3870     "Miscellaneous wood products"
   3790     "Prefabricated wood buildings and mobile homes"
   3780     "Veneer, plywood, and engineered wood products"
   3770     "Sawmills and wood preservation"
   3690     "Other transportation equipment manufacturing"
   3680     "Ship and boat building"
   3670     "Railroad rolling stock manufacturing"
   3590     "Aerospace product and parts manufacturing"
   3580     "Aircraft and parts manufacturing"
   3570     "Motor vehicles and motor vehicle equipment manufacturing"
   3490     "Electrical lighting and electrical equipment manufacturing, and other electrical component manufacturing, n.e.c."
   3470     "Household appliance manufacturing"
   3390     "Electronic component and product manufacturing, n.e.c."
   3380     "Navigational, measuring, electromedical, and control instruments manufacturing"
   3370     "Communications, and audio and video equipment manufacturing        "
   3360     "Computer and peripheral equipment manufacturing    "
   3290     "Not specified machinery manufacturing        "
   3190     "Machinery manufacturing, n.e.c.    "
   3180     "Engines, turbines, and power transmission equipment manufacturing      "
   3170     "Metalworking machinery manufacturing   "
   3090     "Commercial and service industry machinery manufacturing"
   3080     "Construction, and mining and oil and gas field machinery manufacturing    "
   3070     "Agricultural implement manufacturing"
   2990     "Not specified metal industries"
   2980     "Miscellaneous fabricated metal products manufacturing"
   2970     "Ordnance"
   2890     "Coating, engraving, heat treating and allied activities"
   2880     "Machine shops; turned product; screw, nut, and bolt manufacturing"
   2870     "Structural metals, and boiler, tank, and shipping container manufacturing"
   2790     "Cutlery and hand tool manufacturing"
   2780     "Metal forgings and stampings"
   2770     "Foundries"
   2690     "Nonferrous metal (except aluminum) production and processing"
   2680     "Aluminum production and processing"
   2670     "Iron and steel mills and steel product manufacturing "
   2590     "Miscellaneous nonmetallic mineral product manufacturing"
   2570     "Cement, concrete, lime, and gypsum product manufacturing"
   2490     "Glass and glass product manufacturing"
   2480     "Structural clay product manufacturing"
   2470     "Pottery, ceramics, and plumbing fixture manufacturing"
   2390     "Rubber product, except tire, manufacturing"
   2380     "Tire manufacturing"
   2370     "Plastics product manufacturing"
   2290     "Industrial and miscellaneous chemicals"
   2280     "Soap, cleaning compound, and cosmetics manufacturing"
   2270     "Paint, coating, and adhesive manufacturing"
   2190     "Pharmaceutical and medicine manufacturing"
   2180     "Agricultural chemical manufacturing"
   2170     "Resin, synthetic rubber and fibers, and filaments manufacturing"
   2090     "Miscellaneous petroleum and coal products"
   2070     "Petroleum refining"
   1990     "Printing and related support activities"
   1890     "Miscellaneous paper and pulp products"
   1880     "Paperboard containers and boxes"
   1870     "Pulp, paper, and paperboard mills"
   1790     "Leather tanning and finishing and other allied products manufacturing"
   1770     "Footwear manufacturing"
   1690     "Apparel accessories and other apparel manufacturing"
   1680     "Cut and sew apparel manufacturing"
   1670     "Knitting fabric mills, and apparel knitting mills"
   1590     "Textile product mills, except carpet and rug"
   1570     "Carpet and rug mills"
   1490     "Textile and fabric finishing and coating mills"
   1480     "Fabric mills, except knitting mills"
   1470     "Fiber, yarn, and thread mills"
   1390     "Tobacco manufacturing"
   1370     "Beverage manufacturing"
   1290     "Not specified food industries"
   1280     "Seafood and other miscellaneous foods, n.e.c."
   1270     "Bakeries, except retail"
   1190     "Retail bakeries"
   1180     "Animal slaughtering and processing"
   1170     "Dairy product manufacturing"
   1090     "Fruit and vegetable preserving and specialty food manufacturing"
   1080     "Sugar and confectionery products"
   1070     "Animal food, grain, and oilseed milling"
   770      "Construction"
   690      "Not specified utilities"
   680      "Sewage treatment facilities"
   670      "Water, steam, air-conditioning, and irrigation systems"
   590      "Electric and gas, and other combinations"
   580      "Natural gas distribution"
   570      "Electric power generation, transmission, and distribution"
   490      "Support activities for mining"
   480      "Not specified type of mining"
   470      "Nonmetallic mineral mining and quarrying"
   390      "Metal ore mining"
   380      "Coal mining"
   370      "Oil and gas extraction"
   290      "Support activities for agriculture and forestry"
   280      "Fishing, hunting, and trapping"
   270      "Logging"
   190      "Forestry, except logging"
   180      "Animal production"
   170      "Crop production"
   0        "Not applicable"
;
label define gsp019x
   9        "No answer"
   5        "Never married"
   4        "Separated"
   3        "Divorced"
   2        "Widowed"
   1        "Married"
;
label define gsp020x
   99       "No answer"
   98       "Don't know"
   89       "89 or older"
;
label define gsp021x
   99       "No answer"
   98       "Don't know"
   97       "Not applicable"
;
label define gsp022x
   9        "No answer"
   8        "Don't know"
   7        "Not applicable"
   4        "Graduate"
   3        "Bachelor"
   2        "Junior college"
   1        "High school"
   0        "Lt high school"
;


label values sex      gsp001x;
label values race     gsp002x;
label values res16    gsp003x;
label values reg16    gsp004x;
label values born     gsp005x;
label values rincome  gsp006x;
label values wkageism gsp007x;
label values wkracism gsp008x;
label values majorcol gsp009x;
label values ballot   gsp010x;
label values barate   gsp011x;
label values eftotlt  gsp012x;
label values sector   gsp013x;
label values wrkstat  gsp014x;
label values hrs2     gsp015x;
label values wrkslf   gsp016x;
label values wrkgovt  gsp017x;
label values indus10  gsp018x;
label values marital  gsp019x;
label values age      gsp020x;
label values educ     gsp021x;
label values degree   gsp022x;


