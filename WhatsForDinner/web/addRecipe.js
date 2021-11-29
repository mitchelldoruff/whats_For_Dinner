 $(document).ready(mainLoad);


 function mainLoad() {
   addButtonListeners();
 }


function addButtonListeners(){
  $("#addInst").click(addInstruction);
  $("#addIngr").click(addIngredient);
}
var countInst = 1;
function addInstruction(){
  countInst += 1;
  if (countInst > 15) {
    alert("15 Instructions Max");
    return;
  }
  $("<input type=\"text\" name = \"inst" + countInst +  "\" placeholder = \"Instruction\">").appendTo("#instructions");
}
var countIngr = 1;
function addIngredient(){
  countIngr += 1;
  if (countIngr > 15) {
    alert("15 Ingredients Max");
    return;
  }
  $("<input type=\"text\" name = \"ing" + countIngr +  "\" placeholder = \"ingredient\">").appendTo("#ingredients");
}
