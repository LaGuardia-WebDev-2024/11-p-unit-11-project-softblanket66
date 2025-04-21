var treeX = [50, 150, 250, 350, 450]; 
var treeY = [330, 300, 320, 350, 290]; 
var treeSize = [40, 50, 60, 70, 55]; 
var snowX = [10, 160, 280, 450,100,290];
var snowY = [50, 70, 40, 50,150,100];

setup = function() {

   size(600, 450); 
   background(164, 212, 255);
  
  var myEmoji = ["☃️,","🦌", "🏂",];
  textSize(70);
  text(myEmoji[0],50,300);
  text(myEmoji[1],460,290);
  text(myEmoji[2],230,290);
  text(myEmoji[3],10,30);
  text(myEmoji[4],10,30);
  text(myEmoji[5],10,30);
  text(myEmoji[6],10,30);
  

  
   textSize(40);
   for(var i = 0; i < snowX.length; i++){
     text("❆", snowX[i], snowY[i]);
   }
   
   fill(255,255,255);
   rect(-10, 300, 610, 150);

   for(var i = 0; i < treeX.length; i++) {
     drawTree(treeX[i], treeY[i], treeSize[i]);
   }
}
function drawTree(x, y, size) {
   fill(34, 139, 34); // Green for the tree
   triangle(x, y - size, x - size / 2, y, x + size / 2, y);  // Tree top
   triangle(x, y - size + 20, x - size / 2, y + 20, x + size / 2, y + 20);  // Tree bottom
   fill(139, 69, 19); // Brown for tree trunk
   rect(x - 10, y, 20, 30); // Tree trunk
}

var drawFace=function(x, y){
  var faceSize = random(15,20);
  var faceX = x + random(-250,250);
  var faceY = y + random(-250,250);
  fill(235, 253, 255);
  ellipse(faceX - 10, faceY - 10, 10, 10);
}


  
//🟡mouseClicked Function - will run when the mouse is clicked
mouseClicked = function(){
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  console.log(myText);


  drawFace(mouseX,mouseY);
};