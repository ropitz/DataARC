  <script>
  var testing = true;
  function getContextPath() {
    return "";
  }
  var FIELDS = { "sampledata": "sampleData", "phase": "Phase", "indicators.dungfoul_habitats": "Dung/Foul Habitats", "location": "Location", "sampledata.sample_name": "Sample Name", "site": "Site", "period_code": "Period Code", "source": "Source", "nisp": "NISP", "data.p4": "p4", "indicators.mould_beetles": "Mould Beetles", "indicators.indicators_running_water": "Indicators: Running Water", "indicators.stored_grain_pest": "Stored Grain Pest", "sampledata.sample_group_id": "Sample Group Id", "indicators.wood_and_trees": "Wood and Trees", "site_easting": "Site Easting", "end": "End", "site_northing": "Site Northing", "indicators.carrion": "Carrion", "indicators.heathland_moorland": "Heathland & Moorland", "indicators.open_wet_habitats": "Open Wet Habitats", "indicators.wetlandsmarshes": "Wetlands/Marshes", "indicators": "Indicators", "indicators.dry_dead_wood": "Dry Dead Wood", "indicators.indicators_dung": "Indicators: Dung", "indicators.aquatics": "Aquatics", "indicators.meadowland": "Meadowland", "indicators.halotolerant": "Halotolerant", "indicators.general_synanthropic": "General Synanthropic", "sampledata.age_abbreviation": "Age Abbreviation", "sampledata.site_name": "Site Name", "id": "Id", "indicators.indicators_standing_water": "Indicators: Standing Water", "indicators.sandydry_disturbedarable": "Sandy/Dry Disturbed/Arable", "indicators.indicators_deciduous": "Indicators: Deciduous", "sampledata.dating_type": "Dating Type", "indicators.ectoparasite": "Ectoparasite", "source": "Source", "indicators.pasturedung": "Pasture/Dung", "indicators.indicators_coniferous": "Indicators: Coniferous", "country": "Country", "start": "Start", "sampledata.site_id": "Site Id", "indicators.disturbedarable": "Disturbed/Arable", "data.au_group": "Analytic Unit Group", "data.col_count": "Col Count", "data.dl": "DL", "sampledata.end": "End", "data.autonumber": "Auto Number", "sampledata.start": "Start", "source": "source", "data.occupationperiod": "Occupation Period", "data.context": "Context", "data.m3_m1": "m3 m1", "farm_number": "Farm Number", "sheepgoat_total_mandibles": "Sheepgoat Total Mandibles", "data.id_row_tdar": "Id Row tDAR", "data.m3_p2": "m3 p2", "reference": "Reference", "parish_name": "Parish Name", "isleif_farms_id": "Isleif Farms id", "shire_name": "Shire Name", "source": "Source", "data.col_path": "Col Path", "data.gb": "Gb", "data.burning": "Burning", "data.m1": "m1", "data.dp4": "Dp4", "data.area": "Area", "data.btrim": "B Trim", "data.phase": "Phase", "data.m3": "m3", "data": "Data", "data.su": "Stratigraphic Unit", "data.fusion_state": "Fusion State", "data.sd": "SD", "data.other_context_1": "Other Context 1", "data.context_notes": "Context Notes", "data.l": "Data", "data.dates": "Data Dates", "data.col_date": "Col Date", "data.ref_": "Ref", "data.gl": "GL", "data.other_context_2": "Other Context 2", "data.gll": "Gll", "data.site": "Site", "data.m3_p4": "m3 p4", "data.m3b": "m3b", "data.m2": "m2", "data.fish_b_measurement": "Fish b Measurement", "data.m3l": "m3l", "data.bd": "Bd", "data.bp": "Bp", "data.b": "B", "data.bfd": "Bfd", "data.dm": "Dm", "data.fish_a_measurement": "Fish a Measurement", "data.bfp": "Bfp", "data.side": "Side", "data.ref__2": "Ref 2", "data.taxon": "Taxon", "data.bt": "BT", "data.glm": "GLm", "data.col_size": "Col Size", "end": "End", "start": "Start", "sagaid": "sagaid", "saganame": "Saga Name", "name": "Name", "chapter": "Chapter", "chapternr": "Chapter #", "type": "Type", "data": "Data", "end": "End", "id": "id", "sitenumber": "SiteNumber", "data.l": "L", "data.species_taxon": "Species (taxon)", "ab_sheepgoat_notes": "ab Sheepgoat Notes", "period": "Period", "data.ref_num_2": "Ref Num 2", "start": "Start", "data.end": "End", "data.other_context_1": "Other Context 1", "data.end_date": "End Date", "data.gnaw_orig": "Gnaw (orig)", "data.sex_orig": "Sex (orig)", "data.age_orig": "Age (orig)", "data.bfd": "Bfd", "data.gnaw": "Gnaw", "data.burn_orig": "Burn (orig)", "data.gl": "GL", "data.y": "Y", "data.butchery_orig": "Butchery (orig)", "data.bone_orig": "Bone (orig)", "data.fusion": "Fusion", "data.bone": "Bone", "data.sd": "SD", "data.unit": "Unit", "data.au": "Analytic Unit", "data.fusion_orig": "Fusion (orig)", "data.dp": "Dp", "data.species_comm": "Species (comm)", "data.context_notes": "Context Notes", "data.count": "Count", "data.burn": "Burn", "data.species_orig": "Species (orig)", "data.frag": "Frag", "data.p4": "P4", "data.date": "Date", "data.p3": "P3", "data.sex": "Sex", "data.m1": "M1", "data.postcanine": "Postcanine", "data.bt": "BT", "data.p2": "P2", "data.ref": "Ref#", "data.bfp": "BFp", "data.row_id": "Row Id", "data.start_date": "Start Date", "data.end_orig": "End (orig)", "data.su": "Stratigraphic Unit", "data.m3": "M3", "data.m2": "M2", "data.site": "Site", "data.in_": "In ?", "data.x": "X", "data.c": "C", "data.comments": "Comments", "data.region": "Region", "data.p1": "P1", "data.age": "Age", "data.frag_orig": "Frag (orig)", "data.bd": "Bd", "data.phase": "Phase", "data.gb": "GB", "data.b": "B", "data.bp": "Bp", "data.dp4": "dp4", "data.butchery": "Butchery", "source": "Source", "size": "Size", "source": "Source", "layer15": "Layer15", "layer10": "Layer10", "layer6": "Layer6", "layer22": "Layer22", "layer8": "Layer8", "layer7": "Layer7", "layer3": "Layer3", "layer9": "Layer9", "layer2": "Layer2", "layer5": "Layer5", "layer21": "Layer21", "layer4": "Layer4", "layer13": "Layer13", "layer20": "Layer20", "layer17": "Layer17", "layer11": "Layer11", "layer12": "Layer12", "source": "source", "layer1": "Layer1", "layer19": "Layer19", "layer16": "Layer16", "layer14": "Layer14", "layer18": "Layer18", "layer13.tephraldepth": "Layer13.TephraLdepth", "layer15.tephraorder": "Layer15.TephraOrder", "layer8.tephraudepth": "Layer8.TephraUdepth", "layer2.tephraudepth": "Layer2.TephraUdepth", "layer9.tephraudepth": "Layer9.TephraUdepth", "layer22.tephraudepth": "Layer22.TephraUdepth", "layer14.tephranumber": "Layer14.TephraNumber", "layer20.tephraldepth": "Layer20.TephraLdepth", "layer4.tephraorder": "Layer4.TephraOrder", "layer18.tephraname": "Layer18.TephraName", "layer14.tephraname": "Layer14.TephraName", "layer16.tephranumber": "Layer16.TephraNumber", "layer22.tephraorder": "Layer22.TephraOrder", "layer12.tephraldepth": "Layer12.TephraLdepth", "layer9.tephraname": "Layer9.TephraName", "layer5.tephraudepth": "Layer5.TephraUdepth", "layer20.tephraname": "Layer20.TephraName", "layer1.tephraudepth": "Layer1.TephraUdepth", "layer2.tephranumber": "Layer2.TephraNumber", "layer3.tephrareference": "Layer3.TephraReference", "layer17.tephrareference": "Layer17.TephraReference", "layer1.tephranumber": "Layer1.TephraNumber", "layer6.tephraudepth": "Layer6.TephraUdepth", "layer10.tephraudepth": "Layer10.TephraUdepth", "layer13.tephraname": "Layer13.TephraName", "layer14.tephrareference": "Layer14.TephraReference", "layer11.tephraldepth": "Layer11.TephraLdepth", "layer7.tephrareference": "Layer7.TephraReference", "layer22.tephrareference": "Layer22.TephraReference", "layer13.tephraorder": "Layer13.TephraOrder", "layer14.tephraorder": "Layer14.TephraOrder", "layer15.tephraldepth": "Layer15.TephraLdepth", "layer3.tephraname": "Layer3.TephraName", "layer18.tephraldepth": "Layer18.TephraLdepth", "layer6.tephranumber": "Layer6.TephraNumber", "layer7.tephraldepth": "Layer7.TephraLdepth", "layer17.tephraorder": "Layer17.TephraOrder", "layer2.tephraorder": "Layer2.TephraOrder", "layer21.tephraname": "Layer21.TephraName", "layer1.tephraldepth": "Layer1.TephraLdepth", "layer20.tephrayear": "Layer20.TephraYear", "layer18.tephranumber": "Layer18.TephraNumber", "layer22.tephranumber": "Layer22.TephraNumber", "layer8.tephranumber": "Layer8.TephraNumber", "layer1.tephrareference": "Layer1.TephraReference", "profilenumber": "ProfileNumber", "layer9.tephraorder": "Layer9.TephraOrder", "layer16.tephrareference": "Layer16.TephraReference", "layer8.tephraorder": "Layer8.TephraOrder", "layer19.tephrareference": "Layer19.TephraReference", "layer12.tephraorder": "Layer12.TephraOrder", "layer8.tephraldepth": "Layer8.TephraLdepth", "layer3.tephrayear": "Layer3.TephraYear", "layer10.tephraldepth": "Layer10.TephraLdepth", "layer7.tephrayear": "Layer7.TephraYear", "layer8.tephrareference": "Layer8.TephraReference", "layer20.tephrareference": "Layer20.TephraReference", "layer12.tephrayear": "Layer12.TephraYear", "layer18.tephraudepth": "Layer18.TephraUdepth", "layer9.tephraldepth": "Layer9.TephraLdepth", "layer6.tephrareference": "Layer6.TephraReference", "layer18.tephrareference": "Layer18.TephraReference", "layer10.tephrayear": "Layer10.TephraYear", "layer3.tephraldepth": "Layer3.TephraLdepth", "layer4.tephrareference": "Layer4.TephraReference", "layer14.tephraudepth": "Layer14.TephraUdepth", "layer19.tephraorder": "Layer19.TephraOrder", "layer5.tephrareference": "Layer5.TephraReference", "layer12.tephraudepth": "Layer12.TephraUdepth", "layer12.tephraname": "Layer12.TephraName", "layer5.tephrayear": "Layer5.TephraYear", "layer10.tephrareference": "Layer10.TephraReference", "layer21.tephrareference": "Layer21.TephraReference", "layer14.tephraldepth": "Layer14.TephraLdepth", "layer16.tephraname": "Layer16.TephraName", "layer6.tephraorder": "Layer6.TephraOrder", "layer11.tephraudepth": "Layer11.TephraUdepth", "layer20.tephraorder": "Layer20.TephraOrder", "layer15.tephrayear": "Layer15.TephraYear", "layer5.tephraname": "Layer5.TephraName", "layer4.tephraname": "Layer4.TephraName", "layer14.tephrayear": "Layer14.TephraYear", "layer15.tephrareference": "Layer15.TephraReference", "layer19.tephrayear": "Layer19.TephraYear", "layer1.tephraname": "Layer1.TephraName", "layer13.tephrareference": "Layer13.TephraReference", "layer8.tephrayear": "Layer8.TephraYear", "layer4.tephrayear": "Layer4.TephraYear", "layer22.tephrayear": "Layer22.TephraYear", "layer10.tephraorder": "Layer10.TephraOrder", "layer21.tephraorder": "Layer21.TephraOrder", "layer17.tephraname": "Layer17.TephraName", "layer1.tephrayear": "Layer1.TephraYear", "layer21.tephraudepth": "Layer21.TephraUdepth", "layer16.tephraudepth": "Layer16.TephraUdepth", "layer13.tephrayear": "Layer13.TephraYear", "layer17.tephraudepth": "Layer17.TephraUdepth", "layer13.tephranumber": "Layer13.TephraNumber", "layer21.tephranumber": "Layer21.TephraNumber", "layer12.tephranumber": "Layer12.TephraNumber", "layer8.tephraname": "Layer8.TephraName", "layer5.tephranumber": "Layer5.TephraNumber", "layer5.tephraldepth": "Layer5.TephraLdepth", "layer11.tephrareference": "Layer11.TephraReference", "layer3.tephranumber": "Layer3.TephraNumber", "layer16.tephraorder": "Layer16.TephraOrder", "layer5.tephraorder": "Layer5.TephraOrder", "layer12.tephrareference": "Layer12.TephraReference", "layer19.tephraudepth": "Layer19.TephraUdepth", "layer21.tephrayear": "Layer21.TephraYear", "layer22.tephraldepth": "Layer22.TephraLdepth", "layer19.tephraname": "Layer19.TephraName", "layer6.tephrayear": "Layer6.TephraYear", "layer6.tephraname": "Layer6.TephraName", "layer15.tephraudepth": "Layer15.TephraUdepth", "layer17.tephraldepth": "Layer17.TephraLdepth", "layer10.tephraname": "Layer10.TephraName", "layer11.tephrayear": "Layer11.TephraYear", "layer7.tephraudepth": "Layer7.TephraUdepth", "layer2.tephrareference": "Layer2.TephraReference", "layer6.tephraldepth": "Layer6.TephraLdepth", "layer7.tephranumber": "Layer7.TephraNumber", "layer4.tephranumber": "Layer4.TephraNumber", "layer11.tephraorder": "Layer11.TephraOrder", "layer4.tephraldepth": "Layer4.TephraLdepth", "layer11.tephranumber": "Layer11.TephraNumber", "layer2.tephraname": "Layer2.TephraName", "layer20.tephraudepth": "Layer20.TephraUdepth", "layer2.tephrayear": "Layer2.TephraYear", "layer15.tephranumber": "Layer15.TephraNumber", "layer22.tephraname": "Layer22.TephraName", "layer20.tephranumber": "Layer20.TephraNumber", "layer9.tephrareference": "Layer9.TephraReference", "layer2.tephraldepth": "Layer2.TephraLdepth", "layer9.tephranumber": "Layer9.TephraNumber", "layer16.tephrayear": "Layer16.TephraYear", "layer3.tephraudepth": "Layer3.TephraUdepth", "sitename": "SiteName", "layer10.tephranumber": "Layer10.TephraNumber", "layer16.tephraldepth": "Layer16.TephraLdepth", "layer15.tephraname": "Layer15.TephraName", "layer19.tephraldepth": "Layer19.TephraLdepth", "layer9.tephrayear": "Layer9.TephraYear", "layer21.tephraldepth": "Layer21.TephraLdepth", "layer4.tephraudepth": "Layer4.TephraUdepth", "layer11.tephraname": "Layer11.TephraName", "layer19.tephranumber": "Layer19.TephraNumber", "layer1.tephraorder": "Layer1.TephraOrder", "layer17.tephrayear": "Layer17.TephraYear", "layer7.tephraname": "Layer7.TephraName", "layer7.tephraorder": "Layer7.TephraOrder", "profilename": "ProfileName", "layer13.tephraudepth": "Layer13.TephraUdepth", "layer18.tephraorder": "Layer18.TephraOrder", "layer18.tephrayear": "Layer18.TephraYear", "layer17.tephranumber": "Layer17.TephraNumber", "layer3.tephraorder": "Layer3.TephraOrder", "earliestyear": "EarliestYear", "latestyear": "LatestYear", "sampledata.age_name": "Age Name", "farm_name": "farm_name", "id": "id", "historic_value_1861": "historic_value_1861", "jam_census_property_dyrleiki": "jam_census_property_dyrleiki", "adjusted_value_1861": "adjusted_value_1861", "end_date": "end date", "start_date": "start date", "oldest_manuscript_start": "oldest_manuscript_start", "action_end": "action_end", "oldest_manuscript_end": "oldest_manuscript_end", "oldest_manuscript": "oldest_manuscript", "manuscript_link": "manuscript_link", "action_start": "action_start", "composition_start": "composition_start", "composition_end": "composition_end", "sheepgoat_mortality_percent_greater_than_4yrs": "Sheepgoat mortality  percent greater than 4yrs", "percent_pig": "percent Pig", "percent_cow": "percent Cow", "sheepgoat_mortality_percent_1_4yrs": "Sheepgoat mortality percent 1-4yrs", "percent_avian": "percent avian", "percent_pig_to_bovids": "percent pig to bovids", "percent_sheep_to_goat_to_cow": "percent sheep to goat to cow", "percent_marine_mammal": "percent marine mammal", "island_or_region": "Island or region", "sheepgoat_mortality_percent_less_than_12m": "Sheepgoat mortality percent less than 12m", "period_as_text": "period as text", "percent_terrestrial_mammal": "percent terrestrial mammal", "percent_sheep": "percent Sheep", "chapter": "Chapter", "id": "id", "source": "source", "sagaid": "Saga ID", "concept": "Concept", "text": "Text", "name": "Name", "saganame": "Saga Name" };
  var SCHEMA = { "nabone_svk": "NABOne (Sveigakot)", "orkneyfauna": "Orkney Faunal Database", "sagas": "Icelandic Sagas Database", "teph": "Tephrabase", "iceland_farms": "Iceland Farm History Database", "sead": "Strategic Environmental Archaeology Database (SEAD) [Insects]", "nabone": "NABONE", "viga": "V?ga-Gl?ms saga (test)" };
  var geoJsonInputs = [ {id:"1", name:"iceland.json-1505394469296.json", title:"untitled", url:"/dev/geojson/iceland.json-1505394469296.min.json"} ];
  var coverage = [{"id":1,"startDate":750,"endDate":950,"term":"Early Viking Period","description":"small scale raiding and initial Norse settlement in Faroes, Northern Isles, Ireland, Man, Iceland, and Greenland"},{"id":2,"startDate":950,"endDate":1050,"term":"Late Viking Period","description":"armies & sustained warfare, state formation in Denmark"},{"id":26,"startDate":1050,"endDate":1250,"term":"Early Medieval Period","description":"Christianity formally accepted In Iceland, Norman conquest of England constitutes formal end of the Viking Age, Scandinavian Kingdoms become part of Christian Europe, increased trade esp. in dried fish from Northwest, increased Denmark & Southwest involvement in Baltic trade and war. Civil war in Norway. Rise in towns and trade in NW Europe, population increases"},{"id":27,"startDate":1000,"endDate":1000,"term":"Christianity Formally Accepted","description":""},{"id":28,"startDate":1250,"endDate":1400,"term":"High Medieval Period","description":""},{"id":29,"startDate":1400,"endDate":1500,"term":"Late Medieval","description":""},{"id":30,"startDate":1500,"endDate":1800,"term":"Early Modern","description":""},{"id":31,"startDate":1900,"endDate":2017,"term":"Modern","description":""},{"id":32,"startDate":980,"endDate":1160,"term":"Phase I","description":"Initial firm occupation of the Norse in Greenland, armies & sustained warfare, state formation in Denmark"},{"id":33,"startDate":1160,"endDate":1300,"term":"Phase II","description":""},{"id":34,"startDate":1300,"endDate":1450,"term":"Phase III","description":"Greeland depopulated and ultimately abandoned by the Norse"},{"id":35,"startDate":850,"endDate":850,"term":"Landnam","description":"Firm evidence for the first settlement of the island by the Norse"},{"id":36,"startDate":1347,"endDate":1350,"term":"Black Death in Norway","description":"Greater 50% fatalities, arguably 75%. Bergen loses major port status, Norway does not recover until 19th century. Recurring plagues (continue to 17th c, but with declining impacts) hit a reset button on European natural capital depletion, in that it allowed natural resources (e.g., forests) to recover, allowing for future ship and empire building in the following century"},{"id":37,"startDate":940,"endDate":1150,"term":"Maximum Warmth in the North Atlantic","description":""},{"id":38,"startDate":1257,"endDate":1257,"term":"Indonesian Volcanic Eruption","description":"Theorized to have initiated the onset of the Little Ice Age in the North Atlantic"},{"id":39,"startDate":1425,"endDate":1425,"term":"North Atlantic Storminess Increases","description":"storminess continues to increase on average and in intensity through modern period. cultural significance: flip over in storminess trend- past no longer guide to seamanship"},{"id":40,"startDate":1450,"endDate":1450,"term":"Greenland Depopulated","description":""},{"id":41,"startDate":1250,"endDate":1350,"term":"Pax Mongolica","description":"Market for woolens and dried fish expands, and European ships become larger and more seaworthy. In Iceland, archaeological evidence for increase in wool production and intensified marine fishing. In Greenland, walrus hunting remains the norm. Market for woolens and dried fish expands, and European ships become larger and more seaworthy. In Iceland, archaeological evidence for increase in wool production and intensified marine fishing. In Greenland, walrus hunting remains the norm."},{"id":42,"startDate":1300,"endDate":1300,"term":"Maximum of Medieval European population and settlement density in much of Northwest and Central Europe","description":"Vulnerabilities, emerging 'low energy poverty trap' scenario for Europe suggested by many historians as natural capital is drawn down and settlements expand into forest, uplands, marshes"},{"id":43,"startDate":1402,"endDate":1403,"term":"Black Death in Iceland","description":"rapid decline in historical document production (note 50 year gap between the Norwegian and Icelandic onsets of plague)"},{"id":44,"startDate":1400,"endDate":1500,"term":"'English Century'","description":"Icelandic elites may be building (illegal) contacts with Bristol and other English merchants. Many Denmark complaints about poaching and violence against royal officials. By 1500, Denmark apparently successful in excluding English and other foreign over-winter settlements and generally regaining control. Denmark threat to English access to Baltic markets inhibits further Iceland expansion, may well push English fishers towards Newfoundland by end of century"},{"id":45,"startDate":1397,"endDate":1397,"term":"Kalmar Union","description":"Power in Scandinavia shifts decisively to Denmark and SW who are interested in Baltic, Germany, N Sea area, but not so much N Atlantic. Iceland and Greenland are probably viewed as backwater areas, and contact with Greenland drops off after 1350 (Bishop Alfur is not replaced after 1378). "},{"id":46,"startDate":1500,"endDate":1700,"term":"Danish Monarchy Tightens Control Over Iceland","description":"Establishes administrative centers near modern Reykjavik and at Skalholt, increase in documentation available. Witchcraft trials and Forced reformation (last Catholic Bishop Jon Arason beheaded after brief revolt) and state Lutheran church. Printing presses inspire more literacy - archaeological records in Iceland show more imported material in the middens after this period, including pottery"},{"id":47,"startDate":1700,"endDate":1800,"term":"Century of Misery","description":"smallpox, volcanic eruptions, erosion, cold. Very gradual modernization, slow growth of villages - Reykjavik remains a small town with very limited population. Fishing and wool production still dominate a largely agricultural society with much complaint about Denmark trade monopoly and conservative Icelandic elites retarding progress."},{"id":48,"startDate":1800,"endDate":1950,"term":"Gradual Modernization","description":"Emigration to Canada, especially from Northern Iceland in late 19th - early 20th century. Independence movements, fishing and sheep boom, fully urban Reykjavik and Akureyri with smaller fishing towns, full scale modernization after the impact of World War II occupation by UK and US forces 1941-45, full independence 1944 "}];
    </script>
