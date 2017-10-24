# find_title
# Takes an input of a full name in train's format and identifies proper title.
find_title = function(string){
  escape = 0
  curr_pos = 1
  start = 0
  stop = 0
  while(escape != 1){
    if(substring(string, curr_pos, curr_pos) == ","){
      escape = escape + 1
      start = curr_pos
    }
      curr_pos = curr_pos+1
  }
  
  while(escape != 2){
    if(substring(string, curr_pos, curr_pos) == "."){
      escape = escape + 1
      stop = curr_pos
    }
      curr_pos = curr_pos + 1
  }
  escape = 0
  return(substr(string, start + 2, stop))
}
Title = ""
for(i in 1:nrow(train)){
  Title[i] = find_title(train[i, "Name"])
}

adjust_title = function(array){
  for (i in 1:length(array)){
    if (array[i] == "Mlle.") {
      array[i] = "Miss."
    }
    if (array[i] == "Ms."){
      array[i] = "Miss."
    }
    
  }
}