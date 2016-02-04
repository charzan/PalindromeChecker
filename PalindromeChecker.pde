public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");

  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public void draw()
{
 fill(233);
 ellipse(width/2 + 10, 20, 5, 5);
 ellipse(width/2 - 10, 20, 6, 6);
 fill(103);
 line(width/2-20, 40, width/2+20, 40);
}
public boolean palindrome(String word)
{
  String allLowerCase = new String();
  String lettersOnly = new String();

  allLowerCase = word.toLowerCase();
//removes all spaces and other characters
  for(int i = 0; i < allLowerCase.length(); i ++)
  {
    if(Character.isLetter(allLowerCase.charAt(i)))
    {
      lettersOnly += allLowerCase.charAt(i);
    }
  }

  if(lettersOnly.equals(reverse(lettersOnly)))
  {
    return true;
  }
  
    return false;
  
  
  
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--)
    {
      sNew += str.substring(i, i + 1);
    }
    return sNew;
}


