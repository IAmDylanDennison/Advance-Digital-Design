//Dylan Dennison
//Lab 4
//11/14/21

module lab4code(Alarm, Panic, Enable, Exiting, Window, Door, Garage);

   //varibles
   output reg Alarm;
   input Panic, Enable, Exiting, Window, Door, Garage;


   always @ (Panic or Enable or Exiting or Window or Door or Garage)
   begin

   Alarm <= (((!(Window && Door && Garage)) && (!(Exiting)) && Enable) || Panic); 
   end
endmodule

