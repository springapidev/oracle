SELECT lower('Md. shamim sarker'),
  upper('Md. shamim sarker'),
  initcap('Md. shamim sarker'),
  concat('Shamim','Sarker'),
  substr('I Love You', 1, 6), --1 is starting value and 6 is length
  instr('I Love You', 'v'),
  length('I Love You'),
  lpad(100, 10, '*'),
  rpad(100, 10, '*'),
  trim('I' from 'I Love You'),
  replace('I Love You', 'Love', 'Hate')
FROM dual;