@echo off
setlocal
title Phantom DB 
color 4
pause
echo -----------------------------------
echo -     Phantom DB - Pokedox        -
echo -----------------------------------                                                                                                                                 
echo oooooooooooddxxxxxxxdocodxxocldxxxxxxxxxxxxo:clcoxdlcoxxxxxxoldxxxxxxxxxxdclxxxxxoldx
echo echo ooolclooc:coodxxxxxxxocldxxo:coddllllccc:::;,,;,:c:,';ldddddoodxddxxddxxxdclxxxxxdodd
echo ooocccoollloooxxxxxxd:,:ooloc::;;''''..'.........''..',;;,':lcloc:loc:oxxoclxdloxoc:;
echo lllloooooloooodxxxxxdoc;,'.'.......''.........'.''..'''''......''',;;;lxxdloxdc::;,',
echo echo llllllc::cllooxxxxxddl:,'..'''''............''''''.............'',;coodxxxxdlc:lolood
echo ooolccccccllodxxxdoc;,'''''''''''''...',,,,,,,,,,''........'''''''',;codxxxdccldxxxxx
echo xxdocclllloddxxdl:,'..'''''''''',,'';;:looooooolc;;:::;,''''''''.''''',:llolloloxxxxx
echo dddooooddddxddl:,'''..'''''',;:clo::lccdxxxdodddocldxddolc;'.'''..'''...',c::l:lxxdod
echo dddxxxxxxxxdl:,''.''..''',;:lolccoccoccdxddoclodo:;odlldxdoc::,'..''''....'';l:lxxl,,
echo xxxxxxxxxdoc,'''.........',;:;,'',;:oclxdlclddl:;'.cl,,odllddl::'........ ..';:lxdl;;
echo xxxxxxxxdl:''''.............',;:;;:ldddxdc::;::;;;;lo:;odl:;::col;,..........';ldoloo
echo xxxxxxxdl;''''''..''''...''',:ldxxxxxxxxxxdddddxxxdlc:ldoc::codxxdl:;,''''''''';loc:c
echo xxxxxxdl,'''''''.';;,''''''''',:ldxxxxxxxxxxxxxxxxxdddl;.   ..;odddool:,'''''''';looo
echo xxxxxdl,'''''''',codl:,''''''''',;codxxxxxxxxxxxxxxxdl'        'ldxxxxdc,'''''''',ldx
echo xxxxdl;'''''''',ldxxxdo:,'''''''''';codxxxxxxxxxxxxxd;          'ldxxxxdc,'''''''':ox
echo xxxxo:'''''''',ldxxxxxxdo:,'''''''''';coddxxxxxxxxxdl.  ..''''. .;ddxxxddc,''''''',cd
echo xxxdl,''''''',cdxxxxdxddoc:,''''''''''';coddxxxxxxxdc. .''''..   .ldxxxxxo:'''''''';l
echo xxdo:'''''''':oxxxxdl:,........'''''''''',;codxxxxxdc.           .cdxxxxxdl;''''''',c
echo xxdl,''''''',cdxxxd:.          .,''''''''''',:lddxxxc.            ,lddxxxxd:'''''''';
echo xxdc,''''''';oddxd;.  .. ..    .;c;''''''''''',:lddd:.             .';:ldxdl,''''''',
echo xxdc,''''''':dxddc.  .''',,''.  'ldl;''''''''''',::;.                  .;odo;''''''',
echo xxdc'''''''':dxxo,              .lxddl;,'''''','''..                     ,oo:''''''',
echo xxdc'''''''':ool:.              .lxxxxdl:,''''''''''..                   .lo:''''''',
echo xxdc,'''''''''..                .:oddxxddlc:,'''''''''..                 .cl;''''''',
echo xxdc,'''''''.                     .':lodxdddc'.'''''''''...              .:c,''''''',
echo xxxl;'''''''..                       ..;ldxd:. ...''''''''...             ,;'''''''';
echo xxxdc,'''''''.                          .:ol,    ...'''''''''..           .'''''''',c
echo xxxdo;'''''''..                          .,;.       ..'''''''''..         .'''''''';o
echo xxxxdc,'''''''..                           .          ..'''''''''..      ..''''''',ld
echo xxxxxo:''''''''..                                       ..'''''''''... ...''''''',cdx
echo xxxxxdo:''''''''..                                        ..''''''''''.'''''''''':odx
echo xxxxxxdo:'''''''''..                                        ..''''''''''''''''',:odxx
echo xxxxxxxdo:,''''''''..                                         ...''''''''''''',cddxxx
echo xxxxxxxxxdc;'''''''''..                                         .'''''''''''';ldxxxxx
echo xxxxxxxxxxdo:,'''''''''...                                     ..'''''''''',:odxxxxxx
echo xxxxxxxxxxxxdl;,''''''''''...                               ...'''''''''',:ldxxxxxxxx
echo xxxxxxxxxxxxxdol;,'''''''''''.....                     .....''''''''''',:ldxxxxxxxxxx
echo xxxxxxxxxxxxxxxxdl:,''''''''''''''.....................''''''''''''',;:lddxxxxxxxxxxx
echo xxxxxxxxxxxxxxxxxddl:,''''''''''''''''''''''''''''''''''''''''''''',:oddxxxxxxxxxxxxx
echo +===========================================+
echo  =      DualHooked... wait 5 seconde       =
echo +===========================================+
timeout /t 5 >nul
cls
color 4
echo.

echo +==========================================+
echo +          Welcome to your panel           +
echo +  Want more tool ?  github.com/b0xCastor  +
echo +==========================================+  
echo +==================================================================+                                         
echo +Info : Mettre PhantomDB dans un dossier ou contient les databases.+
echo +==================================================================+    

color 4
set "folder=%~dp0"
set "filetypes=txt sql"

set /p "searchTerm=Entrez l'id discord de votre cible: "

for %%f in (%filetypes%) do (
  echo Recherche dans les fichiers de type .%%f ...
  findstr /i /L /S "%searchTerm%" "%folder%\*.%%f" > "%folder%\results_%%f.txt"
  type "%folder%\results_%%f.txt"
  del "%folder%\results_%%f.sql"
)

pause
endlocal