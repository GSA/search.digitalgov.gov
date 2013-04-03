---
permalink: /developer/recalls.html
layout: article
title: USASearch
---

<h1>Recalls API</h1>

<p class="tagline">Helping alert the public to unsafe, hazardous, or defective products</p>

<ul>
  <li class="overview current"><a href="#overview">Overview</a></li>
  <li class="api"><a href="#using-the-api">Using the API</a></li>
  <li class="parameters"><a href="#parameters">Parameters</a></li>
  <li class="sources"><a href="#data-sources">Data Sources</a></li>
  <li class="returns"><a href="#what-it-returns">What it Returns</a></li>
</ul>

<a name="overview"></a><h2>Overview</h2>

When you're buying and using products, safety comes first.

Six federal regulatory agencies issue recalls on <a href="http://www.recalls.gov">Recalls.gov</a>.

<p>This Recalls API allows you to tap into a list of (1) food safety recalls from <a href="http://www.FoodSafety.gov">FoodSafety.gov</a>; (2) car safety recalls from the <a href="http://www.nhtsa.gov">National Highway Traffic Safety Administration</a>; and (3) product safety recalls from the <a href="http://www.cpsc.gov">Consumer Product Safety Commission</a>.</p>

<p>This API is great for consumer safety websites or applications, news organizations, and websites or magazines targeted to specific audiences, such as parents.</p>

<a name="using-the-api"></a><h2>Using the API</h2>

<p>This Recalls API accepts a GET request.</p>

<p>Recalls are searchable by keyword, issuing agency, date, UPC code, vehicle-specific attributes, or any combination of these.</p>

<p>The base URL is http://api.usa.gov/recalls/search.json?<strong>parameter</strong></p>

<p>Sample API requests follow.</p>

<p>All recalls<br>
  <a href="http://api.usa.gov/recalls/search.json?">http://api.usa.gov/recalls/search.json?</a>
</p>

<p>All cribs<br>
  <a href="http://api.usa.gov/recalls/search.json?query=cribs">http://api.usa.gov/recalls/search.json?query=cribs</a>
</p>

<p>All cribs that pose a choking hazard<br>
  <a href="http://api.usa.gov/recalls/search.json?query=cribs+choking">http://api.usa.gov/recalls/search.json?query=cribs+choking</a>
</p>

<p>All cribs that pose a choking hazard sorted by date<br>
  <a href="http://api.usa.gov/recalls/search.json?query=cribs+choking&sort=date">http://api.usa.gov/recalls/search.json?query=cribs+choking&sort=date</a>
</p>

<a name="parameters"></a><h2>Parameters</h2>

<p>Seven generic parameters are accepted: (1) query, (2) organization, (3) start_date, (4) end_date, (5) page, (6) per_page, and (7) sort. There are additional parameters that are specific to food, product, and car safety recalls. None are required.</p>

<h3>query</h3>

<p>Attempts to extract as much "signal" as possible from the input text. Handles word variants, so
  a search on "choke" will find a recall categorized as a "choking" hazard.</p>

<h3>organization</h3>

  Specifies which agency issued the recall. Possible values are `CDC`, `CPSC`, or `NHTSA`.

  Example: <a href="http://api.usa.gov/recalls/search.json?organization=nhtsa">http://api.usa.gov/recalls/search.json?organization=nhtsa</a>

<h3>start_date</h3>

  Specifies the start date of the recall.

  Example: <a href="http://api.usa.gov/recalls/search.json?start_date=2012-01-01">http://api.usa.gov/recalls/search.json?start_date=2012-01-01</a>

<h3>end_date</h3>

  Specifies the end date of the recall.

  Example: <a href="http://api.usa.gov/recalls/search.json?end_date=2012-12-31">http://api.usa.gov/recalls/search.json?end_date=2012-12-31</a>

<h3>page</h3>

  Specifies the pagination of search results. Possible values are `1` to `20`.


  Example: <a href="http://api.usa.gov/recalls/search.json?page=3">http://api.usa.gov/recalls/search.json?page=3</a>

<h3>per_page</h3>

  Specifies the number of search results for each page. Possible values are `1` to `50`.

  Example: <a href="http://api.usa.gov/recalls/search.json?per_page=10">http://api.usa.gov/recalls/search.json?per_page=10</a>

<h3>sort</h3>

  Results are sorted by relevance by default. Possible values are `rel` or `date`. Use 'sort=date' to sort results by date with the most recent listed first.

  Example: <a href="http://api.usa.gov/recalls/search.json?sort=date">http://api.usa.gov/recalls/search.json?sort=date</a>

<h3>food_type (only for FoodSafety.gov recalls)</h3>
  Specifies the type of recall from FoodSafety.gov. Possible values are `food` or `drug`.

  Example: <a href="http://api.usa.gov/recalls/search.json?food_type=drug">http://api.usa.gov/recalls/search.json?food_type=drug</a>

<h3>upc (only for CPSC recalls)</h3>

  Specifies the UPC code when available. Not all products have UPC codes.

  Example: <a href="http://api.usa.gov/recalls/search.json?upc=042666601627">http://api.usa.gov/recalls/search.json?upc=042666601627</a>

<h3>make, model, year, and code (only for NHTSA recalls)</h3>

* `make` specifies the make of the vehicle or equipment. Example: <http://localhost:3000/search?make=winnebago>
* `model` specifies the model of the vehicle or equipment. Example: <http://localhost:3000/search?model=ellipse>
* `year` specifies the year of the vehicle or equipment. Example: <http://localhost:3000/search?year=2010>
* `code` specifies the NHTSA code. Possible values are `E`, `V` [for vehicles], `I`, `T`, `C`, or `X`. Example: <http://localhost:3000/search?code=v>
</ul>
<a name="data-sources"></a><h2>Data Sources</h2>

<p>Data are normalized across (1) food safety recalls from <a href="http://www.FoodSafety.gov">FoodSafety.gov</a>; (2) car safety recalls from the <a href="http://www.nhtsa.gov">National Highway Traffic Safety Administration</a>; and (3) product safety recalls from the <a href="http://www.cpsc.gov">Consumer Product Safety Commission</a>.</p>.</p>

<a name="what-it-returns"></a><h2>What it Returns</h2>

<p>Below are three sample JSON responses for food, product, and car safety recalls.
</p>
<h3>Food Recalls</h3>
<pre>
{"success":{
    "total":2,
    "results":[
        {
            "organization":"CDC",
            "recall_number":"b6d9527fc7",
            "recall_date":"2012-12-18",
            "recall_url":"http://www.fda.gov/Safety/Recalls/ucm332784.htm",
            "description":"True Taste, LLC of Kenosha, WI, is recalling it's vacuum packaged Hot Smoked Rainbow Trout",
            "summary":"True Taste, LLC RECALLS,  \"Hot Smoked Rainbow Trout\""
        },
        {
            "organization":"CDC",
            "recall_number":"8e54d46b8d",
            "recall_date":"2012-12-18",
            "recall_url":"http://www.fda.gov/Safety/Recalls/ucm332787.htm",
            "description":"Matrixx Initiatives is voluntarily recalling 1 lot of Zicam&reg;",
            "summary":"Matrixx Initiatives Issues Nationwide Voluntary Recall of One Lot of Zicam&reg;"
        }
    ]
}}
</pre>

<h3>Product Recalls</h3>
<pre>
{"success":{
    "total":2,
    "results":[
        {
            "organization":"CPSC",
            "recall_number":"12080",
            "recall_date":"2012-01-05",
            "recall_url":"http://www.cpsc.gov/cpscpub/prerel/prhtml12/12080.html",
            "manufacturers":["Target"],
            "product_types":["Lights & Accessories"],
            "descriptions":["Target 6-pc. LED Flashlight Sets"],
            "upcs":["490021010049"],
            "hazards":["Fire & Fire-Related Burn"],
            "countries":["China"]
        },
        {
            "organization":"CPSC",
            "recall_number":"12710",
            "recall_date":"2012-01-05",
            "recall_url":"http://www.cpsc.gov/cpscpub/prerel/prhtml12/12710.html",
            "manufacturers":["Sterno"],
            "product_types":["Candles & Candle Holders"],
            "descriptions":["Sterno Bulk Pack 5 Hour Tea Lights"],
            "upcs":null,
            "hazards":["Fire & Fire-Related Burn"],
            "countries":["Thailand"]
        }
    ]
}}
</pre>

<h3>Car Recalls</h3>
<pre>
{"success":{
    "total":2,
    "results":[
        {
            "organization":"NHTSA",
            "recall_number":"12V579000",
            "recall_date":"2012-12-18",
            "recall_url":"http://www-odi.nhtsa.dot.gov/recalls/recallresults.cfm?start=1&SearchType=QuickSearch&rcl_ID=12V579000&summary=true&PrintVersion=YES",
            "records":[
                {
                    "component_description":"VISIBILITY/WIPER",
                    "make":"SPARTAN",
                    "manufacturer":"Spartan Chassis, Inc.",
                    "manufacturing_begin_date":"2012-10-01",
                    "manufacturing_end_date":"2012-10-31",
                    "model":"GLADIATOR",
                    "recalled_component_id":"000051813001317776000001349",
                    "year":2012
                },
                {
                    "component_description":"VISIBILITY/WIPER",
                    "make":"SPARTAN",
                    "manufacturer":"Spartan Chassis, Inc.",
                    "manufacturing_begin_date":"2012-10-01",
                    "manufacturing_end_date":"2012-10-31",
                    "model":"METROSTAR",
                    "recalled_component_id":"000051813001317777000001349",
                    "year":2012
                }
            ],
            "manufacturer_campaign_number":"12016",
            "component_description":"VISIBILITY/WIPER",
            "manufacturer":"Spartan Chassis, Inc.",
            "code":"V",
            "potential_units_affected":"36",
            "initiator":"MFR",
            "report_date":"20121210",
            "defect_summary":"Spartan Motors Chassis is recalling certain model year 2012-2013 Gladiator, Metro Star, Metro Star-X, and Force emergency rescue chassis cabs built between October 1, 2012, through October 31, 2012.  The wiper motor shaft and the wiper arm shaft have diff",
            "consequence_summary":"If the windshield wipers become inoperative, the driver could have reduced visibility, which may increase the risk of a crash.  ",
            "corrective_summary":"The remedy for this recall campaign is still under development.  The manufacturer has not yet provided a notification schedule.  Owners may contact Spartan at 1-800-543-5008.",
            "notes":"Spartan's recall campaign number is 12016.Owners may also contact the National Highway Traffic Safety Administration Vehicle Safety Hotline at 1-888-327-4236 (TTY 1-800-424-9153), or go to www.safercar.gov.",
            "recall_subject":"Windshield Wipers may become Inoperative"
        },
        {
            "organization":"NHTSA",
            "recall_number":"12V571000",
            "recall_date":"2012-12-18",
            "recall_url":"http://www-odi.nhtsa.dot.gov/recalls/recallresults.cfm?start=1&SearchType=QuickSearch&rcl_ID=12V571000&summary=true&PrintVersion=YES",
            "records":[
                {
                    "component_description":"FUEL SYSTEM, GASOLINE:DELIVERY:FUEL PUMP",
                    "make":"JAGUAR",
                    "manufacturer":"JAGUAR CARS LTD",
                    "manufacturing_begin_date":"2012-10-03",
                    "manufacturing_end_date":"2012-10-12",
                    "model":"XF",
                    "recalled_component_id":"000051654001723816000000152",
                    "year":2013
                },
                {
                    "component_description":"ELECTRICAL SYSTEM",
                    "make":"JAGUAR",
                    "manufacturer":"JAGUAR CARS LTD",
                    "manufacturing_begin_date":"2012-10-03",
                    "manufacturing_end_date":"2012-10-12",
                    "model":"XF",
                    "recalled_component_id":"000051654001723816000000200",
                    "year":2013
                }
            ],
            "manufacturer_campaign_number":"J028",
            "component_description":"ELECTRICAL SYSTEM",
            "manufacturer":"Jaguar Land Rover North America, LLC",
            "code":"V",
            "potential_units_affected":"13",
            "initiator":"MFR",
            "report_date":"20121207",
            "defect_summary":"Jaguar Land Rover is recalling certain model year 2013 XF vehicles manufactured October 3, 2012, through October 12, 2012 and equipped with a gasoline engine.",
            "consequence_summary":"An engine stall without warning while driving may lead to a loss of motive power, a loss of power-assisted braking and a loss of power-assisted steering.",
            "corrective_summary":"Jaguar Land Rover will notify owners, and dealers will install an additional wiring harness to the in-tank fuel pump, free of charge.",
            "notes":"Jaguar's campaign recall number is J028.Owners may also contact the National Highway Traffic Safety Administration Vehicle Safety Hotline at 1-888-327-4236 (TTY 1-800-424-9153), or go to www.safercar.gov.",
            "recall_subject":"Fuel Starvation may cause Vehicle Stall"
        }
    ]
}}
</pre>

<h2>Open Source Code</h2>

<p>The server code that runs this API is on Github. If you're a Rails developer, fork our <a
    href="https://github.com/GSA-OCSIT/recalls_api">Recalls Server API</a> repo to add features (such
  as additional datasets) or fix bugs.</p>

<p>Better yet, send us a <a href="https://github.com/GSA-OCSIT/recalls_api/pulls">pull request</a>
  to contribute your changes to our project and improve this API for everyone who is using it.
</p>

<h2>Feedback</h2>

<p><a href="mailto:usasearch@gsa.gov">E-mail us</a> any suggestions about what you'd like to see
  in the next version of API.</p>

<h2>Terms of Use</h2>

<p>By accessing the Recalls API, you agree to our <a
    href="http://www.usa.gov/About/developer-resources/terms-of-service.shtml">Terms of
  Service</a>.</p>