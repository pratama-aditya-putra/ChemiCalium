program ChemiCalium;
uses crt;
label 1;
var
        name : string;
        input : char;
procedure resource(a : string);
var
        i, j : longint;
        temp : text;
        tabs : array[1..30] of string;
begin
        clrscr;
        case a of
             '2' :      begin
                        assign(temp,'C:\ChemiCalium\sejarah_kimia.txt');
                        reset(temp);
                        for i := 1 to 30 do
                                readln(temp,tabs[i]);
                        close(temp);
                        end;
             '3' :      begin
                        assign(temp,'C:\ChemiCalium\teori_atom.txt');
                        reset(temp);
                        for i := 1 to 30 do
                                readln(temp,tabs[i]);
                        close(temp);
                        end;
             '4' :      begin
                        assign(temp,'C:\ChemiCalium\kimia_dasar.txt');
                        reset(temp);
                        for i := 1 to 30 do
                                readln(temp,tabs[i]);
                        close(temp);
                        end;
             end;
        window(1,1,115,30);textbackground(cyan);clrscr;
        for i := 1 to 29 do begin
                for  j := 1 to 114 do begin
                        if (((tabs[i])[j]='|') or ((tabs[i])[j]='=')) then begin
                                textbackground(blue);write((tabs[i])[j]);
                                end
                        else begin
                                textbackground(cyan);write((tabs[i])[j]);
                                end;
                        end;
                writeln;
                end;
        textbackground(blue);write(tabs[30]);
        repeat
        a:=readkey;
        until (a=#27);

end;
procedure output(n:integer);
type
        ptr = ^string;
var
        temp : text;
        i : longint;
        tabs : array[1..200] of string;
        arrayptr : array[1..200] of ptr;
begin
        clrscr;
        case n of
                1..20 :    begin
                           assign(temp,'C:\ChemiCalium\Data1.txt');
                           reset(temp);
                           for i := 1 to 200 do
                                readln(temp,tabs[i]);
                           for i := 1 to 200 do
                                arrayptr[i]:=@tabs[i];
                           for i := (n*10-9) to (n*10) do
                                writeln(arrayptr[i]^);
                           end;
                21..40 :   begin
                           n:=n-20;
                           assign(temp,'C:\ChemiCalium\Data2.txt');
                           reset(temp);
                           for i := 1 to 200 do
                                readln(temp,tabs[i]);
                           for i := 1 to 200 do
                                arrayptr[i]:=@tabs[i];
                           for i := (n*10-9) to (n*10) do
                                writeln(arrayptr[i]^);
                           end;
                41..60 :   begin
                           n:=n-40;
                           assign(temp,'C:\ChemiCalium\Data3.txt');
                           reset(temp);
                           for i := 1 to 200 do
                                readln(temp,tabs[i]);
                           for i := 1 to 200 do
                                arrayptr[i]:=@tabs[i];
                           for i := (n*10-9) to (n*10) do
                                writeln(arrayptr[i]^);
                           end;
                61..80 :   begin
                           n:=n-60;
                           assign(temp,'C:\ChemiCalium\Data4.txt');
                           reset(temp);
                           for i := 1 to 200 do
                                readln(temp,tabs[i]);
                           for i := 1 to 200 do
                                arrayptr[i]:=@tabs[i];
                           for i := (n*10-9) to (n*10) do
                                writeln(arrayptr[i]^);
                           end;
                81..100 : begin
                           n:=n-80;
                           assign(temp,'C:\ChemiCalium\Data5.txt');
                           reset(temp);
                           for i := 1 to 200 do
                                readln(temp,tabs[i]);
                           for i := 1 to 200 do
                                arrayptr[i]:=@tabs[i];
                           for i := (n*10-9) to (n*10) do
                                writeln(arrayptr[i]^);
                           end;
                101..118 : begin
                           n:=n-100;
                           assign(temp,'C:\ChemiCalium\Data6.txt');
                           reset(temp);
                           for i := 1 to 200 do
                                readln(temp,tabs[i]);
                           for i := 1 to 200 do
                                arrayptr[i]:=@tabs[i];
                           for i := (n*10-9) to (n*10) do
                                writeln(arrayptr[i]^);
                           end;
                end;
end;

procedure Quiz;
label 3, 4, 5;
var
        temp : text;
        a : char;
        tabs1 : array[1..70] of string;
        tabs : array[1..44] of string;
        x, kunci : array[1..10] of char;
        b : boolean;
        nama, d : string;
        i, score, j, c, e : integer;
begin
        for i := 1 to 10 do
                x[i] := ' ';
        nama:=' ';
        score:=0;
        c:=0;
        window(1,1,115,30);textbackground(0);clrscr;
        clrscr;
        assign(temp,'C:\ChemiCalium\Quiz.txt');
        reset(temp);
        for i := 1 to 44 do
                readln(temp,tabs[i]);
        close(temp);
        assign(temp,'C:\ChemiCalium\Quiz_subject.txt');
        reset(temp);
        for i := 1 to 70 do
                readln(temp,tabs1[i]);
        close(temp);
        for i := 1 to 10 do begin
                if (i <= 5) then kunci[i]:='A'
                else kunci[i]:='C';
                end;
        i := 1;
        while (i<=10) do  BEGIN
                window(30,7,91,22);textcolor(black);textbackground(white);
                5:
                if (i = 1) then begin
                        clrscr;
                        for j := 1 to 3 do begin
                                writeln(tabs[j]);
                                END;
                        for j := 1 to 10 do begin
                                gotoxy(6*j-2,2);write(x[j]);
                                end;
                        for j := 4 to 14 do begin
                                gotoxy(1,j);
                                writeln(tabs[j]);
                                END;
                        for j := 1 to 7 do begin
                                gotoxy(2,j+4);writeln(tabs1[j]);
                                end;
                        gotoxy(6*i-2,2);
                        repeat
                        a:=readkey;
                        a:=upcase(a);
                        case a of
                                #65..#69 :      begin
                                                x[i]:=a;
                                                i:=i+1;
                                                end;
                                #13      :      begin
                                                i:=i+1;
                                                end;
                                end;
                        if (i>=1) then b:=true
                        else b:= false;
                        until (b = true);
                        end
                 else if ((i > 1) and (i < 10)) then begin
                        clrscr;
                        for j := 1 to 3 do begin
                                writeln(tabs[j]);
                                END;
                        for j := 1 to 10 do begin
                                gotoxy(j*6-2,2);write(x[j]);
                                end;
                        for j := 18 to 28 do begin
                                gotoxy(1,(j-14));writeln(tabs[j]);
                                END;
                        for j := (7*i-6) to (7*i) do begin
                                gotoxy(2,j+11-7*i);writeln(tabs1[j]);
                                end;
                        gotoxy(6*i-2,2);
                        repeat
                        a:=readkey;
                        a:=upcase(a);
                        case a of
                                #65..#69 :      begin
                                                x[i]:=a;
                                                i:=i+1;
                                                end;
                                #13      :      begin
                                                i:=i+1;
                                                end;
                                #27      :      begin
                                                i:=i-1;
                                                goto 5;
                                                end;
                                end;
                        if ((i>1) or (i<10)) then b:=true
                        else b:= false;
                        until (b = true);
                        end
                 else if (i=10) then begin
                        clrscr;
                        for j := 1 to 3 do begin
                                writeln(tabs[j]);
                                END;
                        3:
                        for j := 1 to 10 do begin
                                gotoxy(4+((j-1)*6),2);write(x[j]);
                                end;
                        for j := 32 to 42 do begin
                                gotoxy(1,(j-28));writeln(tabs[j]);
                                END;
                        for j := (7*i-6) to (7*i) do begin
                                gotoxy(2,j+11-7*i);writeln(tabs1[j]);
                                end;
                        if (x[10]<>' ') then gotoxy(10,15);write('[Tekan ENTER untuk selesai mengakhiri Quiz]');
                        gotoxy(6*i-2,2);
                        repeat
                        a:=readkey;
                        a:=upcase(a);
                        case a of
                                #65..#69 :      begin
                                                gotoxy(14,15);write('[Tekan ENTER untuk mengakhiri Quiz]');
                                                x[i]:=a;
                                                goto 3;
                                                end;
                                #13      :      begin
                                                goto 4;
                                                end;
                                #27      :      begin
                                                i:=i-1;
                                                goto 5;
                                                end;
                                end;
                        until (0>1);
                        end;
                END;
                4:
                for i := 1 to 10 do begin
                        if (x[i] = kunci[i]) then score:=score+1;
                        end;
        textbackground(0);clrscr;
        window(40,7,78,19);
        textbackground(white);textcolor(black);
        clrscr;
                writeln;
                writeln(' =====================================');
                writeln(' |           Scoreboard              |');
                writeln(' =====================================');
                writeln(' |                           |       |');
                writeln(' |                           |       |');
                writeln(' |                           |       |');
                writeln(' |                           |       |');
                writeln(' |                           |       |');
                writeln(' =====================================');
                writeln(' |                                   |');
                writeln(' =====================================');
        score:=score*10;
        assign(temp,'C:\ChemiCalium\score_board.txt');
        reset(temp);
        for i := 1 to 10 do
                readln(temp,tabs[i]);
        close(temp);
        for i := 1 to 5 do begin
                val(tabs[i*2],e);
                if (score>e) then begin
                        c:=c+1;
                        end;
                end;
        if (c<1) then begin
                        gotoxy(3,11);writeln('Selamat Nilai Anda ',score);
                        for i := 10 downto 1 do begin
                                if (i mod 2 = 0) then begin
                                        gotoxy(33,10-(i div 2));writeln(tabs[i]);
                                        end
                                else if (i mod 2 = 1) then begin
                                        gotoxy(3,9-(i div 2));writeln(tabs[i]);
                                        end;
                                end;
                        end
        else if (c >= 1) then begin
                for i := 10 downto 1 do begin
                                if (i mod 2 = 0) then begin
                                        gotoxy(33,10-(i div 2));writeln(tabs[i]);
                                        end
                                else if (i mod 2 = 1) then begin
                                        gotoxy(3,9-(i div 2));writeln(tabs[i]);
                                        end;
                                end;
                gotoxy(3,1);write('Selamat anda memecahkan rekor baru');
                gotoxy(3,11);readln(nama);
                for i := 10 downto 1 do begin
                                if (i mod 2 = 0) then begin
                                        gotoxy(33,10-(i div 2));writeln('   ');
                                        end
                                else if (i mod 2 = 1) then begin
                                        gotoxy(3,9-(i div 2));writeln('                    ');
                                        end;
                                end;
                str(score,d);
                case c of
                        1 :     begin
                                tabs[1]:=nama;
                                tabs[2]:=d;
                                end;
                        2..5 :  begin
                                for i := 1 to c-1 do begin
                                        tabs[i*2-1]:=tabs[i*2+1];
                                        tabs[i*2]:=tabs[i*2+2];
                                        end;
                                tabs[c*2-1]:=nama;
                                tabs[c*2]:=d;
                                end;
                        end;
                        assign(temp,'C:\ChemiCalium\score_board.txt');
                        rewrite(temp);
                        for i := 1 to 10 do
                                writeln(temp,tabs[i]);
                        close(temp);
                        for i := 10 downto 1 do begin
                                if (i mod 2 = 0) then begin
                                        gotoxy(33,10-(i div 2));writeln(tabs[i]);
                                        end
                                else if (i mod 2 = 1) then begin
                                        gotoxy(3,9-(i div 2));writeln(tabs[i]);
                                        end;
                                end;
                end;
        gotoxy(9,13);write('[Tekan ESC untuk keluar]');
        repeat
                a:=readkey;
        until (a=#27);
end;
procedure clear_screen;
var
        i : integer;
begin
        window(1,1,115,30);
        textbackground(white);clrscr;
end;
function nomor(x : string) : longint;
begin
        case x of
               'H' : nomor:=1; 'HE': nomor:=2; 'LI': nomor:=3; 'BE' : nomor:=4; 'B' : nomor:=5; 'C' : nomor:= 6;
               'N' : nomor:=7; 'O' : nomor:=8; 'F' : nomor:=9; 'NE' : nomor:=10;'NA': nomor:=11; 'MG' : nomor:=12;
               'AL': nomor:=13;'SI': nomor:=14; 'P': nomor:=15; 'S' : nomor:=16;'CL': nomor:=17; 'AR' : nomor:=18;
               'K' : nomor:=19;'CA': nomor:=20;'SC': nomor:=21;'TI' : nomor:=22; 'V': nomor:=23; 'CR' : nomor:=24;
               'MN': nomor:=25;'FE': nomor:=26;'CO': nomor:=27;'NI' : nomor:=28;'CU': nomor:=29; 'ZN' : nomor:=30;
               'GA': nomor:=31;'GE': nomor:=32;'AS': nomor:=33;'SE' : nomor:=34;'BR': nomor:=35; 'KR' : nomor:=36;
               'RB': nomor:=37;'SR': nomor:=38;'Y' : nomor:=39;'ZR' : nomor:=40;'NB': nomor:=41; 'MO' : nomor:=42;
               'TC': nomor:=43;'RU': nomor:=44;'RH': nomor:=45;'PD' : nomor:=46;'AG': nomor:=47; 'CD' : nomor:=48;
               'IN': nomor:=49;'SN': nomor:=50;'SB': nomor:=51;'TE' : nomor:=52;'I' : nomor:=53; 'XE' : nomor:=54;
               'CS': nomor:=55;'BA': nomor:=56;'LA': nomor:=57;'CE' : nomor:=58;'PR': nomor:=59; 'ND' : nomor:=60;
               'PM': nomor:=61;'SM': nomor:=62;'EU': nomor:=63;'GD' : nomor:=64;'TB': nomor:=65; 'DY' : nomor:=66;
               'HO': nomor:=67;'ER': nomor:=68;'TM': nomor:=69;'YB' : nomor:=70;'LU': nomor:=71; 'HF' : nomor:=72;
               'TA': nomor:=73;'W' : nomor:=74;'RE': nomor:=75;'OS' : nomor:=76;'IR': nomor:=77; 'PT' : nomor:=78;
               'AU': nomor:=79;'HG': nomor:=80;'TL': nomor:=81;'PB' : nomor:=82;'BI': nomor:=83; 'PO' : nomor:=84;
               'AT': nomor:=85;'RN': nomor:=86;'FR': nomor:=87;'RA' : nomor:=88;'AC': nomor:=89; 'TH' : nomor:=90;
               'PA': nomor:=91;'U' : nomor:=92;'NP': nomor:=93;'PU' : nomor:=94;'AM': nomor:=95; 'CM' : nomor:=96;
               'BK': nomor:=97;'CF': nomor:=98;'ES': nomor:=99;'FM': nomor:=100;'MD':nomor:=101;'NO' : nomor:=102;
               'LR': nomor:=103;'RF': nomor:=104;'DB': nomor:=105;'SG': nomor:=106;'BH': nomor:=107;'HS': nomor:=108;
               'MT': nomor:=109;'DS': nomor:=110;'RG': nomor:=111;'CN': nomor:=112;'NH': nomor:=113;'FL': nomor:=114;
               'MC': nomor:=115;'LV': nomor:=116;'TS': nomor:=117;'OG': nomor:=118;
               else nomor:=119;
               end;
end;
procedure landing_page;
var
        tabs : array[1..14] of string;
        temp : text;
        i, j, n : integer;
begin
        clrscr;
        assign(temp,'C:\ChemiCalium\landing_page.txt');
        reset(temp);
        for i := 1 to 14 do
                readln(temp,tabs[i]);
        window(40,8,76,24);
        textbackground(cyan);
        for i := 1 to 14 do begin
                for j := 1 to 37 do begin
                        if (((tabs[i])[j]='\') or ((tabs[i])[j]='/')) then begin
                              textcolor(blue);textbackground(cyan);write((tabs[i])[j]);
                              end
                        else if ((tabs[i])[j]='_') then begin
                              textcolor(blue);textbackground(cyan);write((tabs[i])[j]);
                              end
                        else if ((tabs[i])[j]='*') or ((tabs[i])[j]='|') then begin
                              textcolor(white);textbackground(blue);write((tabs[i])[j]);
                              end
                        else begin
                                textbackground(cyan);textcolor(white);write((tabs[i])[j]);
                             end;
                        end;
                end;
        close(temp);
        for i := 1 to 2 do begin
                gotoxy(1,14+i);write('|');
                gotoxy(37,14+i);write('|');
                end;
        for i := 2 to 36 do begin
                gotoxy(i,16);write('*');
                end;
        for i := 1 to 35 do
                begin
                gotoxy(1+i,15);write('>');
                if (i >= 1) and (i <= 10) then
                        delay(300)
                else if (i >= 11) and (i < 21) then
                        delay(200)
                else if (i >= 21) and (i < 37) then
                        delay(100);
                end;
        textbackground(0);
        for i := 1 to 15 do begin
                gotoxy(i,i);writeln;
                end;
end;
procedure template;
var
        tabs : array[1..300] of string;
        tempt : text;
        i, n, a, b, c : longint;
begin
        clrscr;
        b:=0;
        window(1,1,115,30);
        textcolor(white);
        assign(tempt,'C:\ChemiCalium\template.txt');
        reset(tempt);
        for i := 1 to 30 do
                readln(tempt,tabs[i]);
        a := 54;
        c := 51;
        for i := 1 to 29 do
                begin
                for n := 1 to 115 do
                        begin
                        if (((tabs[i])[n]='|') or ((tabs[i])[n]='=')) or (((tabs[i])[n]='/') or ((tabs[i])[n]='\')) then begin
                                textbackground(1);write((tabs[i])[n]);
                                end
                        else if ((n>=4) and (n<=6)) and ((i<=4) and (i>=3)) then begin
                                textbackground(2);write((tabs[i])[n]);
                                end
                        else if ((n>=4) and (n<=6)) and ((i>4) and (i<24)) then begin
                                textbackground(12);write((tabs[i])[n]);
                                end
                        else if ((n>=8) and (n<=10)) and ((i>4) and (i<24)) then begin
                                textbackground(2);write((tabs[i])[n]);
                                end
                        else if ((n>=12) and (n<=50)) and ((i>11) and (i<24)) then begin
                                textbackground(14);write((tabs[i])[n]);
                                end
                        else if ((n>=52) and (n<=a)) and ((i>=8) and (i<24)) then begin
                                textbackground(10);write((tabs[i])[n]);
                                end
                        else if ((n>c) and (n<=66)) and ((i>=6) and (i<24)) then begin
                                textbackground(14);write((tabs[i])[n]);
                                end
                        else if ((n>66) and (n<=70)) and ((i>=6) and (i<24)) then begin
                                textbackground(11);write((tabs[i])[n]);
                                end
                        else if ((n>71) and (n<=74)) and ((i>=3) and (i<24)) then begin
                                textbackground(8);write((tabs[i])[n]);
                                end
                        else if ((n>=16) and (n<=74)) and ((i>=24) and (i<=28)) then begin
                                textbackground(magenta);write((tabs[i])[n]);
                                end
                        else if ((n>=76) and (n<=111)) and ((i>=6) and (i<=22)) then begin
                                textbackground(11);write((tabs[i])[n]);
                                end
                        else begin
                                textbackground(10);write((tabs[i])[n]);
                                end;
                        end;
                if (i>7) then begin
                        b := b+1;
                        if (b mod 3 = 0) then begin
                                a := a+4;
                                c := c+4;
                                end;
                        end;
                end;
        window(1,30,117,30);textbackground(10);write(tabs[30]);
        close(tempt);
end;
procedure user_input_periodic;
label 2;
var
        a : char;
begin
        2:
        window(77,4,114,4);
        textbackground(green);
        writeln('Masukkan Lambang Unsur');
        gotoxy(32,1);write('   ');
        gotoxy(32,1);readln(name);
        name := upcase(name);
        window(77,6,111,22);textbackground(cyan);clrscr;
        if (nomor(name)>118) then begin
                writeln('Input Error');
                end
        else begin
                output(nomor(name));
                gotoxy(32,1);write(nomor(name));
                end;
        gotoxy(34,1);
        repeat
        a:=readkey;
        case a of
                #27 :   begin
                        exit;
                        end;
                #13 :   begin
                        goto 2;
                        end;
        end;
        until ((a = #27) or (a = #13));
end;
procedure periodic_table;
begin
        clear_screen;
        template;
        user_input_periodic;
        writeln(nomor(name));
end;
procedure main_menu;
var
        tabs : array[1..14] of string;
        temp : text;
        i, j, n : integer;
begin
        assign(temp,'C:\ChemiCalium\menu.txt');
        reset(temp);
        for i := 1 to 14 do
                readln(temp,tabs[i]);
        window(40,8,76,25);
        textbackground(cyan);
        for i := 1 to 14 do begin
                for j := 1 to 37 do begin
                        if ((tabs[i])[j]='*') or ((tabs[i])[j]='|') then begin
                              textcolor(white);textbackground(blue);write((tabs[i])[j]);
                              end
                        else begin
                                textbackground(cyan);textcolor(white);write((tabs[i])[j]);
                             end;
                        end;
                end;
        close(temp);
        gotoxy(34,13);textbackground(cyan);readln(input);
        textbackground(0);
        for i := 1 to 15 do begin
                gotoxy(i,i);writeln;
                end;
        case input of
                '1' : periodic_table;
                '2', '3', '4' : resource(input);
                '5' : Quiz;
                '6' :   begin
                        clear_screen;
                        gotoxy(40,12);textbackground(blue);writeln(' /=================================\ ');
                        gotoxy(40,13);write('/');textbackground(cyan);write('                                   ');textbackground(blue);writeln('\');
                        gotoxy(40,14);write('|');textbackground(cyan);write('     Terimakasih Atas Waktunya     ');textbackground(blue);writeln('|');
                        gotoxy(40,15);write('|');textbackground(cyan);write('           See You Soon            ');textbackground(blue);writeln('|');
                        gotoxy(40,16);write('\');textbackground(cyan);write('                                   ');textbackground(blue);writeln('/');
                        gotoxy(40,17);writeln(' \=================================/ ');
                        delay(4000);
                        halt;
                        end;
        end;
end;
begin
        clear_screen;
        landing_page;
        1:
        clear_screen;
        main_menu;
        goto 1;
        readln;
end.
