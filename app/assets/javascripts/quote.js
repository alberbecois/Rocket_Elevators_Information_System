// Calculate recommended elevators for Residential
function recommendResidential(){
    var floors = parseInt($("#resfloors").val());
    var apartments = parseInt($("#resapartments").val());
    var apartmentsByFloor = Math.ceil(apartments / floors);
    var elevators = Math.ceil(apartmentsByFloor / 6);
    var numColumns = Math.ceil(floors / 20);
    var totalElevators = elevators * numColumns;
    quotedElevators = totalElevators;

    if(totalElevators > 1){
        document.getElementById("restotal").innerHTML = totalElevators;
        document.getElementById("resplural").innerHTML = "s";
    }else {
        document.getElementById("restotal").innerHTML = "1";
    }
};

// Calculate recommended elevators for Corporate or Hybrid
function recommendElevators(quoteType){
    var floors = parseInt($(`#${quoteType}floors`).val());
    var basements = parseInt($(`#${quoteType}basements`).val());
    var columns = Math.ceil((floors + basements) / 20);
    var totalOccupants = (floors + basements) * parseInt(($(`#${quoteType}occupants`).val()));
    var elevators = Math.ceil(totalOccupants / 1000);
    var totalElevators = Math.ceil(elevators / columns) * columns;
    quotedElevators = totalElevators;

    if(totalElevators > 1){
        document.getElementById(`${quoteType}total`).innerHTML = totalElevators;
        document.getElementById(`${quoteType}plural`).innerHTML = "s";
    }else {
        document.getElementById(`${quoteType}total`).innerHTML = "1";
    }
}

// Set elevators for Commercial
function setElevators(){
    var elevators = parseInt($("#commercialelevators").val());
    quotedElevators = elevators;
}

// Display appropriate product card via the select element
var selector = document.getElementById("project_type");
var selection;
var quotedElevators;

selector.addEventListener("change", function(){
    selection = selector.value;
    $(".quoter").fadeOut();
    isElevatorSelectionShowing = false;
    isFinalQuoteShowing = false;
    var curProductCard = "#" + selection;
    var $curProductCard = $(curProductCard);
    setTimeout(() => {  $curProductCard.fadeIn(); }, 600);
    if(selection === "residential"){
        recommendResidential();
    }else if(selection !== "commercial") {
        recommendElevators(selection);
    }else {
        setElevators();
    }
})

//Form validation error message
    var $errormessage = $("<small></small>").addClass("text-danger").text("Input cannot be less than zero.");
    var $errorreminder = $("<p></p>").addClass("text-danger").addClass("ml-20").text("Please correct highlighted fields.");
    var errorMessageApplied = false;

// Recalculate recommended elevators for residential when steppers change
$(".resinput").change(function(){
    if(isElevatorSelectionShowing === true){
        $("#elevatorselection").fadeOut();
        isElevatorSelectionShowing = false;
    };
    if(isFinalQuoteShowing === true){
        $("#finalquote").fadeOut();
        isFinalQuoteShowing = false;
    }
    // Validate that key inputs are not below min values
    if(this.value < 0){
        $(this).addClass("error").after($errormessage);
        errorMessageApplied = true;
    }else if(this.value > 0 && errorMessageApplied){
        $(this).removeClass("error");
        $(".text-danger").remove();
        isErrorReminderShowing = false;
        errorMessageApplied = false;
        recommendResidential();
    }else {
        $(this).removeClass("error");
        recommendResidential();
    }
});

// Recalculate recommended elevators for corporate or hybrid when steppers change
$(".recommendinput").change(function(){
    if(isElevatorSelectionShowing === true){
        $("#elevatorselection").fadeOut();
        isElevatorSelectionShowing = false;
    };
    if(isFinalQuoteShowing === true){
        $("#finalquote").fadeOut();
        isFinalQuoteShowing = false;
    }
    // Validate that key inputs are not below min values
    if(this.value < 0){
        $(this).addClass("error").after($errormessage);
        errorMessageApplied = true;
    }else if(this.value > 0 && errorMessageApplied){
        $(this).removeClass("error");
        $(".text-danger").remove();
        isErrorReminderShowing = false;
        errorMessageApplied = false;
        recommendElevators(selection);
    }else {
        $(this).removeClass("error");
        recommendElevators(selection);
    }
});

// Recalculate pricing for Commercial
$("#commercialelevators").change(function(){
    if(isElevatorSelectionShowing === true){
        $("#elevatorselection").fadeOut();
        isElevatorSelectionShowing = false;
    };
    if(isFinalQuoteShowing === true){
        $("#finalquote").fadeOut();
        isFinalQuoteShowing = false;
    }
    // Validate that key inputs are not below min values
    if(this.value < 0){
        $(this).addClass("error").after($errormessage);
        errorMessageApplied = true;
    }else if(this.value > 0 && errorMessageApplied){
        $(this).removeClass("error");
        $(".text-danger").remove();
        isErrorReminderShowing = false;
        errorMessageApplied = false;
        setElevators();
    }else {
        setElevators();
    }
});

// Next button displays the Elevator Selector card

var $nextButtons = $(".nextbutton");
var isElevatorSelectionShowing = false;
var isErrorReminderShowing = false;

$($nextButtons).click(function(){
    if(isElevatorSelectionShowing === false && errorMessageApplied === false){
        $("#elevatorselection").fadeIn();
        isElevatorSelectionShowing = true;
    }else if(isElevatorSelectionShowing === false && errorMessageApplied && isErrorReminderShowing === false){
        $nextButtons.after($errorreminder);
        isErrorReminderShowing = true;
    }
});


// Final Calculator -- replaced by Heroku app
/* function updateTotal(){
    var selectedElevator = document.querySelector('input[name="elevatortype"]:checked').value;
    if(selectedElevator === "standard"){
        var elevatorPrice = quotedElevators * 7565;
        var elevatorString = elevatorPrice.toFixed(2);
        document.getElementById("selectedtype").innerHTML = "Standard";
        document.getElementById("productprice").innerHTML = elevatorString;
        var installationPrice = elevatorPrice * 0.1;
        var installationString = installationPrice.toFixed(2);
        document.getElementById("installationprice").innerHTML = installationString;
        var totalPrice = elevatorPrice + installationPrice;
        var totalString = totalPrice.toFixed(2);
        document.getElementById("totalprice").innerHTML = totalString;
    } else if(selectedElevator === "premium"){
        var elevatorPrice = quotedElevators * 12345;
        var elevatorString = elevatorPrice.toFixed(2);
        document.getElementById("selectedtype").innerHTML = "Premium";
        document.getElementById("productprice").innerHTML = elevatorString;
        var installationPrice = elevatorPrice * 0.13;
        var installationString = installationPrice.toFixed(2);
        document.getElementById("installationprice").innerHTML = installationString;
        var totalPrice = elevatorPrice + installationPrice;
        var totalString = totalPrice.toFixed(2);
        document.getElementById("totalprice").innerHTML = totalString;
    } else {
        var elevatorPrice = quotedElevators * 15400;
        var elevatorString = elevatorPrice.toFixed(2);
        document.getElementById("selectedtype").innerHTML = "Excelium";
        document.getElementById("productprice").innerHTML = elevatorPrice;
        var installationPrice = elevatorPrice * 0.16;
        var installationString = installationPrice.toFixed(2);
        document.getElementById("installationprice").innerHTML = installationString;
        var totalPrice = elevatorPrice + installationPrice;
        var totalString = totalPrice.toFixed(2);
        document.getElementById("totalprice").innerHTML = totalString;
    }
}; */

// Update the Quote card
function setQuote(price, installation, total){
    var selectedElevator = document.querySelector('input[name="elevatortype"]:checked').value;
    if(selectedElevator === "standard"){
        document.getElementById("selectedtype").innerHTML = "Standard";
        document.getElementById("productprice").innerHTML = price;
        document.getElementById("installationprice").innerHTML = installation;
        document.getElementById("totalprice").innerHTML = total;
    }else if(selectedElevator === "premium"){
        document.getElementById("selectedtype").innerHTML = "Premium";
        document.getElementById("productprice").innerHTML = price;
        document.getElementById("installationprice").innerHTML = installation;
        document.getElementById("totalprice").innerHTML = total;
    }else {
        document.getElementById("selectedtype").innerHTML = "Excelium";
        document.getElementById("productprice").innerHTML = price;
        document.getElementById("installationprice").innerHTML = installation;
        document.getElementById("totalprice").innerHTML = total;
    }
}

// Node.js version of updateTotal
function getQuote(){
    var selectedElevator = document.querySelector('input[name="elevatortype"]:checked').value;
    $.getJSON(`https://requoter.herokuapp.com/${selectedElevator}/${quotedElevators}`, function(data, status){
        setQuote(data.price, data.installation, data.total);
    });
}

// Generate objects to send to Rails Controller
function saveQuote(){

    // Quote values
    var selectedElevator = document.querySelector('input[name="elevatortype"]:checked').value;
    var nb_cages;
    var nb_appartment;
    var nb_floors;
    var nb_base;
    var nb_occupants;
    var elevator_units;
    var installation_fe;
    var p_line_selection;
    var sum_total;

    if (selection === "residential"){
        nb_cages = "";
        nb_appartment = document.getElementById("resapartments").value;
        nb_floors = document.getElementById("resfloors").value;
        nb_base = "";
        nb_occupants = "";
        elevator_units = document.getElementById("restotal").innerHTML;
        installation_fe = document.getElementById("installationprice").innerHTML;
        p_line_selection = document.getElementById("productprice").innerHTML;
        sum_total = document.getElementById("totalprice").innerHTML;
    } else if (selection === "commercial"){
        nb_cages = document.getElementById("commercialelevators").value;
        nb_appartment = "";
        nb_floors = "";
        nb_base = "";
        nb_occupants = "";
        elevator_units = document.getElementById("restotal").innerHTML;
        installation_fe = document.getElementById("installationprice").innerHTML;
        p_line_selection = document.getElementById("productprice").innerHTML;
        sum_total = document.getElementById("totalprice").innerHTML;
    } else if (selection === "corporate"){
        nb_cages = "";
        nb_appartment = "";
        nb_floors = document.getElementById("corporatefloors").value;
        nb_base = document.getElementById("corporatebasements").value;
        nb_occupants = document.getElementById("corporateoccupants").value;
        elevator_units = document.getElementById("restotal").innerHTML;
        installation_fe = document.getElementById("installationprice").innerHTML;
        p_line_selection = document.getElementById("productprice").innerHTML;
        sum_total = document.getElementById("totalprice").innerHTML;
    } else {
        nb_cages = "";
        nb_appartment = "";
        nb_floors = document.getElementById("hybridfloors").value;
        nb_base = document.getElementById("hybridbasements").value;
        nb_occupants = document.getElementById("hybridoccupants").value;
        elevator_units = document.getElementById("restotal").innerHTML;
        installation_fe = document.getElementById("installationprice").innerHTML;
        p_line_selection = document.getElementById("productprice").innerHTML;
        sum_total = document.getElementById("totalprice").innerHTML;
    }

    var myQuote = 
    {
        "quote": {
            "business": document.getElementById("bname").value,
            "fullname": `${document.getElementById("fname").value} ${document.getElementById("lname").value}`,
            "email": document.getElementById("email").value,
            "build_type": selection,
            "product_line": selectedElevator,
            "nb_cages": nb_cages,
            "nb_appartment": nb_appartment,
            "nb_floors": nb_floors,
            "nb_base": nb_base,
            "nb_occupants": nb_occupants,
            "nb_floors": nb_floors,
            "elevator_units": elevator_units,
            "installation_fe": installation_fe,
            "p_line_selection": p_line_selection,
            "sum_total": sum_total
        }
    }

    console.log(myQuote);

    /*$.post("http://localhost:3000/customers", myCustomer, function(data){
        myCustomerID = data.theid;
        console.log(data.message);
        var myQuote = {
            "customer_id": myCustomerID,
            "project_type": selection,
            "num_elevators": quotedElevators,
            "product": selectedElevator
        }
        console.log(myQuote);
    });*/

}

// Displays Final Quote

var isFinalQuoteShowing = false;

$("#calculate").click(function(){
    if(isFinalQuoteShowing === false){
        getQuote();
        $("#finalquote").fadeIn();
        isFinalQuoteShowing = true;
    }
    else{
        getQuote();
    }
})

// Save Button Listener

$("#save").click(function(){
    saveQuote();
})
