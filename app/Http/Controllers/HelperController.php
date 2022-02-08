<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Advertisement;
use App\Models\Partner;
use App\Models\User;
use App\Models\Payer;
use App\Models\Article;
use App\Models\Event;
use App\Models\Client;
use App\Models\Task;
use App\Models\Call;
use Illuminate\Support\Facades\Auth;

class HelperController extends Controller
{
    public static function viewPage($page, $model, $mainpage, $pg, $par) {
        return view($page, [
            'model' => $model, 
            'ad_counter' => self::countAds(), 
            'article_counter' => self::countArticles(), 
            'event_counter' => self::countEvents(), 
            'cl_counter' => self::countClients(),
            'prtn_counter' => self::countPartners(),
            'usr_counter' => self::countUsers(),
            'tsk_counter' => self::countTasks(),
            'callback_counter' => self::countAllCallbacks(),
            'page' => $pg, 
            'dt' => $par,             
            'mainpage' => $mainpage
        ]);
    }
    public static function countAllCallbacks() {
        return Call::where('callback', 'yes')->count();
    }
    public static function countCallbacks($task_id) {
        return Call::where('task_id', $task_id)->where('callback', 'yes')->count();
    }
    public static function canCall($id) {
        $calls = Task::find($id)->calls;
        $cntr = 0;
        $stat = "yes";
        foreach ($calls as $call) {
            if($call->closed == "yes") {
                $cntr++;
            }
        }
        if($cntr > 0) {
            $stat = "no";
        }
        return $stat;
    }
    public static function countCall($id) {
        $calls = Task::find($id)->calls;
        return $calls->count();
    }
    public static function getAgents() {
        return User::where('level', 'Agent')->orderBy('firstname', 'asc')->get();
    }
    public static function getPayerName($id) {
        $pyr = Payer::where('id', $id)->first();
        if($pyr != null) {
            return $pyr->company_name;
        } else {
            return 'No payer';
        }
    }
    public static function getAgentName($id) {
        $usr = User::where('id', $id)->first();
        if($usr != null) {
            return $usr->firstname . ' ' . $usr->lastname;
        } else {
            return 'No name';
        }
    }
    public static function getAgentPay($id) {
        $cl = Partner::where('id', $id)->first();
        if($cl != null) {
            return $cl->company_agent_share;             
        } else {
            return 'Default';
        }
    }
    public static function countTasks() {
        return Task::where('id', '!=', null)->count();        
    }
    public static function countUsers() {
        return User::where('id', '!=', null)->count();        
    }
    public static function countPartners() {
        return Partner::where('id', '!=', null)->count();        
    }
	public static function getSales() {
		return Client::where('aid', Auth::user()->id)->where('payment_status', 'paid')->count();
	}
    public static function getClientName($id) {
        $cl = User::where('id', $id)->first();
        if($cl != null) {
            return $cl->firstname . " " . $cl->lastname;             
        } else {
            return 'Default';
        }
    }
	public static function getTotalSales() {      
		$users = User::where('partner', Auth::user()->partner)->get();
		$counter = 0;
		foreach($users as $user) {
			$counter += Client::where('aid', $user->id)->where('payment_status', 'paid')->count();
		}
		return $counter;
	}
    public static function countClients() {        
        $users = User::where('partner', Auth::user()->partner)->get();
        $cl_counter = 0;
        foreach($users as $user) {
            $cl_counter += Client::where('aid', $user->id)->count();
        } 
        return $cl_counter;
    }
    public static function countAds() {
        $id = Auth::user()->id;
        $level = Auth::user()->level;
        $partner = Auth::user()->partner;
        $ad_counter = Advertisement::where('aid', $id)->count();
        if($level == "Admin") {
            $ad_counter = 0;
            $users = User::where('partner', $partner)->get();
            foreach($users as $user) {
                $ad_counter += Advertisement::where('aid', $user->id)->count();
            }            
        } elseif($level == "Owner") {
            $ad_counter = 0;
            $users = User::all();
            foreach($users as $user) {
                $ad_counter += Advertisement::where('aid', $user->id)->count();
            }         
        }
        return $ad_counter;
    }

    public static function countArticles() {  
        $id = Auth::user()->id;
        $level = Auth::user()->level;
        $partner = Auth::user()->partner;
        $article_counter = Article::where('aid', $id)->count();
        if($level == "Admin") {
            $article_counter = 0;
            $users = User::where('partner', $partner)->get();
            foreach($users as $user) {
                $article_counter += Article::where('aid', $user->id)->count();
            }            
        } elseif($level == "Owner") {
            $article_counter = 0;
            $users = User::all();
            foreach($users as $user) {
                $article_counter += Article::where('aid', $user->id)->count();
            }         
        }
        return $article_counter;
    }

    public static function countEvents() {  
        $id = Auth::user()->id;
        $level = Auth::user()->level;
        $partner = Auth::user()->partner;
        $event_counter = Event::where('aid', $id)->count();
        if($level == "Admin") {
            $event_counter = 0;
            $users = User::where('partner', $partner)->get();
            foreach($users as $user) {
                $event_counter += Event::where('aid', $user->id)->count();
            }            
        } elseif($level == "Owner") {
            $event_counter = 0;
            $users = User::all();
            foreach($users as $user) {
                $event_counter += Event::where('aid', $user->id)->count();
            }         
        }
        return $event_counter;
    }

    public static function getAllCountries() {
        return [
            "Afghanistan" => "Afghanistan",
            "Åland Islands" => "Åland Islands",
            "Albania" => "Albania",
            "Algeria" => "Algeria",
            "American Samoa" => "American Samoa",
            "Andorra" => "Andorra",
            "Angola" => "Angola",
            "Anguilla" => "Anguilla",
            "Antarctica" => "Antarctica",
            "Antigua and Barbuda" => "Antigua and Barbuda",
            "Argentina" => "Argentina",
            "Armenia" => "Armenia",
            "Aruba" => "Aruba",
            "Australia" => "Australia",
            "Austria" => "Austria",
            "Azerbaijan" => "Azerbaijan",
            "Bahamas" => "Bahamas",
            "Bahrain" => "Bahrain",
            "Bangladesh" => "Bangladesh",
            "Barbados" => "Barbados",
            "Belarus" => "Belarus",
            "Belgium" => "Belgium",
            "Belize" => "Belize",
            "Benin" => "Benin",
            "Bermuda" => "Bermuda",
            "Bhutan" => "Bhutan",
            "Bolivia" => "Bolivia",
            "Bosnia and Herzegovina" => "Bosnia and Herzegovina",
            "Botswana" => "Botswana",
            "Bouvet Island" => "Bouvet Island",
            "Brazil" => "Brazil",
            "British Antarctic Territory" => "British Antarctic Territory",
            "British Indian Ocean Territory" => "British Indian Ocean Territory",
            "British Virgin Islands" => "British Virgin Islands",
            "Brunei" => "Brunei",
            "Bulgaria" => "Bulgaria",
            "Burkina Faso" => "Burkina Faso",
            "Burundi" => "Burundi",
            "Cambodia" => "Cambodia",
            "Cameroon" => "Cameroon",
            "Canada" => "Canada",
            "Canton and Enderbury Islands" => "Canton and Enderbury Islands",
            "Cape Verde" => "Cape Verde",
            "Cayman Islands" => "Cayman Islands",
            "Central African Republic" => "Central African Republic",
            "Chad" => "Chad",
            "Chile" => "Chile",
            "China" => "China",
            "Christmas Island" => "Christmas Island",
            "Cocos [Keeling] Islands" => "Cocos [Keeling] Islands",
            "Colombia" => "Colombia",
            "Comoros" => "Comoros",
            "Congo - Brazzaville" => "Congo - Brazzaville",
            "Congo - Kinshasa" => "Congo - Kinshasa",
            "Cook Islands" => "Cook Islands",
            "Costa Rica" => "Costa Rica",
            "Croatia" => "Croatia",
            "Cuba" => "Cuba",
            "Cyprus" => "Cyprus",
            "Czech Republic" => "Czech Republic",
            "Côte d’Ivoire" => "Côte d’Ivoire",
            "Denmark" => "Denmark",
            "Djibouti" => "Djibouti",
            "Dominica" => "Dominica",
            "Dominican Republic" => "Dominican Republic",
            "Dronning Maud Land" => "Dronning Maud Land",
            "East Germany" => "East Germany",
            "Ecuador" => "Ecuador",
            "Egypt" => "Egypt",
            "El Salvador" => "El Salvador",
            "Equatorial Guinea" => "Equatorial Guinea",
            "Eritrea" => "Eritrea",
            "Estonia" => "Estonia",
            "Ethiopia" => "Ethiopia",
            "Falkland Islands" => "Falkland Islands",
            "Faroe Islands" => "Faroe Islands",
            "Fiji" => "Fiji",
            "Finland" => "Finland",
            "France" => "France",
            "French Guiana" => "French Guiana",
            "French Polynesia" => "French Polynesia",
            "French Southern Territories" => "French Southern Territories",
            "French Southern and Antarctic Territories" => "French Southern and Antarctic Territories",
            "Gabon" => "Gabon",
            "Gambia" => "Gambia",
            "Georgia" => "Georgia",
            "Germany" => "Germany",
            "Ghana" => "Ghana",
            "Gibraltar" => "Gibraltar",
            "Greece" => "Greece",
            "Greenland" => "Greenland",
            "Grenada" => "Grenada",
            "Guadeloupe" => "Guadeloupe",
            "Guam" => "Guam",
            "Guatemala" => "Guatemala",
            "Guernsey" => "Guernsey",
            "Guinea" => "Guinea",
            "Guinea-Bissau" => "Guinea-Bissau",
            "Guyana" => "Guyana",
            "Haiti" => "Haiti",
            "Heard Island and McDonald Islands" => "Heard Island and McDonald Islands",
            "Honduras" => "Honduras",
            "Hong Kong SAR China" => "Hong Kong SAR China",
            "Hungary" => "Hungary",
            "Iceland" => "Iceland",
            "India" => "India",
            "Indonesia" => "Indonesia",
            "Iran" => "Iran",
            "Iraq" => "Iraq",
            "Ireland" => "Ireland",
            "Isle of Man" => "Isle of Man",
            "Israel" => "Israel",
            "Italy" => "Italy",
            "Jamaica" => "Jamaica",
            "Japan" => "Japan",
            "Jersey" => "Jersey",
            "Johnston Island" => "Johnston Island",
            "Jordan" => "Jordan",
            "Kazakhstan" => "Kazakhstan",
            "Kenya" => "Kenya",
            "Kiribati" => "Kiribati",
            "Kuwait" => "Kuwait",
            "Kyrgyzstan" => "Kyrgyzstan",
            "Laos" => "Laos",
            "Latvia" => "Latvia",
            "Lebanon" => "Lebanon",
            "Lesotho" => "Lesotho",
            "Liberia" => "Liberia",
            "Libya" => "Libya",
            "Liechtenstein" => "Liechtenstein",
            "Lithuania" => "Lithuania",
            "Luxembourg" => "Luxembourg",
            "Macau SAR China" => "Macau SAR China",
            "Macedonia" => "Macedonia",
            "Madagascar" => "Madagascar",
            "Malawi" => "Malawi",
            "Malaysia" => "Malaysia",
            "Maldives" => "Maldives",
            "Mali" => "Mali",
            "Malta" => "Malta",
            "Marshall Islands" => "Marshall Islands",
            "Martinique" => "Martinique",
            "Mauritania" => "Mauritania",
            "Mauritius" => "Mauritius",
            "Mayotte" => "Mayotte",
            "Metropolitan France" => "Metropolitan France",
            "Mexico" => "Mexico",
            "Micronesia" => "Micronesia",
            "Midway Islands" => "Midway Islands",
            "Moldova" => "Moldova",
            "Monaco" => "Monaco",
            "Mongolia" => "Mongolia",
            "Montenegro" => "Montenegro",
            "Montserrat" => "Montserrat",
            "Morocco" => "Morocco",
            "Mozambique" => "Mozambique",
            "Myanmar [Burma]" => "Myanmar [Burma]",
            "Namibia" => "Namibia",
            "Nauru" => "Nauru",
            "Nepal" => "Nepal",
            "Netherlands" => "Netherlands",
            "Netherlands Antilles" => "Netherlands Antilles",
            "Neutral Zone" => "Neutral Zone",
            "New Caledonia" => "New Caledonia",
            "New Zealand" => "New Zealand",
            "Nicaragua" => "Nicaragua",
            "Niger" => "Niger",
            "Nigeria" => "Nigeria",
            "Niue" => "Niue",
            "Norfolk Island" => "Norfolk Island",
            "North Korea" => "North Korea",
            "North Vietnam" => "North Vietnam",
            "Northern Mariana Islands" => "Northern Mariana Islands",
            "Norway" => "Norway",
            "Oman" => "Oman",
            "Pacific Islands Trust Territory" => "Pacific Islands Trust Territory",
            "Pakistan" => "Pakistan",
            "Palau" => "Palau",
            "Palestinian Territories" => "Palestinian Territories",
            "Panama" => "Panama",
            "Panama Canal Zone" => "Panama Canal Zone",
            "Papua New Guinea" => "Papua New Guinea",
            "Paraguay" => "Paraguay",
            "People's Democratic Republic of Yemen" => "People's Democratic Republic of Yemen",
            "Peru" => "Peru",
            "Philippines" => "Philippines",
            "Pitcairn Islands" => "Pitcairn Islands",
            "Poland" => "Poland",
            "Portugal" => "Portugal",
            "Puerto Rico" => "Puerto Rico",
            "QA" => "Qatar",
            "Romania" => "Romania",
            "Russia" => "Russia",
            "Rwanda" => "Rwanda",
            "Réunion" => "Réunion",
            "Saint Barthélemy" => "Saint Barthélemy",
            "Saint Helena" => "Saint Helena",
            "Saint Kitts and Nevis" => "Saint Kitts and Nevis",
            "Saint Lucia" => "Saint Lucia",
            "Saint Martin" => "Saint Martin",
            "Saint Pierre and Miquelon" => "Saint Pierre and Miquelon",
            "Saint Vincent and the Grenadines" => "Saint Vincent and the Grenadines",
            "Samoa" => "Samoa",
            "San Marino" => "San Marino",
            "Saudi Arabia" => "Saudi Arabia",
            "Senegal" => "Senegal",
            "Serbia" => "Serbia",
            "Serbia and Montenegro" => "Serbia and Montenegro",
            "Seychelles" => "Seychelles",
            "Sierra Leone" => "Sierra Leone",
            "Singapore" => "Singapore",
            "Slovakia" => "Slovakia",
            "Slovenia" => "Slovenia",
            "Solomon Islands" => "Solomon Islands",
            "Somalia" => "Somalia",
            "South Africa" => "South Africa",
            "South Georgia and the South Sandwich Islands" => "South Georgia and the South Sandwich Islands",
            "South Korea" => "South Korea",
            "Spain" => "Spain",
            "Sri Lanka" => "Sri Lanka",
            "Sudan" => "Sudan",
            "Suriname" => "Suriname",
            "Svalbard and Jan Mayen" => "Svalbard and Jan Mayen",
            "Swaziland" => "Swaziland",
            "Sweden" => "Sweden",
            "Switzerland" => "Switzerland",
            "Syria" => "Syria",
            "São Tomé and Príncipe" => "São Tomé and Príncipe",
            "Taiwan" => "Taiwan",
            "Tajikistan" => "Tajikistan",
            "Tanzania" => "Tanzania",
            "Thailand" => "Thailand",
            "Timor-Leste" => "Timor-Leste",
            "Togo" => "Togo",
            "Tokelau" => "Tokelau",
            "Tonga" => "Tonga",
            "Trinidad and Tobago" => "Trinidad and Tobago",
            "Tunisia" => "Tunisia",
            "Turkey" => "Turkey",
            "Turkmenistan" => "Turkmenistan",
            "Turks and Caicos Islands" => "Turks and Caicos Islands",
            "Tuvalu" => "Tuvalu",
            "U.S. Minor Outlying Islands" => "U.S. Minor Outlying Islands",
            "U.S. Miscellaneous Pacific Islands" => "U.S. Miscellaneous Pacific Islands",
            "U.S. Virgin Islands" => "U.S. Virgin Islands",
            "Uganda" => "Uganda",
            "Ukraine" => "Ukraine",
            "Union of Soviet Socialist Republics" => "Union of Soviet Socialist Republics",
            "United Arab Emirates" => "United Arab Emirates",
            "United Kingdom" => "United Kingdom",
            "United States" => "United States",
            "Unknown or Invalid Region" => "Unknown or Invalid Region",
            "Uruguay" => "Uruguay",
            "Uzbekistan" => "Uzbekistan",
            "Vanuatu" => "Vanuatu",
            "Vatican City" => "Vatican City",
            "Venezuela" => "Venezuela",
            "Vietnam" => "Vietnam",
            "Wake Island" => "Wake Island",
            "Wallis and Futuna" => "Wallis and Futuna",
            "Western Sahara" => "Western Sahara",
            "Yemen" => "Yemen",
            "Zambia" => "Zambia",
            "Zimbabwe" => "Zimbabwe",            
        ];
    }

    public static function getCountriesSymbols() {
        return [
            "AF" => "Afghanistan",
            "AX" => "Åland Islands",
            "AL" => "Albania",
            "DZ" => "Algeria",
            "AS" => "American Samoa",
            "AD" => "Andorra",
            "AO" => "Angola",
            "AI" => "Anguilla",
            "AQ" => "Antarctica",
            "AG" => "Antigua and Barbuda",
            "AR" => "Argentina",
            "AM" => "Armenia",
            "AW" => "Aruba",
            "AU" => "Australia",
            "AT" => "Austria",
            "AZ" => "Azerbaijan",
            "BS" => "Bahamas",
            "BH" => "Bahrain",
            "BD" => "Bangladesh",
            "BB" => "Barbados",
            "BY" => "Belarus",
            "BE" => "Belgium",
            "BZ" => "Belize",
            "BJ" => "Benin",
            "BM" => "Bermuda",
            "BT" => "Bhutan",
            "BO" => "Bolivia",
            "BA" => "Bosnia and Herzegovina",
            "BW" => "Botswana",
            "BV" => "Bouvet Island",
            "BR" => "Brazil",
            "BQ" => "British Antarctic Territory",
            "IO" => "British Indian Ocean Territory",
            "VG" => "British Virgin Islands",
            "BN" => "Brunei",
            "BG" => "Bulgaria",
            "BF" => "Burkina Faso",
            "BI" => "Burundi",
            "KH" => "Cambodia",
            "CM" => "Cameroon",
            "CA" => "Canada",
            "CT" => "Canton and Enderbury Islands",
            "CV" => "Cape Verde",
            "KY" => "Cayman Islands",
            "CF" => "Central African Republic",
            "TD" => "Chad",
            "CL" => "Chile",
            "CN" => "China",
            "CX" => "Christmas Island",
            "CC" => "Cocos [Keeling] Islands",
            "CO" => "Colombia",
            "KM" => "Comoros",
            "CG" => "Congo - Brazzaville",
            "CD" => "Congo - Kinshasa",
            "CK" => "Cook Islands",
            "CR" => "Costa Rica",
            "HR" => "Croatia",
            "CU" => "Cuba",
            "CY" => "Cyprus",
            "CZ" => "Czech Republic",
            "CI" => "Côte d’Ivoire",
            "DK" => "Denmark",
            "DJ" => "Djibouti",
            "DM" => "Dominica",
            "DO" => "Dominican Republic",
            "NQ" => "Dronning Maud Land",
            "DD" => "East Germany",
            "EC" => "Ecuador",
            "EG" => "Egypt",
            "SV" => "El Salvador",
            "GQ" => "Equatorial Guinea",
            "ER" => "Eritrea",
            "EE" => "Estonia",
            "ET" => "Ethiopia",
            "FK" => "Falkland Islands",
            "FO" => "Faroe Islands",
            "FJ" => "Fiji",
            "FI" => "Finland",
            "FR" => "France",
            "GF" => "French Guiana",
            "PF" => "French Polynesia",
            "TF" => "French Southern Territories",
            "FQ" => "French Southern and Antarctic Territories",
            "GA" => "Gabon",
            "GM" => "Gambia",
            "GE" => "Georgia",
            "DE" => "Germany",
            "GH" => "Ghana",
            "GI" => "Gibraltar",
            "GR" => "Greece",
            "GL" => "Greenland",
            "GD" => "Grenada",
            "GP" => "Guadeloupe",
            "GU" => "Guam",
            "GT" => "Guatemala",
            "GG" => "Guernsey",
            "GN" => "Guinea",
            "GW" => "Guinea-Bissau",
            "GY" => "Guyana",
            "HT" => "Haiti",
            "HM" => "Heard Island and McDonald Islands",
            "HN" => "Honduras",
            "HK" => "Hong Kong SAR China",
            "HU" => "Hungary",
            "IS" => "Iceland",
            "IN" => "India",
            "ID" => "Indonesia",
            "IR" => "Iran",
            "IQ" => "Iraq",
            "IE" => "Ireland",
            "IM" => "Isle of Man",
            "IL" => "Israel",
            "IT" => "Italy",
            "JM" => "Jamaica",
            "JP" => "Japan",
            "JE" => "Jersey",
            "JT" => "Johnston Island",
            "JO" => "Jordan",
            "KZ" => "Kazakhstan",
            "KE" => "Kenya",
            "KI" => "Kiribati",
            "KW" => "Kuwait",
            "KG" => "Kyrgyzstan",
            "LA" => "Laos",
            "LV" => "Latvia",
            "LB" => "Lebanon",
            "LS" => "Lesotho",
            "LR" => "Liberia",
            "LY" => "Libya",
            "LI" => "Liechtenstein",
            "LT" => "Lithuania",
            "LU" => "Luxembourg",
            "MO" => "Macau SAR China",
            "MK" => "Macedonia",
            "MG" => "Madagascar",
            "MW" => "Malawi",
            "MY" => "Malaysia",
            "MV" => "Maldives",
            "ML" => "Mali",
            "MT" => "Malta",
            "MH" => "Marshall Islands",
            "MQ" => "Martinique",
            "MR" => "Mauritania",
            "MU" => "Mauritius",
            "YT" => "Mayotte",
            "FX" => "Metropolitan France",
            "MX" => "Mexico",
            "FM" => "Micronesia",
            "MI" => "Midway Islands",
            "MD" => "Moldova",
            "MC" => "Monaco",
            "MN" => "Mongolia",
            "ME" => "Montenegro",
            "MS" => "Montserrat",
            "MA" => "Morocco",
            "MZ" => "Mozambique",
            "MM" => "Myanmar [Burma]",
            "NA" => "Namibia",
            "NR" => "Nauru",
            "NP" => "Nepal",
            "NL" => "Netherlands",
            "AN" => "Netherlands Antilles",
            "NT" => "Neutral Zone",
            "NC" => "New Caledonia",
            "NZ" => "New Zealand",
            "NI" => "Nicaragua",
            "NE" => "Niger",
            "NG" => "Nigeria",
            "NU" => "Niue",
            "NF" => "Norfolk Island",
            "KP" => "North Korea",
            "VD" => "North Vietnam",
            "MP" => "Northern Mariana Islands",
            "NO" => "Norway",
            "OM" => "Oman",
            "PC" => "Pacific Islands Trust Territory",
            "PK" => "Pakistan",
            "PW" => "Palau",
            "PS" => "Palestinian Territories",
            "PA" => "Panama",
            "PZ" => "Panama Canal Zone",
            "PG" => "Papua New Guinea",
            "PY" => "Paraguay",
            "YD" => "People's Democratic Republic of Yemen",
            "PE" => "Peru",
            "PH" => "Philippines",
            "PN" => "Pitcairn Islands",
            "PL" => "Poland",
            "PT" => "Portugal",
            "PR" => "Puerto Rico",
            "QA" => "Qatar",
            "RO" => "Romania",
            "RU" => "Russia",
            "RW" => "Rwanda",
            "RE" => "Réunion",
            "BL" => "Saint Barthélemy",
            "SH" => "Saint Helena",
            "KN" => "Saint Kitts and Nevis",
            "LC" => "Saint Lucia",
            "MF" => "Saint Martin",
            "PM" => "Saint Pierre and Miquelon",
            "VC" => "Saint Vincent and the Grenadines",
            "WS" => "Samoa",
            "SM" => "San Marino",
            "SA" => "Saudi Arabia",
            "SN" => "Senegal",
            "RS" => "Serbia",
            "CS" => "Serbia and Montenegro",
            "SC" => "Seychelles",
            "SL" => "Sierra Leone",
            "SG" => "Singapore",
            "SK" => "Slovakia",
            "SI" => "Slovenia",
            "SB" => "Solomon Islands",
            "SO" => "Somalia",
            "ZA" => "South Africa",
            "GS" => "South Georgia and the South Sandwich Islands",
            "KR" => "South Korea",
            "ES" => "Spain",
            "LK" => "Sri Lanka",
            "SD" => "Sudan",
            "SR" => "Suriname",
            "SJ" => "Svalbard and Jan Mayen",
            "SZ" => "Swaziland",
            "SE" => "Sweden",
            "CH" => "Switzerland",
            "SY" => "Syria",
            "ST" => "São Tomé and Príncipe",
            "TW" => "Taiwan",
            "TJ" => "Tajikistan",
            "TZ" => "Tanzania",
            "TH" => "Thailand",
            "TL" => "Timor-Leste",
            "TG" => "Togo",
            "TK" => "Tokelau",
            "TO" => "Tonga",
            "TT" => "Trinidad and Tobago",
            "TN" => "Tunisia",
            "TR" => "Turkey",
            "TM" => "Turkmenistan",
            "TC" => "Turks and Caicos Islands",
            "TV" => "Tuvalu",
            "UM" => "U.S. Minor Outlying Islands",
            "PU" => "U.S. Miscellaneous Pacific Islands",
            "VI" => "U.S. Virgin Islands",
            "UG" => "Uganda",
            "UA" => "Ukraine",
            "SU" => "Union of Soviet Socialist Republics",
            "AE" => "United Arab Emirates",
            "GB" => "United Kingdom",
            "US" => "United States",
            "ZZ" => "Unknown or Invalid Region",
            "UY" => "Uruguay",
            "UZ" => "Uzbekistan",
            "VU" => "Vanuatu",
            "VA" => "Vatican City",
            "VE" => "Venezuela",
            "VN" => "Vietnam",
            "WK" => "Wake Island",
            "WF" => "Wallis and Futuna",
            "EH" => "Western Sahara",
            "YE" => "Yemen",
            "ZM" => "Zambia",
            "ZW" => "Zimbabwe",            
        ];
    }
}
