/* Javascript support for IEEE754 conversion *
 * 
 * (c) 2012-2017 by Harald Schmidt
 *
 */


// store the handler ID for the timeout, allowing to cancel it when another change occurs:
var requestHandlerTimeoutId;

// parameters of the last update being performed:
var newestUpdate = "";

// Update values by fetching them from the server.
// changeparam is a "key=value" string indicating the type of change the user
// requested.
// UI is only updated if newestUpdate is still identical to changeparam when the
// request returns from the server.
function update(changeparam) {
  newestUpdate = changeparam;
  jQuery.getJSON("binary-json.py", changeparam, function(data, textStatus, jqXHR) {
      updateDisplay(data, changeparam);
  })
  // TODO: handle errors!
}


/* ---- Callbacks for User interaction ---- */

// this function is called whenever the binary field is being changed.
// It transforms the checkbox-status into a string containing "0" and "1"
// and calls update() to request an update of the other displays.
function binaryChanged() {
  function getCheckboxValue(elemid) {
    if (window.document.getElementById(elemid).checked) {
      return "1";
    } else {
      return "0";
    }
  }
  var binaryValues = "";
  binaryValues += getCheckboxValue('cbsign');
  for (var i = 0; i < 8; i++) {
    binaryValues += getCheckboxValue('cbexp' + i);
  }
  for (var i = 0; i < 23; i++) {
    binaryValues += getCheckboxValue('cbmant' + i);
  }
  update("binary=" + encodeURIComponent(binaryValues));
}

// function being called when the binary textfield was changed.
// does some sanity checks and requests an update.
function binaryTextfieldChanged() {
  binaryTextfield = window.document.getElementById("binary").value;
  for (var i = 0; i < binaryTextfield.length; i++) {
    if (binaryTextfield.charAt(i) != "0" && binaryTextfield.charAt(i) != "1") {
      // TODO: print error message somewhere on page
      return;
    }
  }
  while (binaryTextfield.length < 32) {
    binaryTextfield = "0" + binaryTextfield;
  }
  if (binaryTextfield.length > 32) {
    // error
    return;
  }
  update("binary=" + encodeURIComponent(binaryTextfield));
}

// function being called when the decimal textfield was changed.
function decimalChanged() {
  update("decimal=" + encodeURIComponent(window.document.getElementById("decimal").value));
}

// function being called when the hex textfield was changed.
function hexChanged() {
  update("hexadecimal=" + encodeURIComponent(window.document.getElementById("hexadecimal").value));
}

// common helper for increment and decrement:
function addOffsetDecimal(offset) {
    var intValue = parseInt(window.document.getElementById("hexadecimal").value, 16);
    if (isNaN(intValue)) {
        // ToDo: error
        return;
    }
    // convert to positive value [0:2^32 - 1]
    intValue = (intValue + offset + 0x100000000) % 0x100000000;
    // trigger update:
    update("hexadecimal=" + encodeURIComponent(intValue.toString(16)));
}

// function called when "+1" is clicked
function increment() {
    addOffsetDecimal(1);
}

// function called when "-1" is clicked
function decrement() {
    addOffsetDecimal(-1);
}

/* ---- DISPLAY HANDLING ---- */

// declare helper functions for updateDisplay()
function setElement(elemid, value) {
  window.document.getElementById(elemid).innerHTML = value;
}
function setCheckbox(checkboxid, value) {
  window.document.getElementById(checkboxid).checked = value;
}
function setTextField(textfieldid, value) {
  window.document.getElementById(textfieldid).value = value;
}
function setError(error_msg) {
    setElement("convstatus", error_msg);
}

// updateDisplay() changes all display elements to reflect the values passed
// in the values object,
function updateDisplay(values, updateid) {
  // first thing to do is check whether the values here are still relevant
  // to the user, i.e. if the last input matches the values:
  if (newestUpdate != "" && updateid != newestUpdate) {
    window.dump("Update out of date: " + newestUpdate + "/" + updateid + "\n");
    return;
  }

  if (values.hasOwnProperty("error")) {
    setError(values.error);
    return;
  }

  // now update display elements with new values:
  setElement('actual_sign',     values.actual_sign);
  setElement('actual_exponent', values.actual_exponent);
  setElement('actual_mantissa', values.actual_mantissa);
  
  setElement('sign_value',     values.sign_value);
  setElement('exponent_value', values.exponent_value);
  setElement('mantissa_value', values.mantissa_value);

  setCheckbox('cbsign', values.sign_bool);
  for (var i = 0; i < 8; i++) {
    setCheckbox('cbexp'+i, values.exponent_array[i]);
  }
  for (var i = 0; i < 23; i++) {
    setCheckbox('cbmant'+i, values.mantisse_array[i]);
  }
  setTextField('binary', values.binaryRepr);
  setTextField('hexadecimal', values.hexadecimalRepr);
  if (values.input_value !== "") {
    setTextField('decimal', values.input_value);
    setElement('dec_repr_text', 'You entered');
  } else {
    setTextField('decimal', values.decimalRepr);
    setElement('dec_repr_text', 'Decimal representation');
  }
  setTextField('highprecision_decimal', values.highprecision_decimal);
  setTextField('representation_error', values.representation_error);

  setError(values.infomessage);
}