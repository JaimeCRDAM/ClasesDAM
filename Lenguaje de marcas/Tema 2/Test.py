import codecs
def SomethingName(input):
  Length = len(input)
  Result = Length
  if ((Result - 1 & 1) == 0):
    Result = Result + -1
    if (2 < Result): 
      Result = (ord(input[2]) * 9230) / 2 + 1
    
  
  else: 
    Result = (Result + -1) * 645629
    if (Result < 0): 
      Result = Result + 3
    
    Result = ((Result >> 2) * 13) / 7
  
  return Result

print(SomethingName("Hanndel"))

