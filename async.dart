

void main(){
work();
}

void work () async{
  task1();
 String results2r= await task2();
  task3(results2r);
}
void task1(){
  String result= '1 is done';
  print('1 is done');

}
Future task2 () async{
  Duration threeseconds=Duration(seconds:1);
 String results;
  await Future.delayed(threeseconds,(){
    results='yerok';
    print('2 is done');
  });
  
  return results;
  
  
}

void task3(String results2r){
    String result= '3 is done';
  print('3 is done with $results2r');
  
}