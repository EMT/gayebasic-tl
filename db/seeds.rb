# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employer.delete_all
@employer = Employer.create([
{ name: 'Aberdeen Asset Management				  ', nominated_charity: '' },
{ name: 'Admiral Group							  ', nominated_charity: '' },
{ name: 'Aggreko								  ', nominated_charity: '' },
{ name: 'AMEC									  ', nominated_charity: '' },
{ name: 'Anglo American							  ', nominated_charity: '' },
{ name: 'Antofagasta							  ', nominated_charity: '' },
{ name: 'ARM Holdings							  ', nominated_charity: '' },
{ name: 'Associated British Foods				  ', nominated_charity: '' },
{ name: 'AstraZeneca							  ', nominated_charity: '' },
{ name: 'Aviva									  ', nominated_charity: '' },
{ name: 'Babcock International					  ', nominated_charity: '' },
{ name: 'BAE Systems							  ', nominated_charity: '' },
{ name: 'Barclays								  ', nominated_charity: '' },
{ name: 'BG Group								  ', nominated_charity: '' },
{ name: 'BHP Billiton							  ', nominated_charity: '' },
{ name: 'BP										  ', nominated_charity: '' },
{ name: 'British American Tobacco				  ', nominated_charity: '' },
{ name: 'British Land Company					  ', nominated_charity: '' },
{ name: 'British Sky Broadcasting Group			  ', nominated_charity: '' },
{ name: 'BT Group								  ', nominated_charity: '' },
{ name: 'Bunzl									  ', nominated_charity: '' },
{ name: 'Burberry Group							  ', nominated_charity: '' },
{ name: 'Capita Group							  ', nominated_charity: '' },
{ name: 'Carnival								  ', nominated_charity: '' },
{ name: 'Centrica								  ', nominated_charity: '' },
{ name: 'Compass Group							  ', nominated_charity: '' },
{ name: 'CRH									  ', nominated_charity: '' },
{ name: 'Croda International					  ', nominated_charity: '' },
{ name: 'Diageo									  ', nominated_charity: '' },
{ name: 'easyJet								  ', nominated_charity: '' },
{ name: 'Eurasian Natural Resources Corporation	  ', nominated_charity: '' },
{ name: 'Evraz									  ', nominated_charity: '' },
{ name: 'Experian								  ', nominated_charity: '' },
{ name: 'Fresnillo								  ', nominated_charity: '' },
{ name: 'G4S									  ', nominated_charity: '' },
{ name: 'GKN									  ', nominated_charity: '' },
{ name: 'GlaxoSmithKline						  ', nominated_charity: '' },
{ name: 'Glencore International					  ', nominated_charity: '' },
{ name: 'Hammerson								  ', nominated_charity: '' },
{ name: 'Hargreaves Lansdown					  ', nominated_charity: '' },
{ name: 'HSBC									  ', nominated_charity: 'Oxfam' },
{ name: 'IMI									  ', nominated_charity: '' },
{ name: 'Imperial Tobacco						  ', nominated_charity: '' },
{ name: 'International Consolidated Airlines Group', nominated_charity: '' },
{ name: 'InterContinental Hotels Group			  ', nominated_charity: '' },
{ name: 'Intertek Group							  ', nominated_charity: '' },
{ name: 'ITV									  ', nominated_charity: '' },
{ name: 'Johnson Matthey						  ', nominated_charity: '' },
{ name: 'Kingfisher								  ', nominated_charity: '' },
{ name: 'Land Securities Group					  ', nominated_charity: '' },
{ name: 'Legal & General						  ', nominated_charity: '' },
{ name: 'Lloyds Banking Group					  ', nominated_charity: '' },
{ name: 'London Stock Exchange Group			  ', nominated_charity: '' },
{ name: 'Marks & Spencer						  ', nominated_charity: '' },
{ name: 'Meggitt								  ', nominated_charity: '' },
{ name: 'Melrose								  ', nominated_charity: '' },
{ name: 'Wm Morrison Supermarkets				  ', nominated_charity: '' },
{ name: 'National Grid							  ', nominated_charity: '' },
{ name: 'Next									  ', nominated_charity: '' },
{ name: 'Old Mutual								  ', nominated_charity: '' },
{ name: 'Pearson								  ', nominated_charity: '' },
{ name: 'Petrofac								  ', nominated_charity: '' },
{ name: 'Polymetal International				  ', nominated_charity: '' },
{ name: 'Prudential								  ', nominated_charity: '' },
{ name: 'Randgold Resources						  ', nominated_charity: '' },
{ name: 'Reckitt Benckiser						  ', nominated_charity: '' },
{ name: 'Reed Elsevier							  ', nominated_charity: '' },
{ name: 'Resolution								  ', nominated_charity: '' },
{ name: 'Rexam									  ', nominated_charity: '' },
{ name: 'Rio Tinto Group						  ', nominated_charity: '' },
{ name: 'Rolls-Royce Group						  ', nominated_charity: '' },
{ name: 'Royal Bank of Scotland Group			  ', nominated_charity: '' },
{ name: 'Royal Dutch Shell						  ', nominated_charity: '' },
{ name: 'RSA Insurance Group					  ', nominated_charity: '' },
{ name: 'SABMiller								  ', nominated_charity: '' },
{ name: 'Sage Group								  ', nominated_charity: '' },
{ name: 'J Sainsbury							  ', nominated_charity: '' },
{ name: 'Schroders								  ', nominated_charity: '' },
{ name: 'Scottish and Southern Energy			  ', nominated_charity: '' },
{ name: 'Serco Group							  ', nominated_charity: '' },
{ name: 'Severn Trent							  ', nominated_charity: '' },
{ name: 'Shire									  ', nominated_charity: '' },
{ name: 'Smith & Nephew							  ', nominated_charity: '' },
{ name: 'Smiths Group							  ', nominated_charity: '' },
{ name: 'Standard Chartered Bank				  ', nominated_charity: '' },
{ name: 'Standard Life							  ', nominated_charity: '' },
{ name: 'Tate & Lyle Sugars						  ', nominated_charity: 'Community Links' },
{ name: 'Tesco									  ', nominated_charity: '' },
{ name: 'TUI Travel								  ', nominated_charity: '' },
{ name: 'Tullow Oil								  ', nominated_charity: '' },
{ name: 'Unilever								  ', nominated_charity: '' },
{ name: 'United Utilities						  ', nominated_charity: '' },
{ name: 'Vedanta Resources						  ', nominated_charity: '' },
{ name: 'Vodafone								  ', nominated_charity: 'NSPCC' },
{ name: 'Weir Group								  ', nominated_charity: '' },
{ name: 'Whitbread								  ', nominated_charity: '' },
{ name: 'Wolseley								  ', nominated_charity: '' },
{ name: 'Wood Group								  ', nominated_charity: '' },
{ name: 'WPP Group								  ', nominated_charity: '' },
{ name: 'Xstrata								  ', nominated_charity: '' }
])

Cause.delete_all
Cause.create([
	{ name: "Youth" },
	{ name: "Poverty "},
	{ name: "Heathcare" }
])

Charity.delete_all
Charity.create([
	{ name: "Cancer Research UK - Head Office"},
	{ name: "National Society for the Prevention of Cruelty to Children"},
	{ name: "Macmillan Cancer Support"},
	{ name: "Royal Society for the Prevention of Cruelty to Animals"},
	{ name: "Help the Hospices"},
	{ name: "Marie Curie Cancer Care"},
	{ name: "Save the Children Fund"},
	{ name: "Smile A Minute"},
	{ name: "Barnardos"},
	{ name: "British Heart Foundation - Head Office"},
	{ name: "Great Ormond Street Hospital Children's Charity"},
	{ name: "Any Needy Charity"},
	{ name: "Oxfam"},
	{ name: "Friends at Work"},
	{ name: "Cancer Focus Northern Ireland"},
	{ name: "Breakthrough Breast Cancer"},
	{ name: "United Kingdom Committee for UNICEF"},
	{ name: "Wateraid"},
	{ name: "CLIC Sargent"},
	{ name: "WWF - UK"},
	{ name: "Make a Difference"},
	{ name: "Alzheimers Society"},
	{ name: "Royal National Lifeboat Institution"},
	{ name: "Assisi Animal Charities Foundation"},
	{ name: "British Red Cross - Head Office"},
	{ name: "Dogs Trust"},
	{ name: "British Diabetic Association"},
	{ name: "Amnesty International UK Section Charitable Trust"},
	{ name: "Shelter National Campaign for Homeless People Ltd"},
	{ name: "Childlife"},
	{ name: "Northern Ireland Chest Heart & Stroke Association"},
	{ name: "Action Medical Research"},
	{ name: "Make-a-Wish Foundation UK"},
	{ name: "Multiple Sclerosis Society"},
	{ name: "Cancer Care Foundation"},
	{ name: "Bliss the National Charity for the Newborn"},
	{ name: "Tommy's the Baby Charity"},
	{ name: "Scottish Society for the Prevention of Cruelty to Animals"},
	{ name: "Asthma UK"},
	{ name: "Help the Aged"},
	{ name: "County Air Ambulance Trust"},
	{ name: "Leukaemia & Lymphoma Research"},
	{ name: "Roy Castle Foundation"},
	{ name: "Mencap - Head Office"},
	{ name: "Christian Aid - Head Office"},
	{ name: "ChildLine - Scotland"},
	{ name: "Actionaid"},
	{ name: "Prince & Princess Of Wales Hospice"},
	{ name: "Peoples Dispensary for Sick Animals"},
	{ name: "Charities At Work Group"},
	{ name: "BT Benevolent Fund"},
	{ name: "Royal Commonwealth Society for the Blind (Sightsavers)"},
	{ name: "C of E Childrens Society"},
	{ name: "Scope"},
	{ name: "Tiny Life"},
	{ name: "Blindcare"},
	{ name: "Royal National Institute of Blind People (National Fundraising)"},
	{ name: "Elimination of Leukaemia Fund or ELF"},
	{ name: "Jubilee Action"},
	{ name: "Sea Shell Trust"},
	{ name: "Childrens Hospice Association Scotland"},
	{ name: "Medecins Sans Frontieres (UK)"},
	{ name: "Friends of the Earth Trust Ltd"},
	{ name: "Cystic Fibrosis Trust"},
	{ name: "Arthritis Research Campaign - Head Office"},
	{ name: "Electrical & Electronics Industries Benevolent Association"},
	{ name: "Breast Cancer Campaign"},
	{ name: "Parkinsons UK"},
	{ name: "World Society for the Protection of Animals"},
	{ name: "Guide Dogs for the Blind Association"},
	{ name: "Meningitis Trust"},
	{ name: "Crisis UK"},
	{ name: "Child Concern Consortium"},
	{ name: "Bighearted Scotland Charitable Trust"},
	{ name: "Tenovus"},
	{ name: "Northern Ireland Charities Together"},
	{ name: "Kidney Research UK"},
	{ name: "Alzheimer Scotland - Action on Dementia"},
	{ name: "Greenpeace Environmental Trust"},
	{ name: "Association for International Cancer Research"},
	{ name: "Age UK"},
	{ name: "Salvation Army"},
	{ name: "Ulster Society for the Prevention of Cruelty to Animals"},
	{ name: "Action for Mental Health Cons."},
	{ name: "Sense"},
	{ name: "Mind (GAYE/Payroll Giving)"},
	{ name: "A.N.D. Consortium"},
	{ name: "Action Cancer"},
	{ name: "Stroke Association"},
	{ name: "Help for Heroes"},
	{ name: "Action for Children"},
	{ name: "Whale & Dolphin Conservation Society"},
	{ name: "World Vision UK"},
	{ name: "Sickle Cell Society"},
	{ name: "Cats Protection"},
	{ name: "Hope for Children"},
	{ name: "Tearfund"},
	{ name: "Trocaire - Northern Ireland"},
	{ name: "ABF The Soldiers Charity"},
	{ name: "Anthony Nolan Trust"},
	{ name: "Community Links"}
])

Employee.delete_all
Employee.create([{
	name: 'Victoria Webster',
	slug: 'victoria-webster',
	nominated_charity: "NSPCC",
	deduction: 10,
	employer_id: @employer.first.id
},
{
	name: 'Chris Allwood',
	slug: 'chris-allwood',
	nominated_charity: "Oxfam",
	deduction: 10,
	employer_id: @employer.first.id
},
{
	name: 'Tom Farrand',
	slug: 'tom-farrand',
	nominated_charity: "Greenpeace",
	deduction: 10,
	approved: true,
	employer_id: @employer.first.id
}])


