List subjects = ['Maths', 'English', 'Kiswahili','Physics', 'Biology', 'Chemistry','History','Computer Studies'];


String determiner(double average){
  if(average >= 90){
    return 'A';
  }
  else if(average >= 60){
    return 'B';
  }
  else if(average >= 40){
    return 'C';
  }
  else if(average >= 20){
    return 'D';
  }
  else{
    return 'F';
  }
}