-- Active: 1726576516959@@localhost@1234@20242_ipi_pbdi_stephanie@public

-- EXERCÍCIO 1:
-- Para os exercícios que não especifiquem intervalos explicitamente, considere os seguintes intervalos:
-- Números inteiros: Números inteiros: [1, 100]
-- Números reais: [1, 10]

-- 1.1 Faça um programa que gere um valor inteiro e o exiba.
DO
$$
DECLARE
  n1 INTEGER;
  limite_inferior INTEGER := 1;
  limite_superior INTEGER := 100;
BEGIN
  n1 := limite_inferior + floor(random() * (limite_superior - limite_inferior + 1)) :: int;
  RAISE NOTICE '%', n1;
END;
$$;

-- 1.2. Faça um programa que gere um valor real e o exiba.
DO
$$
DECLARE
  n1 NUMERIC (10, 2);
  limite_inferior INTEGER := 1;
  limite_superior INTEGER := 10;
BEGIN
  n1 := limite_inferior + random() * (limite_superior - limite_inferior);
  RAISE NOTICE '%', n1;
END;
$$;

-- 1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma
-- temperatura em graus Celsius. Faça a conversão para Fahrenheit e exiba.


-- 1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
-- que calculamos para chegar às potenciais raízes de uma equação do segundo grau.


-- 1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
-- e a raiz quadrada de seu sucessor.


-- 1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
-- valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve
-- exibir o valor total do terreno.


-- 1.7 Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
-- pessoa no intervalo [1980, 2000] e gere um inteiro que representa o ano atual no intervalo
-- [2010, 2020]. O programa deve exibir a idade da pessoa em anos. Desconsidere detalhes
-- envolvendo dias, meses, anos bissextos etc.
