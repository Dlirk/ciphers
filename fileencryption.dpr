program fileencryption;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
  option:string;
procedure caesar;

var
  shift,msg:string;
  i,char:integer;

begin
  write('Enter a message: ');
  readln(msg);

  write('Shift by? ');
  readln(shift);

  for i := 1 to length(msg) do
    begin
      char:= ord(msg[i]) + strtoint(shift);
      msg[i] := chr(char);
    end;

  writeln(msg);
  readln;


end;

begin
  option :='none';
  while option<>'1' do
    begin
      write('Which cipher do you want to use? ');
      readln(option);
      if option='1' then caesar()
    end
end.

