DECLARE

CONTADOR NUMBER:=1;

BEGIN

cursor c1 is
     SELECT id POS FROM POSICIONES MINUS SELECT IDPOSICION  PAR FROM PISTAS;


FOR POSICIONES_REC in c1
LOOP

INSERT INTO INCOGNITAS(ID,IDPOSICION,IDPARTIDA,NUMINTENTO,VALOR)
VALUES (Incognitas_seq.NEXT_VAL, POSICIONES_REC.POS, 1, NULL, NULL) 
END LOOP;



END;
/