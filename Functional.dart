class Car{
  
  Function drive;
  
  Car({this.drive});
  
 
}

 void driveSlowly(){
    print('drive slow');
  }
   void driveFast(){
    print('drive fast');
  }


void main(){
  Car myCar= Car(drive:driveSlowly);
  myCar.drive();
    
    
}