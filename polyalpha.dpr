program polyalpha;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  key,msg:string;
  char,i,rem:integer;
begin
  write('Enter your message: ');
  readln(msg);

  write('Enter your key: ');
  readln(key);

  for i := 1 to length(msg) do
    begin
      char:= ord(msg[i]) + (ord(key[i])-96);
      if ord(char) <= 122 then
        msg[i]:=chr(char)

      else

      if ord(char) > 122 then
        begin
          rem:=ord(char)-122;
          char:= 97 + rem;
          msg[i]:=chr(char);
        end;

    end;

   writeln(msg);
   readln;
end.
