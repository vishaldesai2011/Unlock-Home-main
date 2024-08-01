const statesAndCities = {
    "Arunachal Pradesh": ["Itanagar", "Naharlagun", "Tawang", "Bomdila", "Aalo"],
    "Assam": ["Guwahati", "Dibrugarh", "Silchar", "Jorhat", "Tezpur"],
    "Bihar": ["Patna", "Gaya", "Muzaffarpur", "Bhagalpur", "Darbhanga"],
    "Chhattisgarh": ["Raipur", "Bhilai", "Bilaspur", "Korba", "Durg"],
    "Goa": ["Panaji", "Margao", "Vasco da Gama", "Mapusa", "Ponda"],
    "Gujarat": ["Ahmedabad", "Surat", "Vadodara", "Rajkot", "Bhavnagar"],
    "Haryana": ["Chandigarh", "Faridabad", "Gurgaon", "Rohtak", "Panipat"],
    "Himachal Pradesh": ["Shimla", "Manali", "Dharamshala", "Kullu", "Solan"],
    "Jammu and Kashmir": ["Srinagar", "Jammu", "Leh", "Kathua", "Udhampur"],
    "Jharkhand": ["Ranchi", "Jamshedpur", "Dhanbad", "Bokaro Steel City", "Hazaribagh"],
    "Karnataka": ["Bangalore", "Mysore", "Hubli", "Mangalore", "Belgaum"],
    "Kerala": ["Thiruvananthapuram", "Kochi", "Kozhikode", "Thrissur", "Kollam"],
    "Madhya Pradesh": ["Bhopal", "Indore", "Jabalpur", "Gwalior", "Ujjain"],
    "Maharashtra": ["Mumbai", "Pune", "Nagpur", "Thane", "Nashik"],
    "Manipur": ["Imphal", "Thoubal", "Bishnupur", "Churachandpur", "Ukhrul"],
    "Meghalaya": ["Shillong", "Tura", "Jowai", "Nongpoh", "Baghmara"],
    "Mizoram": ["Aizawl", "Lunglei", "Saiha", "Champhai", "Kolasib"],
    "Nagaland": ["Kohima", "Dimapur", "Mokokchung", "Tuensang", "Wokha"],
    "Odisha": ["Bhubaneswar", "Cuttack", "Rourkela", "Berhampur", "Sambalpur"],
    "Punjab": ["Chandigarh", "Ludhiana", "Amritsar", "Jalandhar", "Patiala"],
    "Rajasthan": ["Jaipur", "Jodhpur", "Udaipur", "Kota", "Ajmer"],
    "Sikkim": ["Gangtok", "Namchi", "Mangan", "Ravangla", "Singtam"],
    "Tamil Nadu": ["Chennai", "Coimbatore", "Madurai", "Trichy", "Salem"],
    "Telangana": ["Hyderabad", "Warangal", "Nizamabad", "Khammam", "Karimnagar"],
    "Tripura": ["Agartala", "Udaipur", "Dharmanagar", "Kailasahar", "Belonia"],
    "Uttarakhand": ["Dehradun", "Haridwar", "Rishikesh", "Nainital", "Almora"],
    "Uttar Pradesh": ["Lucknow", "Kanpur", "Agra", "Varanasi", "Allahabad"],
    "West Bengal": ["Kolkata", "Howrah", "Durgapur", "Asansol", "Siliguri"],
    "Andaman and Nicobar Islands": ["Port Blair", "Diglipur", "Mayabunder", "Rangat", "Ferrargunj"],
    "Chandigarh": ["Chandigarh"],
    "Dadra and Nagar Haveli": ["Silvassa"],
    "Daman and Diu": ["Daman", "Diu"],
    "Delhi": ["New Delhi", "Delhi"],
    "Lakshadweep": ["Kavaratti", "Agatti", "Amini", "Andrott", "Kalpeni"],
    "Puducherry": ["Puducherry", "Karaikal", "Mahe", "Yanam"]
};
function citys(city) {
    
    var select = document.getElementById("name");
    //var options = ["1", "2", "3", "4", "5"];
    
    var options = statesAndCities[city];
    for (var i = 0; i < options.length; i++) {
        var opt = options[i];
        var el = document.createElement("option");
        el.textContent = opt;
        el.value = opt;
        select.appendChild(el);
    }
}

function getValue() {
    // Get the dropdown element by its ID
    var ddl = document.getElementById('<%= name .ClientID %>'); // Get the dropdown list control.

    const dropdown = document.getElementById("list");

    // Get the selected value
    const selectedValue = dropdown.value;

    // Display the selected value
    //alert("Selected Value: " + selectedValue);
    let city = selectedValue;
    removeAllOptions();
    //const selectedValue = dropdown.value;

    //alert(city);
    citys(city);
    setDropdownSelectedValue(city);

}
function removeAllOptions() {
    // Get the dropdown element by its ID
    const dropdown = document.getElementById("name");

    // Set the length property to 0 to remove all options
    dropdown.length = 0;
}
function setDropdownSelectedValue(selectedValue) {
    var ddl = document.getElementById('<%= name.ClientID %>'); // Get the DropDownList control.
     // Replace with the desired value you want to set.

    // Set the selected value of the DropDownList.
    ddl.value = selectedValue;
}