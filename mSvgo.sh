#!/bin/bash
 trap 'echo -en "\ec"; stty sane; exit' SIGINT
 aa=0
 A(){ for b in $(seq 0 24);do E${b};done; }
 B()
{
  local c
  IFS= read -s -n1 c 2>/dev/null >&2
  if [[ $c = $(echo -en "\e") ]]; then
    read -s -n1 c 2>/dev/null >&2
    if [[ $c = \[ ]]; then
      read -s -n1 c 2>/dev/null >&2
      case $c in
        A) echo d ;;
        B) echo e ;;
        C) echo f ;;
        D) echo g ;;
      esac
    fi
  elif [[ "$c" == "$(echo -en \\x0A)" ]]; then
    echo enter
  fi
}
 C()
{
 if [[ $i == d ]];then ((aa--));fi
 if [[ $i == e ]];then ((aa++));fi
 if [[ $aa -lt 0  ]];then aa=24;fi
 if [[ $aa -gt 24 ]];then aa=0;fi;
}

 D()
{
 j1=$((aa+1)); k1=$((aa-1))
 if [[ $k1 -lt 0   ]];then k1=24;fi
 if [[ $j1 -gt 24 ]];then j1=0;fi
 if [[ $aa -lt $aa ]];then echo -en "\e[0m";E$k1;else echo -en "\e[0m";E$j1;fi
 if [[ $j1 -eq 0   ]] || [ $k1 -eq 24 ];then
 echo -en "\e[0m" ; E$k1; E$j1;fi;echo -en "\e[0m";E$k1;E$j1;
}
 TXa()
{
 for (( a=2; a<=38; a++ ))
  do
   echo -e "\e[${a};1H\e[47;30m│\e[0m                                                                                \e[47;30m│\e[0m"
  done
 echo -en "\e[1;1H\033[0m\033[47;30m┌────────────────────────────────────────────────────────────────────────────────┐\033[0m";
 echo -en "\e[3;3H\e[1m *** svgo ***\e[0m";
 echo -en "\e[4;3H\e[2m Scalable Vector Graphics Optimizer\e[0m";
 echo -en "\e[5;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[10;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[11;3H\e[2m Аргументы\e[0m                                                       \e[36m Arguments:\e[0m";
 echo -en "\e[12;3H INPUT                                                     \e[32m Alias to --input\e[0m";
 echo -en "\e[13;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[14;3H\e[2m Опции:\e[0m                                                            \e[36m Options:\e[0m";
 echo -en "\e[34;1H\e[47;30m├\e[0m────────────────────────────────────────────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[36;1H\e[47;30m├\e[0m─ \xE2\x86\x91 Up ───── \xE2\x86\x93 Down ──── \xe2\x86\xb2 Select Enter ────────────────────────────────────────\e[0m\e[47;30m┤\e[0m";
 echo -en "\e[39;1H\033[0m\033[47;30m└────────────────────────────────────────────────────────────────────────────────┘\033[0m";
}
  E0(){ echo -en "\e[6;3H Установка                                                          \e[32m INSTALL \e[0m";}
  E1(){ echo -en "\e[7;3H Описание                                                       \e[32m DESCRIPTION \e[0m";}
  E2(){ echo -en "\e[8;3H Использование                                                        \e[32m USAGE \e[0m";}
  E3(){ echo -en "\e[9;3H                                                                     \e[32m Nodejs \e[0m";}
  E4(){ echo -en "\e[15;3H Output the version number                                     \e[32m -v --version \e[0m";}
  E5(){ echo -en "\e[16;3H Входные файлы, \"-\" для STDIN                        \e[32m -i, --input <INPUT...> \e[0m";}
  E6(){ echo -en "\e[17;3H Входная строка данных SVG                            \e[32m -s, --string <STRING> \e[0m";}
  E7(){ echo -en "\e[18;3H Входная папка, оптимизируйте, перезапишите файлы *.svg\e[32m -f --folder <FOLDER> \e[0m";}
  E8(){ echo -en "\e[19;3H Выходной файл или папка, \"-\" для STDOUT            \e[32m -o --output <OUTPUT...> \e[0m";}
  E9(){ echo -en "\e[20;3H Установить количество цифр в дробной части        \e[32m -p --precision <INTEGER> \e[0m";}
 E10(){ echo -en "\e[21;3H Пользовательский файл конфигурации, поддерживается .js   \e[32m --config <CONFIG> \e[0m";}
 E11(){ echo -en "\e[22;3H Вывод в виде строки URI данных (base64)                 \e[32m --datauri <FORMAT> \e[0m";}
 E12(){ echo -en "\e[23;3H Убедиться, что оптимизации применены                           \e[32m --multipass \e[0m";}
 E13(){ echo -en "\e[24;3H Сделайте SVG красиво печатаемым                                   \e[32m --pretty \e[0m";}
 E14(){ echo -en "\e[25;3H Номер отступа при красивой печати SVG                   \e[32m --indent <INTEGER> \e[0m";}
 E15(){ echo -en "\e[26;3H Разрыв строки, используемый при выводе SVG: lf, crlf           \e[32m --eol <EOL> \e[0m";}
 E16(){ echo -en "\e[27;3H Убедитесь, что SVG заканчивается переносом строки          \e[32m --final-newline \e[0m";}
 E17(){ echo -en "\e[28;3H Используйте с --folder. Рекурсивно оптимизирует *.svg       \e[32m -r --recursive \e[0m";}
 E18(){ echo -en "\e[29;3H Исключить файлы, соответствующие шаблону выражения  \e[32m --exclude <PATTERN...> \e[0m";}
 E19(){ echo -en "\e[30;3H Выводить только сообщения об ошибках                            \e[32m -q --quiet \e[0m";}
 E20(){ echo -en "\e[31;3H Показать доступные плагины и выйти                          \e[32m --show-plugins \e[0m";}
 E21(){ echo -en "\e[32;3H Вывод обычного текста без цвета                                 \e[32m --no-color \e[0m";}
 E22(){ echo -en "\e[33;3H Display help for command                                         \e[32m -h --help \e[0m";}
 E23(){ echo -en "\e[35;3H Grannik                                                                \e[36m Git \e[0m";}
 E24(){ echo -en "\e[37;3H                                                                       \e[34m Exit \e[0m";}
 INI(){ echo -en "\ec" ;stty sane;TXa;A; };INI
 while [[ "$l1" != " " ]]; do case $aa in
  0)D;echo -en "\e[47;30m"; (E0);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m sudo snap install svgo\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  1)D;echo -en "\e[47;30m"; (E1);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Утилита предназначена для оптимизации файлов векторной графики в формате SVG,
 применяя различные методы сжатия, удаления ненужных данных и оптимизации
 структуры файла для уменьшения размера и улучшения производительности.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  2)D;echo -en "\e[47;30m"; (E2);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m Usage: svgo [options] [INPUT...]\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  3)D;echo -en "\e[47;30m"; (E3);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Инструмент на базе Nodejs для оптимизации файлов векторной графики SVG.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  4)D;echo -en "\e[47;30m"; (E4);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m svgo -v\e[0m
#
\e[32m svgo --version\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  5)D;echo -en "\e[47;30m"; (E5);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  6)D;echo -en "\e[47;30m"; (E6);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  7)D;echo -en "\e[47;30m"; (E7);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  8)D;echo -en "\e[47;30m"; (E8);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Выходной файл или папка (по умолчанию такая же, как и входная), \"-\" для STDOUT:
\e[32m svgo -o input.svg output.svg\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
  9)D;echo -en "\e[47;30m"; (E9);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Установить количество цифр в дробной части, переопределяет параметры плагинов.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 10)D;echo -en "\e[47;30m"; (E10);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Пользовательский файл конфигурации, поддерживается только .js
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 11)D;echo -en "\e[47;30m";(E11);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Вывод в виде строки URI данных (base64),
 закодированного URI (enc) или незакодированного (unenc).
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 12)D;echo -en "\e[47;30m";(E12);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Пропустите SVG несколько раз, чтобы убедиться, что все оптимизации применены.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 13)D;echo -en "\e[47;30m";(E13);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 14)D;echo -en "\e[47;30m";(E14);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 15)D;echo -en "\e[47;30m";(E15);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Разрыв строки, используемый при выводе SVG: lf, crlf
 Если не указано, используется платформа по умолчанию.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 16)D;echo -en "\e[47;30m";(E16);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 17)D;echo -en "\e[47;30m";(E17);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Используйте с --folder. Рекурсивно оптимизирует файлы *.svg в папках.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 18)D;echo -en "\e[47;30m";(E18);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Используйте с --folder. Исключить файлы,
 соответствующие шаблону регулярного выражения.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 19)D;echo -en "\e[47;30m";(E19);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 Выводить только сообщения об ошибках, а не обычные сообщения о состоянии.
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 20)D;echo -en "\e[47;30m";(E20);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 21)D;echo -en "\e[47;30m";(E21);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 22)D;echo -en "\e[47;30m";(E22);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
\e[32m svgo -h\e[0m
#
\e[32m svgo --help\e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 23)D;echo -en "\e[47;30m";(E23);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "
 mSvgo Описание утилиты svgo. Scalable Vector Graphics Optimizer
 asciinema:  \e[36m https://asciinema.org/a/621798\e[0m
 codeberg:   \e[36m https://codeberg.org/Grannik/mSvgo\e[0m
 github:     \e[36m \e[0m
 gitlab:     \e[36m \e[0m
 sourceforge:\e[36m \e[0m
 notabug     \e[36m \e[0m
 bitbucket   \e[36m \e[0m
 framagit:   \e[36m \e[0m
 gitea:      \e[36m \e[0m
 gogs:       \e[36m \e[0m
";echo -en "\e[47;30m ENTER = main menu ";read;INI;fi;;
 24)D;echo -en "\e[47;30m";(E24);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;exit 0;fi;;
esac;C;done
