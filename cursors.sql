
DELIMITER $$
create procedure amtlist(inout atmamount varchar(1000))
BEGIN 
declare finished integer default 0;
declare amtcur int(100);
declare cur1 cursor for select amount from atm ;
declare continue handler for not found set finished=1;

open cur1;
getamount: loop
fetch cur1 into amtcur ;
if finished = 1 then leave getamount;
end if;
set atmamount = concat(amtcur,";",atmamount);
end loop getamount;
close cur1;
END$$
DELIMITER ;

set @amtlist = "";
call amtlist(@amtlist);
select @amtlist; 



DELIMITER $$
create procedure namelist(inout signupname varchar(1000))
BEGIN 
declare finished integer default 0;
declare namecur varchar(15);
declare cur2 cursor for select name from signup;
declare continue handler for not found set finished=1;

open cur2;
getname: loop
fetch cur2 into namecur ;
if finished = 1 then leave getname;
end if;
set signupname = concat(namecur,";",signupname);
end loop getname;
close cur2;
END$$
DELIMITER ;

set @namelist = "";
call namelist(@namelist);
select @namelist; 
