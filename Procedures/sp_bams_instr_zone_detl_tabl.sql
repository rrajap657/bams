create or replace procedure sp_bams_instr_zone_detl_tabl (
                                                    p_zone_name VARCHAR2,
                                                    p_state_id  NUMBER)
as

begin
   
    
  insert into bams_zone_detl_tabl(zone_id,zone_name,state_id )
  values(seq_zone_id.nextval,p_zone_name,p_state_id);
  
      
        if p_zone_name in('!','@','#','$','%','^','&','*') then
            raise_application_error(-20777, 'You can''t enter special characters instead give alphabets'); 
        end if;
    
end;

