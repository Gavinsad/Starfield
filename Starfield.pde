class explodysq extends explody{
 explodysq(){
   myAT =1;
           myX=250;
   myY=250;
   myH=(int)(Math.random()*3+6);
   myW=(int)(Math.random()*3+6);
   myO=((int)Math.random()*255+120);
    mySp= Math.random()*7+6;
    myCov1 =Math.random()*255+50;
     myCov2 =Math.random()*255+50;
   myCov3 = Math.random()*255+50;
   myA = (Math.random()*Math.PI*2);
   myAC = -0.1;
   
   
   
 }
 
 
 
 
}
 
 
 
 class explodyop extends explody{
    explodyop(){
      myAT =2;
        myX=250;
   myY=250;
   myH=(int)(Math.random()*5+3);
   myW=(int)(Math.random()*5+5);
   myO=((int)Math.random()*255+120);
    mySp= Math.random()*7+10;
    myCov1 =Math.random()*255+50;
     myCov2 =Math.random()*255+50;
   myCov3 = Math.random()*255+50;
   myA = (Math.random()*Math.PI*2);
   myAC = -0.1;
     
    }
   
   
  }
class explody{
  double myX, myY, myH, myW;
  double mySp, myA, myAT;
  double myCov1, myCov2, myCov3, myO, myAC;
  explody(){
    myAT =0;
   myX=250;
   myY=250;
   myH=10;
   myW=10;
   myO=((int)Math.random()*255+120);
    mySp= Math.random()*7+13;
    myCov1 =Math.random()*255+50;
     myCov2 =Math.random()*255+50;
   myCov3 = Math.random()*255+50;
   myA = (Math.random()*Math.PI*2);
   myAC = 0.1;
 
 }
  void move(){
 
    myX = myX + Math.cos(myA)*mySp;
    myY =  myY + Math.sin(myA)*mySp;
    myA = myA + myAC;  
   
   
  }
  void show(){
    fill((float)myCov1,(float)myCov2,(float)myCov3,(float)myO);
   if (myAT ==0){ellipse((float)myX,(float)myY,(float)myH,(float)myW);}
   if(myAT==1){quad((float)myX+(float)(Math.random()*10-2),
 (float)myY+(float)(Math.random()*10-6),
 (float)myX+(float)(Math.random()*10-6),
 (float)myY+(float)(Math.random()*10-2),
 (float)myX+(float)(Math.random()*10-6),
 (float)myY+(float)(Math.random()*10-6),
 (float)myX+(float)(Math.random()*10-2),
 (float)myY+(float)(Math.random()*10-6)
 );}
 if(myAT==2){triangle( 
 (float)myX,
 (float)myY+10,
 (float)myX-5,
 (float)myY+5,
 (float)myX+5,
 (float)myY+5
 );}
   
 
   
    }
           

 
 
 
 
}//end of class

explody [] ah = new explody[150];
  void setup(){
    smooth();
   background(32,42,68);
   size(500,500);
   noStroke();
   for (int i=0;i<ah.length;i++){
     ah[i] = new explody();
   }
   for ( int i=0;i<100;i++){
     ah[i] = new explodyop();
  }
  for(int i=0;i<100;i++){
    ah[i] = new explodysq();


  }
  }
   
  void draw(){
  fill(32,42,68,60);
   rect(0,0,width,height);
    for(int i=0;i<ah.length;i++){
      ah[i].move();
      ah[i].show();
     
     
    }
 
   
  }
