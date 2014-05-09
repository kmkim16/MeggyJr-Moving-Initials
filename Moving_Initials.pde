#include <MeggyJrSimple.h>
/*Draw Letter
Display Slate
delay
ClearSlate
Check Buttons
Update the position based on direction
Check limits
*/

struct Point //creating structure
{
  int x; //set x coordinate for point
  int y; //set y coordinate for point
};

Point s1 = {3,6}; //assigns coordinate to point
Point s2 = {3,5};
Point s3 = {3,4};
Point s4 = {3,3};
Point s5 = {4,5};
Point s6 = {4,4};
Point s7 = {5,6};
Point s8 = {5,3};

Point letterArray[8] = {s1, s2, s3, s4, s5, s6, s7, s8}; //initializing letter array

void setup()
{
  MeggyJrSimpleSetup();
}

void loop()
{ 
  drawK();
  
CheckButtonsDown();
  if (Button_Down)
   {
     for (int i = 0; i < 8; i++)
       letterArray[i].y--;
   }
   
  if (Button_Up)
   {
     for (int i = 0; i < 8; i++)
       letterArray[i].y++;
   }
    
  if (Button_Right)
     for (int i = 0; i < 8; i++)
       letterArray[i].x++;
  
  if (Button_Left)
   {
     for (int i = 0; i < 8; i++)
       letterArray[i].x--;
   }
   
for (int i = 0; i < 8; i++)
  {
    if (letterArray[i].y > 7) //check and adjust limits
      letterArray[i].y = 0;
    
    if (letterArray[i].y < 0)
      letterArray[i].y = 7;
      
    if (letterArray[i].x > 7)
      letterArray[i].x = 0;
    
    if (letterArray[i].x < 0)
      letterArray[i].x = 7;
  }
  
  DisplaySlate();
  delay(100);
  ClearSlate();
}

void drawK()
 {
  for (int i = 0; i < 8; i++)
   {
     DrawPx(letterArray[i].x, letterArray[i].y, Blue);
   }
 } 



   
