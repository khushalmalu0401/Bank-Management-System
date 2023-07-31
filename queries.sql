select name as customer_name,pinno1 as pin from signup join login on signup.formno=login.formno;

select name as customer_name,pan as pan_num,aadhar as aadhar_num from signup join signup2 on signup.formno=signup2.formno;

select name as customer_name, income as earning from signup join signup2 on signup.formno=signup2.formno;

select name as customer_name, accounttype1 from signup join signup3 on signup.formno=signup3.formno;







