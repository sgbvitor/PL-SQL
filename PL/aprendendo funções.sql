--Configuração para poder exibir saidas
SET SERVEROUTPUT ON;
--Programa para cria v_DESCRICAO
DECLARE
   v_ID SEGMERCADO.ID%type := 1;
   v_IDSaida SEGMERCADO.ID%type;
   v_DESCRICAO SEGMERCADO.DESCRICAO%type;

BEGIN
   SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID;
   SELECT ID INTO v_IDSaida FROM SEGMERCADO WHERE ID = v_ID;
   dbms_output.put_line(v_DESCRICAO);
   dbms_output.put_line(v_IDSaida);

END;

--Cria função para obter descrição do segmento de mercado
CREATE OR REPLACE FUNCTION obter_descricao_segmercado
(p_ID IN SEGMERCADO.ID%type)
RETURN SEGMERCADO.DESCRICAO%type
IS
   v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
   SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = p_ID;
   RETURN v_DESCRICAO;
END;

--Mostra o conteudo ultilizando a função criada
SELECT ID, obter_descricao_segmercado(ID), DESCRICAO, LOWER(DESCRICAO) FROM SEGMERCADO;