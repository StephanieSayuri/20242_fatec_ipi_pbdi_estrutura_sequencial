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
DO
$$
DECLARE
  celsius NUMERIC (5, 1);
  fahrenheit NUMERIC (5, 1);
  limite_inferior INTEGER := 20;
  limite_superior INTEGER := 30;
BEGIN
  celsius := limite_inferior + random() * (limite_superior - limite_inferior);
  fahrenheit := celsius * 1.8 + 32;
  RAISE NOTICE 'ceusius %C° = fahrenheit %F°', celsius, fahrenheit;
END;
$$;

-- 1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
-- que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
DO
$$
DECLARE
  a NUMERIC (10, 2);
  b NUMERIC (10, 2);
  c NUMERIC (10, 2);
  d NUMERIC (10, 2);
  limite_inferior INTEGER := 1;
  limite_superior INTEGER := 10;
BEGIN
  a := limite_inferior + random() * (limite_superior - limite_inferior);
  b := limite_inferior + random() * (limite_superior - limite_inferior);
  c := limite_inferior + random() * (limite_superior - limite_inferior);
  d := b ^ 2 - (4 * a * c);
  RAISE NOTICE 'A = %, B = %, C = %, DELTA = %', a, b, c, d;
END;
$$;

-- 1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
-- e a raiz quadrada de seu sucessor.
DO
$$
DECLARE
  n1 INTEGER;
  limite_inferior INTEGER := 1;
  limite_superior INTEGER := 100;
BEGIN
  n1 := limite_inferior + floor(random() * (limite_superior - limite_inferior + 1)) :: int;
  RAISE NOTICE '%', ||/ (n1 - 1);
  RAISE NOTICE '%', |/ (n1 + 1);
END;
$$;

-- 1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
-- valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve
-- exibir o valor total do terreno.
DO
$$
DECLARE
  a NUMERIC(10, 2);
  l NUMERIC(10, 2);
  p NUMERIC(10, 2);
  limite_inferior INTEGER := 1;
  limite_superior INTEGER := 10;
BEGIN
  a := limite_inferior + random() * (limite_superior - limite_inferior);
  l := limite_inferior + random() * (limite_superior - limite_inferior);
  p := 60 + random() * 70;
  RAISE NOTICE 'preço = %', p;
END;
$$;

-- 1.7 Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
-- pessoa no intervalo [1980, 2000] e gere um inteiro que representa o ano atual no intervalo
-- [2010, 2020]. O programa deve exibir a idade da pessoa em anos. Desconsidere detalhes
-- envolvendo dias, meses, anos bissextos etc.
DO
$$
DECLARE
  nasci INTEGER;
  atual INTEGER;
  limite_inferior INTEGER := 1;
  limite_superior INTEGER := 100;
BEGIN
  nasci := 1980 + floor(random() * 21) :: int;
  atual := 2010 + floor(random() * 11) :: int;
  RAISE NOTICE 'ano de nascimento %, ano atual % e idade %', nasci, atual, atual - nasci;
END;
$$;