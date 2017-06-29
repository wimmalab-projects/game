�
YC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\Client.cs
public 
class 
Client 
: 
MonoBehaviour #
{ 
public 


GameMaster 
. 

ClientType  

clientType! +
;+ ,
public

 

string

 
Name

 
;

 
public 

string 
Explanation 
; 
public 

string 

GoodReview 
; 
public 

string 
AverageReview 
;  
public 

string 
	BadReview 
; 
public 

Wine 
	WineIWant 
; 
public 

Wine 
WineIGet 
; 
public 

int 
Budget 
; 
} �<
`C:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\CustomerPanel.cs
public 
class 
CustomerPanel 
: 
MonoBehaviour *
{+ ,
public		 

Client		 
clientSender		 
=		  
null		! %
;		% &
public 

void 
ActivatePanel 
( 
)  
{ 
if 

( 
clientSender 
!= 
null  
)  !
{ 	
this 
. 

gameObject 
. 
	transform %
.% &
Find& *
(* +
$str+ 8
)8 9
.9 :
Find: >
(> ?
$str? I
)I J
.J K
FindK O
(O P
$strP Y
)Y Z
.Z [
Find[ _
(_ `
$str` u
)u v
.v w
GetComponent	w �
<
� �
Text
� �
>
� �
(
� �
)
� �
.
� �
text
� �
=
� �
clientSender
� �
.
� �
Explanation
� �
;
� �
if 
( 
clientSender 
. 

clientType '
==( *

GameMaster+ 5
.5 6

ClientType6 @
.@ A
FarmerA G
)G H
{ 

gameObject 
. 
	transform $
.$ %
Find% )
() *
$str* 9
)9 :
.: ;
Find; ?
(? @
$str@ L
)L M
.M N

gameObjectN X
.X Y
	SetActiveY b
(b c
truec g
)g h
;h i

gameObject 
. 
	transform $
.$ %
Find% )
() *
$str* 9
)9 :
.: ;
Find; ?
(? @
$str@ R
)R S
.S T

gameObjectT ^
.^ _
	SetActive_ h
(h i
falsei n
)n o
;o p
} 
else 
{ 

gameObject 
. 
	transform $
.$ %
Find% )
() *
$str* 9
)9 :
.: ;
Find; ?
(? @
$str@ L
)L M
.M N

gameObjectN X
.X Y
	SetActiveY b
(b c
falsec h
)h i
;i j

gameObject 
. 
	transform $
.$ %
Find% )
() *
$str* 9
)9 :
.: ;
Find; ?
(? @
$str@ R
)R S
.S T

gameObjectT ^
.^ _
	SetActive_ h
(h i
truei m
)m n
;n o
} 

gameObject 
. 
	transform  
.  !
Find! %
(% &
$str& 5
)5 6
.6 7
Find7 ;
(; <
$str< K
)K L
.L M
GetComponentM Y
<Y Z
ImageZ _
>_ `
(` a
)a b
.b c
spritec i
=j k
clientSenderl x
.x y
GetComponent	y �
<
� �
SpriteRenderer
� �
>
� �
(
� �
)
� �
.
� �
sprite
� �
;
� �

gameObject!! 
.!! 
	SetActive!!  
(!!  !
true!!! %
)!!% &
;!!& '
}"" 	
}## 
public)) 

void)) #
ScaleExplanationContent)) '
())' (
)))( )
{** 
Canvas++ 
.++ 
ForceUpdateCanvases++ "
(++" #
)++# $
;++$ %
this.. 
... 

gameObject.. 
... 
	transform.. !
...! "
Find.." &
(..& '
$str..' 4
)..4 5
...5 6
Find..6 :
(..: ;
$str..; E
)..E F
...F G
Find..G K
(..K L
$str..L U
)..U V
...V W
GetComponent..W c
<..c d
RectTransform..d q
>..q r
(..r s
)..s t
...t u
	sizeDelta..u ~
=	.. �
new// 
Vector2// 
(// 
this// 
.// 

gameObject// '
.//' (
	transform//( 1
.//1 2
Find//2 6
(//6 7
$str//7 D
)//D E
.//E F
Find//F J
(//J K
$str//K U
)//U V
.//V W
Find//W [
(//[ \
$str//\ e
)//e f
.//f g
GetComponent//g s
<//s t
RectTransform	//t �
>
//� �
(
//� �
)
//� �
.
//� �
	sizeDelta
//� �
.
//� �
x
//� �
,
//� �
this00 
.00 

gameObject00 
.00 
	transform00 %
.00% &
Find00& *
(00* +
$str00+ 8
)008 9
.009 :
Find00: >
(00> ?
$str00? I
)00I J
.00J K
Find00K O
(00O P
$str00P Y
)00Y Z
.00Z [
Find00[ _
(00_ `
$str00` u
)00u v
.00v w
GetComponent	00w �
<
00� �
RectTransform
00� �
>
00� �
(
00� �
)
00� �
.
00� �
	sizeDelta
00� �
.
00� �
y
00� �
)
00� �
;
00� �
}11 
public44 

void44 
DeactivatePanel44 
(44  
)44  !
{55 

gameObject66 
.66 
	SetActive66 
(66 
false66 "
)66" #
;66# $
}77 
public99 

void99 
AcceptFarmer99 
(99 
)99 
{:: 
if;; 

(;; 
clientSender;; 
!=;; 
null;;  
);;  !
{<< 	

GameObject== 
.== !
FindGameObjectWithTag== ,
(==, -
$str==- :
)==: ;
.==; <
GetComponent==< H
<==H I

GameMaster==I S
>==S T
(==T U
)==U V
.==V W
CurrentClient==W d
===e f
clientSender==g s
.==s t

gameObject==t ~
;==~ 
DeactivatePanel>> 
(>> 
)>> 
;>> 
}?? 	
}@@ 
publicAA 

voidAA "
AcceptRestaurantClientAA &
(AA' (
)AA( )
{BB 
ItemCC 
wineCC 
=CC 

GameObjectCC 
.CC !
FindGameObjectWithTagCC 4
(CC4 5
$strCC5 B
)CCB C
.CCC D
GetComponentCCD P
<CCP Q
	InventoryCCQ Z
>CCZ [
(CC[ \
)CC\ ]
.CC] ^
itemsCC^ c
[CCc d
$strCCd l
]CCl m
;CCm n
ifEE 

(EE 
wineEE 
.EE 
	itemCountEE 
>EE 
$numEE 
)EE 
{FF 	
wineGG 
.GG 
PopItemGG 
(GG 
)GG 
;GG 
DebugHH 
.HH 
LogHH 
(HH 
$strHH !
)HH! "
;HH" #
}II 	
}JJ 
}KK ��
^C:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\TestWineOne.cs
public 
class 
TestWineOne 
: 
MonoBehaviour (
{ 
Wine		 
wineTest			 
;		 
public 

Wine 
. 
Clarity 
clarity 
;  
public 

Wine 
. 
	Condition 
	condition #
;# $
public 

Wine 
. 
	Intensity 
	intensity #
;# $
public 

Wine 
. 
	Sweetness 
	sweetness #
;# $
public 

Wine 
. 
Acidity 
acidity 
;  
public 

Wine 
. 
Tannin 
tannin 
; 
public 

Wine 
. 
Body 
body 
; 
public 

Wine 
. 
Finish 
finish 
; 
[ 
System 
. 
Serializable 
] 
public 

class 
AromasAndFlavours "
{ 
public 
Wine 
. "
AromaFlavourGategories *

gategories+ 5
;5 6
public 
Wine 
. 
Floral 
floral !
;! "
public 
Wine 
. 

GreenFruit 

greenFruit )
;) *
public 
Wine 
. 
CitrusFruit 
citrusFruit  +
;+ ,
public 
Wine 
. 

StoneFruit 

stoneFruit )
;) *
public 
Wine 
. 
TropicalFruit !
tropicalFruit" /
;/ 0
public 
Wine 
. 
RedFruit 
redFruit %
;% &
public 
Wine 
. 

BlackFruit 

blackFruit )
;) *
public   
Wine   
.   

DriedFruit   

driedFruit   )
;  ) *
public!! 
Wine!! 
.!! 
Underripeness!! !
underripeness!!" /
;!!/ 0
public"" 
Wine"" 
."" 

Herbaceous"" 

herbaceous"" )
;"") *
public## 
Wine## 
.## 
Herbal## 
herbal## !
;##! "
public$$ 
Wine$$ 
.$$ 
	Vegetable$$ 
	vegetable$$ '
;$$' (
public%% 
Wine%% 
.%% 

SweetSpice%% 

sweetSpice%% )
;%%) *
public&& 
Wine&& 
.&& 
PungentSpice&&  
pungentSpice&&! -
;&&- .
public'' 
Wine'' 
.'' 
	Autolytic'' 
	autolytic'' '
;''' (
public(( 
Wine(( 
.(( 
Dairy(( 
dairy(( 
;((  
public)) 
Wine)) 
.)) 
Oak)) 
oak)) 
;)) 
public** 
Wine** 
.** 
Kernel** 
kernel** !
;**! "
public++ 
Wine++ 
.++ 
Animal++ 
animal++ !
;++! "
public,, 
Wine,, 
.,, 
Maturity,, 
maturity,, %
;,,% &
public-- 
Wine-- 
.-- 
Mineral-- 
mineral-- #
;--# $
}.. 
public// 

List// 
<// 
AromasAndFlavours// !
>//! "
Aromas//# )
,//) *
Flavours//+ 3
;//3 4
void33 
Start33	 
(33 
)33 
{44 
wineTest66 
=66 
new66 
Wine66 
(66 
)66 
;66 
wineTest88 
.88 
clarity88 
=88 
clarity88 "
;88" #
wineTest99 
.99 
	condition99 
=99 
	condition99 &
;99& '
wineTest:: 
.:: 
	intensity:: 
=:: 
	intensity:: &
;::& '
wineTest;; 
.;; 
	sweetness;; 
=;; 
	sweetness;; &
;;;& '
wineTest<< 
.<< 
acidity<< 
=<< 
acidity<< "
;<<" #
wineTest== 
.== 
tannin== 
=== 
tannin==  
;==  !
wineTest>> 
.>> 
body>> 
=>> 
body>> 
;>> 
wineTest?? 
.?? 
finish?? 
=?? 
finish??  
;??  !
CreateAromaFlavourAA 
(AA 
WineAA 
.AA  
MainGategoriesAA  .
.AA. /
AromaAA/ 4
,AA4 5
AromasAA6 <
,AA< =
wineTestAA> F
.AAF G
AromasAAG M
)AAM N
;AAN O
CreateAromaFlavourBB 
(BB 
WineBB 
.BB  
MainGategoriesBB  .
.BB. /
FlavourBB/ 6
,BB6 7
FlavoursBB8 @
,BB@ A
wineTestBBB J
.BBJ K
FlavoursBBK S
)BBS T
;BBT U
wineTestDD 
.DD 
ComparisonMatrixDD !
=DD" #
wineTestDD$ ,
.DD, -
CreateMatrixDD- 9
(DD9 :
)DD: ;
;DD; <
foreachFF 
(FF 
intFF 
[FF 
]FF 
iFF 
inFF 
wineTestFF $
.FF$ %
ComparisonMatrixFF% 5
)FF5 6
{GG 	
stringHH 
sHH 
=HH 
$strHH 
;HH 
foreachII 
(II 
intII 
iiII 
inII 
iII  
)II  !
{JJ 
sKK 
+=KK 
iiKK 
+KK 
$strKK 
;KK 
}LL 
DebugMM 
.MM 
LogMM 
(MM 
sMM 
)MM 
;MM 
}NN 	
}OO 
publicQQ 

voidQQ 
CreateAromaFlavourQQ "
(QQ# $
EnumQQ$ (
MainGategoryQQ) 5
,QQ5 6
ListQQ7 ;
<QQ; <
AromasAndFlavoursQQ< M
>QQM N

collectionQQO Y
,QQY Z
ListQQ[ _
<QQ_ `
intQQ` c
[QQc d
]QQd e
>QQe f

targetListQQg q
)QQq r
{RR 
ifSS 

(SS 
MainGategorySS 
.SS 
ToStringSS !
(SS! "
)SS" #
==SS$ &
WineSS' +
.SS+ ,
MainGategoriesSS, :
.SS: ;
AromaSS; @
.SS@ A
ToStringSSA I
(SSI J
)SSJ K
||SSL N
MainGategorySSO [
.SS[ \
ToStringSS\ d
(SSd e
)SSe f
==SSg i
WineSSj n
.SSn o
MainGategoriesSSo }
.SS} ~
Flavour	SS~ �
.
SS� �
ToString
SS� �
(
SS� �
)
SS� �
)
SS� �
{TT 	
}UU 	
elseVV 
{WW 	
DebugXX 
.XX 
LogXX 
(XX 
$strXX 
)XX 
;XX 
returnYY 
;YY 
}ZZ 	
foreach\\ 
(\\ 
AromasAndFlavours\\ "
aaf\\# &
in\\' )

collection\\* 4
)\\4 5
{]] 	
switch^^ 
(^^ 
aaf^^ 
.^^ 

gategories^^ "
)^^" #
{__ 
case`` 
Wine`` 
.`` "
AromaFlavourGategories`` 0
.``0 1
Floral``1 7
:``7 8

targetListaa 
.aa 
Addaa "
(aa" #
wineTestaa# +
.aa+ ,
AromaFlavouraa, 8
(aa8 9
MainGategoryaa9 E
,aaE F
aafaaG J
.aaJ K
floralaaK Q
)aaQ R
)aaR S
;aaS T
breakbb 
;bb 
casecc 
Winecc 
.cc "
AromaFlavourGategoriescc 0
.cc0 1

GreenFruitcc1 ;
:cc; <

targetListdd 
.dd 
Adddd "
(dd" #
wineTestdd# +
.dd+ ,
AromaFlavourdd, 8
(dd8 9
MainGategorydd9 E
,ddE F
aafddG J
.ddJ K

greenFruitddK U
)ddU V
)ddV W
;ddW X
breakee 
;ee 
caseff 
Wineff 
.ff "
AromaFlavourGategoriesff 0
.ff0 1
CitrusFruitff1 <
:ff< =

targetListgg 
.gg 
Addgg "
(gg" #
wineTestgg# +
.gg+ ,
AromaFlavourgg, 8
(gg8 9
MainGategorygg9 E
,ggE F
aafggG J
.ggJ K
citrusFruitggK V
)ggV W
)ggW X
;ggX Y
breakhh 
;hh 
caseii 
Wineii 
.ii "
AromaFlavourGategoriesii 0
.ii0 1

StoneFruitii1 ;
:ii; <

targetListjj 
.jj 
Addjj "
(jj" #
wineTestjj# +
.jj+ ,
AromaFlavourjj, 8
(jj8 9
MainGategoryjj9 E
,jjE F
aafjjG J
.jjJ K

stoneFruitjjK U
)jjU V
)jjV W
;jjW X
breakkk 
;kk 
casell 
Winell 
.ll "
AromaFlavourGategoriesll 0
.ll0 1
TropicalFruitll1 >
:ll> ?

targetListmm 
.mm 
Addmm "
(mm" #
wineTestmm# +
.mm+ ,
AromaFlavourmm, 8
(mm8 9
MainGategorymm9 E
,mmE F
aafmmG J
.mmJ K
tropicalFruitmmK X
)mmX Y
)mmY Z
;mmZ [
breaknn 
;nn 
caseoo 
Wineoo 
.oo "
AromaFlavourGategoriesoo 0
.oo0 1
RedFruitoo1 9
:oo9 :

targetListpp 
.pp 
Addpp "
(pp" #
wineTestpp# +
.pp+ ,
AromaFlavourpp, 8
(pp8 9
MainGategorypp9 E
,ppE F
aafppG J
.ppJ K
redFruitppK S
)ppS T
)ppT U
;ppU V
breakqq 
;qq 
caserr 
Winerr 
.rr "
AromaFlavourGategoriesrr 0
.rr0 1

BlackFruitrr1 ;
:rr; <

targetListss 
.ss 
Addss "
(ss" #
wineTestss# +
.ss+ ,
AromaFlavourss, 8
(ss8 9
MainGategoryss9 E
,ssE F
aafssG J
.ssJ K

blackFruitssK U
)ssU V
)ssV W
;ssW X
breaktt 
;tt 
caseuu 
Wineuu 
.uu "
AromaFlavourGategoriesuu 0
.uu0 1

DriedFruituu1 ;
:uu; <

targetListvv 
.vv 
Addvv "
(vv" #
wineTestvv# +
.vv+ ,
AromaFlavourvv, 8
(vv8 9
MainGategoryvv9 E
,vvE F
aafvvG J
.vvJ K

driedFruitvvK U
)vvU V
)vvV W
;vvW X
breakww 
;ww 
casexx 
Winexx 
.xx "
AromaFlavourGategoriesxx 0
.xx0 1
Underripenessxx1 >
:xx> ?

targetListyy 
.yy 
Addyy "
(yy" #
wineTestyy# +
.yy+ ,
AromaFlavouryy, 8
(yy8 9
MainGategoryyy9 E
,yyE F
aafyyG J
.yyJ K
underripenessyyK X
)yyX Y
)yyY Z
;yyZ [
breakzz 
;zz 
case{{ 
Wine{{ 
.{{ "
AromaFlavourGategories{{ 0
.{{0 1

Herbaceous{{1 ;
:{{; <

targetList|| 
.|| 
Add|| "
(||" #
wineTest||# +
.||+ ,
AromaFlavour||, 8
(||8 9
MainGategory||9 E
,||E F
aaf||G J
.||J K

herbaceous||K U
)||U V
)||V W
;||W X
break}} 
;}} 
case~~ 
Wine~~ 
.~~ "
AromaFlavourGategories~~ 0
.~~0 1
Herbal~~1 7
:~~7 8

targetList 
. 
Add "
(" #
wineTest# +
.+ ,
AromaFlavour, 8
(8 9
MainGategory9 E
,E F
aafG J
.J K
herbalK Q
)Q R
)R S
;S T
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
	Vegetable
��1 :
:
��: ;

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
	vegetable
��K T
)
��T U
)
��U V
;
��V W
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1

SweetSpice
��1 ;
:
��; <

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K

sweetSpice
��K U
)
��U V
)
��V W
;
��W X
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
PungentSpice
��1 =
:
��= >

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
pungentSpice
��K W
)
��W X
)
��X Y
;
��Y Z
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
	Autolytic
��1 :
:
��: ;

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
	autolytic
��K T
)
��T U
)
��U V
;
��V W
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
Dairy
��1 6
:
��6 7

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
dairy
��K P
)
��P Q
)
��Q R
;
��R S
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
Oak
��1 4
:
��4 5

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
oak
��K N
)
��N O
)
��O P
;
��P Q
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
Kernel
��1 7
:
��7 8

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
kernel
��K Q
)
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
Animal
��1 7
:
��7 8

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
animal
��K Q
)
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
Maturity
��1 9
:
��9 :

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
maturity
��K S
)
��S T
)
��T U
;
��U V
break
�� 
;
�� 
case
�� 
Wine
�� 
.
�� $
AromaFlavourGategories
�� 0
.
��0 1
Mineral
��1 8
:
��8 9

targetList
�� 
.
�� 
Add
�� "
(
��" #
wineTest
��# +
.
��+ ,
AromaFlavour
��, 8
(
��8 9
MainGategory
��9 E
,
��E F
aaf
��G J
.
��J K
mineral
��K R
)
��R S
)
��S T
;
��T U
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
^C:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\TestWineTwo.cs
public 
class 
TestWineTwo 
: 
MonoBehaviour (
{ 
public 

Wine 
wineTest 
; 
void 
Start	 
( 
) 
{ 
} 
} ��
WC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\Wine.cs
public 
class 
Wine 
{ 
public 

enum 
MainGategories 
{  
Clarity! (
,( )
	Condition* 3
,3 4
	Intensity5 >
,> ?
	Sweetness@ I
,I J
AcidityK R
,R S
TanninT Z
,Z [
Body\ `
,` a
Finishb h
,h i
Aromaj o
,o p
Flavourq x
}y z
;z {
public 

enum 
Clarity 
{ 
Clear 
,  
Hazy! %
}& '
;' (
public 

enum 
	Condition 
{ 
Clean !
,! "
Unclean# *
}+ ,
;, -
public 

enum 
	Intensity 
{ 
Light !
,! "
Medium# )
,) *

Pronounced+ 5
}6 7
;7 8
public 

enum 
	Sweetness 
{ 
Dry 
,  
OffDry! '
,' (
Medium) /
,/ 0
Sweet1 6
}7 8
;8 9
public 

enum 
Acidity 
{ 
Low 
, 
Medium %
,% &
High' +
}, -
;- .
public 

enum 
Tannin 
{ 
Low 
, 
Medium $
,$ %
High& *
}+ ,
;, -
public 

enum 
Body 
{ 
Light 
, 
Medium $
,$ %
Full& *
}+ ,
;, -
public 

enum 
Finish 
{ 
Short 
, 
Medium  &
,& '
Long( ,
}- .
;. /
public 

enum "
AromaFlavourGategories &
{ 
Floral 
, 

GreenFruit 
, 
CitrusFruit '
,' (

StoneFruit) 3
,3 4
TropicalFruit5 B
,B C
RedFruitD L
,L M

BlackFruitN X
,X Y

DriedFruit 
, 
Underripeness !
,! "

Herbaceous# -
,- .
Herbal/ 5
,5 6
	Vegetable7 @
,@ A

SweetSpiceB L
,L M
PungentSpiceN Z
,Z [
	Autolytic 
, 
Dairy 
, 
Oak 
, 
Kernel %
,% &
Animal' -
,- .
Maturity/ 7
,7 8
Mineral9 @
} 
; 
public 

enum 
Floral 
{ 
Blossom  
,  !
Rose" &
,& '
Violet( .
}/ 0
;0 1
public   

enum   

GreenFruit   
{   

GreenApple   '
,  ' (
RedApple  ) 1
,  1 2

GooseBerry  3 =
,  = >
Pear  ? C
,  C D
Grape  E J
}  K L
;  L M
public!! 

enum!! 
CitrusFruit!! 
{!! 

GrapeFruit!! (
,!!( )
Lemon!!* /
,!!/ 0
	Limejuice!!1 :
,!!: ;
LimeZest!!< D
}!!E F
;!!F G
public"" 

enum"" 

StoneFruit"" 
{"" 
Peach"" "
,""" #
Apricot""$ +
,""+ ,
	Nectarine""- 6
}""7 8
;""8 9
public## 

enum## 
TropicalFruit## 
{## 
Banana##  &
,##& '
Lychee##( .
,##. /
Mango##0 5
,##5 6
Melon##7 <
,##< =
PassionFruit##> J
,##J K
	Pineapple##L U
}##V W
;##W X
public$$ 

enum$$ 
RedFruit$$ 
{$$ 

Redcurrant$$ %
,$$% &
	Cranberry$$' 0
,$$0 1
	Raspberry$$2 ;
,$$; <

Strawberry$$= G
,$$G H
	RedCherry$$I R
,$$R S
Plum$$T X
}$$Y Z
;$$Z [
public%% 

enum%% 

BlackFruit%% 
{%% 
Blackcurrant%% )
,%%) *

Blackberry%%+ 5
,%%5 6
	Blueberry%%7 @
,%%@ A
Blackcherry%%B M
}%%N O
;%%O P
public&& 

enum&& 

DriedFruit&& 
{&& 
Fig&&  
,&&  !
Prune&&" '
,&&' (
Raisin&&) /
,&&/ 0
Sultana&&1 8
,&&8 9
Kirsch&&: @
,&&@ A
	Jamminess&&B K
,&&K L
Cooked&&M S
,&&S T
Baked&&U Z
,&&Z [
StewedFruits&&\ h
,&&h i
PreservedFruits&&j y
}&&z {
;&&{ |
public'' 

enum'' 
Underripeness'' 
{'' 
GreenBellPepper''  /
,''/ 0
Grass''1 6
,''6 7
WhitePepper''8 C
,''C D
	Leafiness''E N
,''N O
Tomato''P V
,''V W
Potato''X ^
}''_ `
;''` a
public(( 

enum(( 

Herbaceous(( 
{(( 
Grass(( "
,((" #
	Asparagus(($ -
,((- .
BlackcurrantLeaf((/ ?
}((@ A
;((A B
public)) 

enum)) 
Herbal)) 
{)) 

Eucalyptus)) #
,))# $
Mint))% )
,))) *
	Medicinal))+ 4
,))4 5
Lavender))6 >
,))> ?
Fennel))@ F
,))F G
Dill))H L
}))M N
;))N O
public** 

enum** 
	Vegetable** 
{** 
Cabbage** #
,**# $
Peas**% )
,**) *
Beans**+ 0
,**0 1

BlackOlive**2 <
,**< =

GreenOlive**> H
}**I J
;**J K
public++ 

enum++ 

SweetSpice++ 
{++ 
Cinnamon++ %
,++% &
Cloves++' -
,++- .
Ginger++/ 5
,++5 6
Nutmeg++7 =
,++= >
Vanilla++? F
}++G H
;++H I
public,, 

enum,, 
PungentSpice,, 
{,, 
BlackPepper,, *
,,,* +
WhitePepper,,, 7
,,,7 8
	Liquorice,,9 B
,,,B C
Juniper,,D K
},,L M
;,,M N
public-- 

enum-- 
	Autolytic-- 
{-- 
Yeast-- !
,--! "
Biscuit--# *
,--* +
Bread--, 1
,--1 2
Toast--3 8
,--8 9
Pastry--: @
,--@ A
Lees--B F
}--G H
;--H I
public.. 

enum.. 
Dairy.. 
{.. 
Butter.. 
,.. 
Cheese..  &
,..& '
Cream..( -
,..- .
Yoghurt../ 6
}..7 8
;..8 9
public// 

enum// 
Oak// 
{// 
Vanilla// 
,// 
Toast// $
,//$ %
Cedar//& +
,//+ ,
CharredWood//- 8
,//8 9
Smoke//: ?
,//? @
Resinous//A I
}//J K
;//K L
public00 

enum00 
Kernel00 
{00 
Almond00 
,00  
Coconut00! (
,00( )
Hazelnut00* 2
,002 3
Walnut004 :
,00: ;
	Chocolate00< E
,00E F
Coffee00G M
}00N O
;00O P
public11 

enum11 
Animal11 
{11 
Leather11  
,11  !
Meaty11" '
,11' (
Farmyard11) 1
}112 3
;113 4
public22 

enum22 
Maturity22 
{22 
Vegetal22 "
,22" #
Mushroom22$ ,
,22, -
Hay22. 1
,221 2
	WetLeaves223 <
,22< =
ForestFloor22> I
,22I J
Game22K O
,22O P
Savoury22Q X
,22X Y
Tobacco22Z a
,22a b
Cedar22c h
,22h i
Honey22j o
,22o p
Cereal22q w
}22x y
;22y z
public33 

enum33 
Mineral33 
{33 
Earth33 
,33  
Petrol33! '
,33' (
Rubber33) /
,33/ 0
Tar331 4
,334 5
Stony336 ;
,33; <
Steely33= C
,33C D
WetWool33E L
}33M N
;33N O
public?? 

int?? 
CompareWines?? 
(?? 
Wine??  
wine??! %
)??% &
{@@ 
wineAA 
.AA 
ComparisonMatrixAA 
=AA 
wineAA  $
.AA$ %
CreateMatrixAA% 1
(AA1 2
)AA2 3
;AA3 4
intCC 
similiaritiesCC 
=CC 
$numCC 
;CC 
forEE 
(EE 
intEE 
iEE 
=EE 
$numEE 
;EE 
iEE 
<EE 
ComparisonMatrixEE ,
.EE, -
CountEE- 2
;EE2 3
iEE4 5
++EE5 7
)EE7 8
{FF 	
forGG 
(GG 
intGG 
xGG 
=GG 
$numGG 
;GG 
xGG 
<GG 
wineGG  $
.GG$ %
ComparisonMatrixGG% 5
.GG5 6
CountGG6 ;
;GG; <
xGG= >
++GG> @
)GG@ A
{HH 
ifII 
(II 
SystemII 
.II 
LinqII 
.II  

EnumerableII  *
.II* +
SequenceEqualII+ 8
(II8 9
ComparisonMatrixII9 I
[III J
iIIJ K
]IIK L
,IIL M
wineIIN R
.IIR S
ComparisonMatrixIIS c
[IIc d
xIId e
]IIe f
)IIf g
)IIg h
similiaritiesJJ !
++JJ! #
;JJ# $
}KK 
}LL 	
returnMM 
similiaritiesMM 
;MM 
}NN 
public[[ 

int[[ 
[[[ 
][[ 
AromaFlavour[[ 
([[ 
Enum[[ "
MainGategory[[# /
,[[/ 0
Enum[[1 5
Value[[6 ;
)[[; <
{\\ 
int^^ 
[^^ 
]^^ 
temp^^ 
=^^ 
new^^ 
int^^ 
[^^ 
$num^^ 
]^^ 
;^^  
stringaa 
[aa 
]aa 
mainGategoriesaa 
=aa  !
Enumaa" &
.aa& '
GetNamesaa' /
(aa/ 0
typeofaa0 6
(aa6 7
MainGategoriesaa7 E
)aaE F
)aaF G
;aaG H
forbb 
(bb 
intbb 
ibb 
=bb 
$numbb 
;bb 
ibb 
<bb 
mainGategoriesbb *
.bb* +
Lengthbb+ 1
;bb1 2
ibb3 4
++bb4 6
)bb6 7
{cc 	
ifdd 
(dd 
mainGategoriesdd 
[dd 
idd  
]dd  !
==dd" $
MainGategorydd% 1
.dd1 2
ToStringdd2 :
(dd: ;
)dd; <
)dd< =
{ee 
tempff 
[ff 
$numff 
]ff 
=ff 
iff 
;ff 
}gg 
}hh 	
stringkk 
[kk 
]kk 
subGategorieskk 
=kk  
Enumkk! %
.kk% &
GetNameskk& .
(kk. /
typeofkk/ 5
(kk5 6"
AromaFlavourGategorieskk6 L
)kkL M
)kkM N
;kkN O
forll 
(ll 
intll 
ill 
=ll 
$numll 
;ll 
ill 
<ll 
subGategoriesll )
.ll) *
Lengthll* 0
;ll0 1
ill2 3
++ll3 5
)ll5 6
{mm 	
ifnn 
(nn 
$strnn 
+nn 
subGategoriesnn '
[nn' (
inn( )
]nn) *
==nn+ -
Valuenn. 3
.nn3 4
GetTypenn4 ;
(nn; <
)nn< =
.nn= >
ToStringnn> F
(nnF G
)nnG H
)nnH I
{oo 
temppp 
[pp 
$numpp 
]pp 
=pp 
ipp 
;pp 
}qq 
}rr 	
stringuu 
[uu 
]uu 
finalvaluesuu 
=uu 
Enumuu #
.uu# $
GetNamesuu$ ,
(uu, -
Valueuu- 2
.uu2 3
GetTypeuu3 :
(uu: ;
)uu; <
)uu< =
;uu= >
forvv 
(vv 
intvv 
ivv 
=vv 
$numvv 
;vv 
ivv 
<vv 
finalvaluesvv '
.vv' (
Lengthvv( .
;vv. /
ivv0 1
++vv1 3
)vv3 4
{ww 	
ifxx 
(xx 
finalvaluesxx 
[xx 
ixx 
]xx 
==xx !
Valuexx" '
.xx' (
ToStringxx( 0
(xx0 1
)xx1 2
)xx2 3
{yy 
tempzz 
[zz 
$numzz 
]zz 
=zz 
izz 
;zz 
}{{ 
}|| 	
return~~ 
temp~~ 
;~~ 
} 
public
�� 

Clarity
�� 
clarity
�� 
;
��  
public
�� 

	Condition
�� 
	condition
�� !
;
��! "
public
�� 

	Intensity
�� 
	intensity
�� !
;
��! "
public
�� 

	Sweetness
�� 
	sweetness
�� !
;
��! "
public
�� 

Acidity
�� 
acidity
�� 
;
��  
public
�� 

Tannin
�� 
tannin
�� 
;
�� 
public
�� 

Body
�� 
body
�� 
;
�� 
public
�� 

Finish
�� 
finish
�� 
;
�� 
public
�� 

List
�� 
<
�� 
int
�� 
[
�� 
]
�� 
>
�� 
Aromas
�� 
=
�� 
new
��  #
List
��$ (
<
��( )
int
��) ,
[
��, -
]
��- .
>
��. /
(
��/ 0
)
��0 1
;
��1 2
public
�� 

List
�� 
<
�� 
int
�� 
[
�� 
]
�� 
>
�� 
Flavours
�� 
=
��  !
new
��" %
List
��& *
<
��* +
int
��+ .
[
��. /
]
��/ 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
public
�� 

List
�� 
<
�� 
int
�� 
[
�� 
]
�� 
>
�� 
ComparisonMatrix
�� '
;
��' (
public
�� 

List
�� 
<
�� 
int
�� 
[
�� 
]
�� 
>
�� 
CreateMatrix
�� #
(
��$ %
)
��% &
{
�� 
List
�� 
<
�� 
int
�� 
[
�� 
]
�� 
>
�� 
tempList
�� 
=
�� 
new
�� "
List
��# '
<
��' (
int
��( +
[
��+ ,
]
��, -
>
��- .
(
��. /
)
��/ 0
;
��0 1
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Clarity
��5 <
,
��< =
(
��> ?
int
��? B
)
��B C
clarity
��C J
}
��K L
)
��L M
;
��M N
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
	Condition
��5 >
,
��> ?
(
��@ A
int
��A D
)
��D E
	condition
��E N
}
��O P
)
��P Q
;
��Q R
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
	Intensity
��5 >
,
��> ?
(
��@ A
int
��A D
)
��D E
	intensity
��E N
}
��O P
)
��P Q
;
��Q R
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
	Sweetness
��5 >
,
��> ?
(
��@ A
int
��A D
)
��D E
	sweetness
��E N
}
��O P
)
��P Q
;
��Q R
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Acidity
��5 <
,
��< =
(
��> ?
int
��? B
)
��B C
acidity
��C J
}
��K L
)
��L M
;
��M N
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Tannin
��5 ;
,
��; <
(
��= >
int
��> A
)
��A B
tannin
��B H
}
��I J
)
��J K
;
��K L
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Body
��5 9
,
��9 :
(
��; <
int
��< ?
)
��? @
body
��@ D
}
��E F
)
��F G
;
��G H
tempList
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
int
�� 
[
�� 
]
�� 
{
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Finish
��5 ;
,
��; <
(
��= >
int
��> A
)
��A B
finish
��B H
}
��I J
)
��J K
;
��K L
foreach
�� 
(
�� 
int
�� 
[
�� 
]
�� 
iArr
�� 
in
�� 
Aromas
�� %
)
��% &
{
�� 	
tempList
�� 
.
�� 
Add
�� 
(
�� 
iArr
�� 
)
�� 
;
�� 
}
�� 	
foreach
�� 
(
�� 
int
�� 
[
�� 
]
�� 
iArr
�� 
in
�� 
Flavours
�� '
)
��' (
{
�� 	
tempList
�� 
.
�� 
Add
�� 
(
�� 
iArr
�� 
)
�� 
;
�� 
}
�� 	
return
�� 
tempList
�� 
;
�� 
}
�� 
}�� ��
ZC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\WineOld.cs
public 
class 
WineOld 
{		 
public

 

int

 
[

 
]

 
[

 
]

 
readyMatrix

 
;

 
public 

static 
int "
MaximumTastesAndScents ,
=- .
$num/ 0
;0 1
public 

int 
[ 
] 
[ 
] 
Aromas 
= 
new 
int  #
[# $"
MaximumTastesAndScents$ :
]: ;
[; <
]< =
;= >
public 

int 
[ 
] 
[ 
] 
Flavours 
= 
new !
int" %
[% &"
MaximumTastesAndScents& <
]< =
[= >
]> ?
;? @
public 

AppearanceClarity 
AClarity %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

AppearanceIntensity 

AIntensity )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
%
AppearanceColorGategories $
AColorGategory% 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
$
AppearanceWhiteWineColor #
AWhiteWineColor$ 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
#
AppearanceRoseWineColor "
ARoseWineColor# 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
"
AppearanceRedWineColor !
ARedWineColor" /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 

NoseCondition 

NCondition #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   

NoseIntensity   

NIntensity   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 

PalateSweetness"" 

PSweetness"" %
{""& '
get""( +
;""+ ,
set""- 0
;""0 1
}""2 3
public$$ 

PalateAcidity$$ 
PAcidity$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
public&& 

PalateTannin&& 
PTannin&& 
{&&  !
get&&" %
;&&% &
set&&' *
;&&* +
}&&, -
public(( 


PalateBody(( 
PBody(( 
{(( 
get(( !
;((! "
set((# &
;((& '
}((( )
public** 

PalateFinish** 
PFinish** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 

Quality,, 
WineQuality,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
public11 

enum11 
MainGategories11 
{22 

Appearance33 
,33 
Nose44 
,44 
Palate55 
,55 
Conclusions66 
}77 
;77 
public99 

enum99  
AppearanceGategories99 $
{:: 
Clarity;; 
,;; 
	Intensity<< 
,<< 
Color== 
}>> 
public@@ 

enum@@ 
AppearanceClarity@@ !
{AA 
ClearBB 
,BB 
HazyCC 
}DD 
;DD 
publicEE 

enumEE 
AppearanceIntensityEE #
{FF 
PaleGG 
,GG 
MediumHH 
,HH 
DeepII 
}JJ 
;JJ 
publicLL 

enumLL %
AppearanceColorGategoriesLL )
{MM 
WhiteWineColourNN 
,NN 
RoseWineColourOO 
,OO 
RedWineColourPP 
}QQ 
;QQ 
publicRR 

enumRR $
AppearanceWhiteWineColorRR (
{SS 
LemonTT 
,TT 
GoldUU 
,UU 
AmberVV 
}WW 
;WW 
publicYY 

enumYY #
AppearanceRoseWineColorYY '
{ZZ 
Pink[[ 
,[[ 
Salmon\\ 
,\\ 
Orange]] 
}^^ 
;^^ 
public`` 

enum`` "
AppearanceRedWineColor`` &
{aa 
Purplebb 
,bb 
Rubycc 
,cc 
Garnetdd 
,dd 
Tawnyee 
}ff 
;ff 
publichh 

enumhh 
NoseGategorieshh 
{ii 
	Conditionjj 
,jj 
	Intensitykk 
,kk 
Aromall 
}mm 
;mm 
publicoo 

enumoo 
NoseConditionoo 
{pp 
Cleanqq 
,qq 
Uncleanrr 
}ss 
;ss 
publicuu 

enumuu 
NoseIntensityuu 
{vv 
Lightww 
,ww 
Mediumxx 
,xx 
Deepyy 
}zz 
;zz 
public}} 

enum}} %
AromaAndFlavourGategories}} )
{~~ 
FloralFruit 
, 
SpiceVegetable
�� 
,
�� 
OakOther
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
FloralFruitGategories
�� %
{
�� 
Floral
�� 
,
�� 

GreenFruit
�� 
,
�� 
CitrusFruit
�� 
,
�� 

StoneFruit
�� 
,
�� 
TropicalFruit
�� 
,
�� 
RedFruit
�� 
,
�� 

BlackFruit
�� 
,
�� 

DriedFruit
�� 
}
�� 
;
�� 
public
�� 

enum
�� &
SpiceVegetableGategories
�� (
{
�� 
Underripeness
�� 
,
�� 

Herbaceous
�� 
,
�� 
Herbal
�� 
,
�� 
	Vegetable
�� 
,
�� 

SweetSpice
�� 
,
�� 
PungentSpice
�� 
}
�� 
;
�� 
public
�� 

enum
��  
OakOtherGategories
�� "
{
�� "
SimplicityNeutrality
�� 
,
�� 
	Autolytic
�� 
,
�� 
Dairy
�� 
,
�� 
Oak
�� 
,
�� 
Kernel
�� 
,
�� 
Animal
�� 
,
�� 
Maturity
�� 
,
�� 
Mineral
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourFloral
�� %
{
�� 
Blossom
�� 
,
�� 
Rose
�� 
,
�� 
Violet
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourGreenFruit
�� )
{
�� 

GreenApple
�� 
,
�� 
RedApple
�� 
,
�� 

Gooseberry
�� 
,
�� 
Pear
�� 
,
�� 
Grape
�� 
}
�� 
;
�� 
public
�� 

enum
�� (
AromaAndFlavourCitrusFruit
�� *
{
�� 

Grapefruit
�� 
,
�� 
Lemon
�� 
,
�� 
	LimeJuice
�� 
,
�� 
LimeZest
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourStoneFruit
�� )
{
�� 
Peach
�� 
,
�� 
Apricot
�� 
,
�� 
	Nectarine
�� 
}
�� 
;
�� 
public
�� 

enum
�� *
AromaAndFlavourTropicalFruit
�� ,
{
�� 
Banana
�� 
,
�� 
Lychee
�� 
,
�� 
Mango
�� 
,
�� 
Melon
�� 
,
�� 
PassionFruit
�� 
,
�� 
	Pineapple
�� 
}
�� 
;
�� 
public
�� 

enum
�� %
AromaAndFlavourRedFruit
�� '
{
�� 

Redcurrant
�� 
,
�� 
	Cranberry
�� 
,
�� 
	Raspberry
�� 
,
�� 

Strawberry
�� 
,
�� 
	RedCherry
�� 
,
�� 
Plum
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourBlackFruit
�� )
{
�� 
Blackcurrant
�� 
,
�� 

Blackberry
�� 
,
�� 
	Blueberry
�� 
,
�� 
BlackCherry
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourDriedFruit
�� )
{
�� 
Fig
�� 
,
�� 
Prune
�� 
,
�� 
Raisin
�� 
,
�� 
Sultana
�� 
,
�� 
Kirsch
�� 
,
�� 
	Jamminess
�� 
,
�� 
Cooked
�� 
,
�� 
Baked
�� 
,
�� 
StewedFruits
�� 
,
�� 
PreservedFruits
�� 
}
�� 
;
�� 
public
�� 

enum
�� *
AromaAndFlavourUnderripeness
�� ,
{
�� 
GreenBellPepper
�� 
,
�� 
Grass
�� 
,
�� 
WhitePepper
�� 
,
�� 
	Leafiness
�� 
,
�� 
Tomato
�� 
,
�� 
Potato
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourHerbaceous
�� )
{
�� 
Grass
�� 
,
�� 
	Asparagus
�� 
,
�� 
BlackcurrantLeaf
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourHerbal
�� %
{
�� 

Eucalyptus
�� 
,
�� 
Mint
�� 
,
�� 
	Medicinal
�� 
,
�� 
Lavender
�� 
,
�� 
Fennel
�� 
,
�� 
Dill
�� 
}
�� 
;
�� 
public
�� 

enum
�� &
AromaAndFlavourVegetable
�� (
{
�� 
Cabbage
�� 
,
�� 
Peas
�� 
,
�� 
Beans
�� 
,
�� 

BlackOlive
�� 
,
�� 

GreenOlive
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourSweetSpice
�� )
{
�� 
Cinnamon
�� 
,
�� 
Cloves
�� 
,
�� 
Ginger
�� 
,
�� 
Nutmeg
�� 
,
�� 
Vanilla
�� 
}
�� 
;
�� 
public
�� 

enum
�� )
AromaAndFlavourPungentSpice
�� +
{
�� 
BlackPepper
�� 
,
�� 
WhitePepper
�� 
,
�� 
	Liquorice
�� 
,
�� 
Juniper
�� 
}
�� 
;
�� 
public
�� 

enum
�� 1
#AromaAndFlavourSimplicityNeutrality
�� 3
{
�� 
Simple
�� 
,
�� 
Neutral
�� 
,
�� 

Indistinct
�� 
}
�� 
;
�� 
public
�� 

enum
�� &
AromaAndFlavourAutolytic
�� (
{
�� 
Yeast
�� 
,
�� 
Biscuit
�� 
,
�� 
Bread
�� 
,
�� 
Toast
�� 
,
�� 
Pastry
�� 
,
�� 
Lees
�� 
}
�� 
;
�� 
public
�� 

enum
�� "
AromaAndFlavourDairy
�� $
{
�� 
Butter
�� 
,
�� 
Cheese
�� 
,
�� 
Cream
�� 
,
�� 
Yoghurt
�� 
}
�� 
;
�� 
public
�� 

enum
��  
AromaAndFlavourOak
�� "
{
�� 
Vanilla
�� 
,
�� 
Toast
�� 
,
�� 
Cedar
�� 
,
�� 
CharredWood
�� 
,
�� 
Smoke
�� 
,
�� 
Resinous
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourKernel
�� %
{
�� 
Almond
�� 
,
�� 
Coconut
�� 
,
�� 
HazelNut
�� 
,
�� 
Walnut
�� 
,
�� 

Chocholate
�� 
,
�� 
Coffee
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourAnimal
�� %
{
�� 
Leather
�� 
,
�� 
Meaty
�� 
,
�� 
Farmyard
�� 
}
�� 
;
�� 
public
�� 

enum
�� %
AromaAndFlavourMaturity
�� '
{
�� 
Vegetal
�� 
,
�� 
Mushroom
�� 
,
�� 
Hay
�� 
,
�� 
	WetLeaves
�� 
,
�� 
ForestFloot
�� 
,
�� 
Game
�� 
,
�� 
Savory
�� 
,
�� 
Tobacco
�� 
,
�� 
Cedar
�� 
,
�� 
Honey
�� 
,
�� 
Cereal
�� 
}
�� 
;
�� 
public
�� 

enum
�� $
AromaAndFlavourMineral
�� &
{
�� 
Earth
�� 
,
�� 
Petrol
�� 
,
�� 
Rubber
�� 
,
�� 
Tar
�� 
,
�� 
Stony
�� 
,
�� 
Steely
�� 
,
�� 
WetWool
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateGategories
��  
{
�� 
	Sweetness
�� 
,
�� 
Acidity
�� 
,
�� 
Tannin
�� 
,
�� 
Body
�� 
,
�� $
FlavourCharasteristics
�� 
,
�� 
Finish
�� 
,
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateSweetness
�� 
{
�� 
Dry
�� 
,
�� 
OffDry
�� 
,
�� 
Medium
�� 
,
�� 
Sweet
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateAcidity
�� 
{
�� 
Low
�� 
,
�� 
Medium
�� 
,
�� 
High
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateTannin
�� 
{
�� 
Low
�� 
,
�� 
Medium
�� 
,
�� 
High
�� 
}
�� 
;
�� 
public
�� 

enum
�� 

PalateBody
�� 
{
�� 
Light
�� 
,
�� 
Medium
�� 
,
�� 
Full
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateFinish
�� 
{
�� 
Short
�� 
,
�� 
Medium
�� 
,
�� 
Long
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
Quality
�� 
{
�� 
Faulty
�� 
,
�� 
Poor
�� 
,
�� 

Acceptable
�� 
,
�� 
Good
�� 
,
�� 
VeryGood
�� 
,
�� 
Outstanding
�� 
}
�� 
;
�� 
public
�� 

int
�� 
[
�� 
]
�� 
[
�� 
]
�� 
GetMatrixes
�� 
(
��  
)
��  !
{
�� 
int
�� 
[
�� 
]
�� 
[
�� 
]
�� 
ComparisonMatrix
��  
=
��! "
new
��# &
int
��' *
[
��* +
$num
��+ -
]
��- .
[
��. /
]
��/ 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5

Appearance
��5 ?
;
��? @
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &"
AppearanceGategories
��& :
.
��: ;
Clarity
��; B
;
��B C
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
AClarity
��& .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5

Appearance
��5 ?
;
��? @
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &"
AppearanceGategories
��& :
.
��: ;
	Intensity
��; D
;
��D E
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

AIntensity
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
switch
�� 
(
�� 
AColorGategory
�� 
)
�� 
{
�� 	
case
�� '
AppearanceColorGategories
�� *
.
��* +
WhiteWineColour
��+ :
:
��: ;
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
MainGategories
��. <
.
��< =

Appearance
��= G
;
��G H
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- ."
AppearanceGategories
��. B
.
��B C
Color
��C H
;
��H I
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .'
AppearanceColorGategories
��. G
.
��G H
WhiteWineColour
��H W
;
��W X
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
AWhiteWineColor
��. =
;
��= >
break
�� 
;
�� 
case
�� '
AppearanceColorGategories
�� *
.
��* +
RoseWineColour
��+ 9
:
��9 :
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
MainGategories
��. <
.
��< =

Appearance
��= G
;
��G H
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- ."
AppearanceGategories
��. B
.
��B C
Color
��C H
;
��H I
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .'
AppearanceColorGategories
��. G
.
��G H
RoseWineColour
��H V
;
��V W
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
ARoseWineColor
��. <
;
��< =
break
�� 
;
�� 
case
�� '
AppearanceColorGategories
�� *
.
��* +
RedWineColour
��+ 8
:
��8 9
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
MainGategories
��. <
.
��< =

Appearance
��= G
;
��G H
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- ."
AppearanceGategories
��. B
.
��B C
Color
��C H
;
��H I
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .'
AppearanceColorGategories
��. G
.
��G H
RedWineColour
��H U
;
��U V
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
ARedWineColor
��. ;
;
��; <
break
�� 
;
�� 
}
�� 	
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Nose
��5 9
;
��9 :
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
NoseGategories
��& 4
.
��4 5
	Condition
��5 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

NCondition
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Nose
��5 9
;
��9 :
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
NoseGategories
��& 4
.
��4 5
	Intensity
��5 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

NIntensity
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Aromas
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Aromas
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Aromas
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Palate
��5 ;
;
��; <
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
PalateGategories
��& 6
.
��6 7
	Sweetness
��7 @
;
��@ A
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

PSweetness
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Palate
��5 ;
;
��; <
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
PalateGategories
��& 6
.
��6 7
Acidity
��7 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
PAcidity
��& .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Palate
��6 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PalateGategories
��' 7
.
��7 8
Tannin
��8 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PTannin
��' .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Palate
��6 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PalateGategories
��' 7
.
��7 8
Body
��8 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PBody
��' ,
;
��, -
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Flavours
�� '
[
��' (
$num
��( )
]
��) *
;
��* +
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Flavours
�� '
[
��' (
$num
��( )
]
��) *
;
��* +
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Flavours
�� '
[
��' (
$num
��( )
]
��) *
;
��* +
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Palate
��6 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PalateGategories
��' 7
.
��7 8
Finish
��8 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PFinish
��' .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Conclusions
��6 A
;
��A B
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
$num
��" #
;
��# $
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
WineQuality
��' 2
;
��2 3
return
�� 
ComparisonMatrix
�� 
;
��  
}
�� 
}�� �
]C:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\WinePrefab.cs
public 
class 

WinePrefab 
: 
MonoBehaviour '
{ 
}// �
_C:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\cpExitButton.cs
public 
class 
cpExitButton 
: 
MonoBehaviour )
,) * 
IPointerClickHandler+ ?
{ 
CustomerPanel 
cp 
; 
void 
Start	 
( 
) 
{ 
cp 

= 

gameObject 
. 
	transform !
.! "
parent" (
.( )
GetComponent) 5
<5 6
CustomerPanel6 C
>C D
(D E
)E F
;F G
} 
public 

void 
OnPointerClick 
( 
PointerEventData /
data0 4
)4 5
{ 
cp 

.
 
DeactivatePanel 
( 
) 
; 
} 
} �
_C:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\cpFarmButton.cs
public 
class 
cpFarmButton 
: 
MonoBehaviour )
,) * 
IPointerClickHandler+ ?
{ 
CustomerPanel 
cp 
; 
void		 
Start			 
(		 
)		 
{

 
cp 

= 

gameObject 
. 
	transform !
.! "
parent" (
.( )
parent) /
./ 0
GetComponent0 <
<< =
CustomerPanel= J
>J K
(K L
)L M
;M N
} 
public 

void 
OnPointerClick 
( 
PointerEventData /
data0 4
)4 5
{ 
cp 

.
 
AcceptFarmer 
( 
) 
; 
} 
} �
eC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\cpRestaurantButton.cs
public 
class 
cpRestaurantButton 
:  !
MonoBehaviour" /
,/ 0 
IPointerClickHandler1 E
{ 
CustomerPanel 
cp 
; 
void 
Start	 
( 
) 
{ 
cp 

= 

gameObject 
. 
	transform !
.! "
parent" (
.( )
parent) /
./ 0
GetComponent0 <
<< =
CustomerPanel= J
>J K
(K L
)L M
;M N
} 
public 

void 
OnPointerClick 
( 
PointerEventData /
data0 4
)4 5
{ 
cp 

.
 "
AcceptRestaurantClient !
(! "
)" #
;# $
} 
} �
\C:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\CustomerSystem\tempTouch.cs
public 
class 
	tempTouch 
: 
MonoBehaviour &
{ 
public 

static 
bool 
hitDetected "
;" #
public 

static 

GameObject 
parentGameObject -
;- .
RuntimePlatform		 
platform		 
=		 
Application		 *
.		* +
platform		+ 3
;		3 4
void 
Update	 
( 
) 
{ 
if 

( 
platform 
== 
RuntimePlatform '
.' (
Android( /
||0 2
platform3 ;
==< >
RuntimePlatform? N
.N O
IPhonePlayerO [
)[ \
{ 	
if 
( 
Input 
. 

touchCount  
>! "
$num# $
)$ %
{ 
if 
( 
Input 
. 
GetTouch "
(" #
$num# $
)$ %
.% &
phase& +
==, .

TouchPhase/ 9
.9 :
Began: ?
)? @
{ 

checkTouch 
( 
Input $
.$ %
GetTouch% -
(- .
$num. /
)/ 0
.0 1
position1 9
)9 :
;: ;
} 
} 
} 	
else 
if 
( 
platform 
== 
RuntimePlatform ,
., -
WindowsEditor- :
): ;
{ 	
if 
( 
Input 
. 
GetMouseButtonUp &
(& '
$num' (
)( )
)) *
{ 

checkTouch 
( 
Input  
.  !
mousePosition! .
). /
;/ 0
} 
} 	
} 
void!! 

checkTouch!!	 
(!! 
Vector2!! 
pos!! 
)!!  
{"" 
Vector3## 
wp## 
=## 
Camera## 
.## 
main##  
.##  !
ScreenToWorldPoint##! 3
(##3 4
pos##4 7
)##7 8
;##8 9
Vector2$$ 
touchPos$$ 
=$$ 
new$$ 
Vector2$$ &
($$& '
wp$$' )
.$$) *
x$$* +
,$$+ ,
wp$$- /
.$$/ 0
y$$0 1
)$$1 2
;$$2 3

Collider2D%% 
hit%% 
=%% 
	Physics2D%% "
.%%" #
OverlapPoint%%# /
(%%/ 0
touchPos%%0 8
)%%8 9
;%%9 :
if'' 

('' 
hit'' 
)'' 
{(( 	
parentGameObject)) 
=)) 
hit)) "
.))" #

gameObject))# -
;))- .
MethodCallerHandler** 
mch**  #
;**# $
mch++ 
=++ 
parentGameObject++ "
.++" #
GetComponent++# /
<++/ 0
MethodCallerHandler++0 C
>++C D
(++D E
)++E F
;++F G
mch,, 
.,, 

CallMethod,, 
(,, 
),, 
;,, 
}.. 	
}// 
}00 �'
pC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\Scene transitionit ja kamera\CurtainControls.cs
public 
class 
CurtainControls 
: 
MonoBehaviour ,
{- .
bool 
IsClear	 
= 
true 
; 
public 

bool 

transition 
= 
true !
;! "
Color 	
curtainColor
 
; 
Camera 


fromCamera 
, 
toCamera 
;  
public 

float 
transitionSpeed  
=! "
$num# %
;% &
void 
Start	 
( 
) 
{ 

fromCamera 
= 
Camera 
. 
current #
;# $
curtainColor 
= 

gameObject !
.! "
GetComponent" .
<. /
SpriteRenderer/ =
>= >
(> ?
)? @
.@ A
colorA F
;F G
} 
public 

void 
FadeToBlack 
( 
Camera #
from$ (
,( )
Camera* 0
to1 3
)3 4
{ 

fromCamera 
= 
from 
; 
toCamera   
=   
to   
;   
IsClear!! 
=!! 
false!! 
;!! 

transition"" 
="" 
true"" 
;"" 
}## 
public(( 

void(( 
FadeToClear(( 
((( 
)(( 
{)) 
IsClear** 
=** 
true** 
;** 

transition++ 
=++ 
true++ 
;++ 
},, 
void11 
transitionToBlack11	 
(11 
)11 
{22 
if33 

(33 
curtainColor33 
.33 
a33 
<33 
$num33 
)33 
{44 	
curtainColor55 
.55 
a55 
+=55 
transitionSpeed55 -
*55. /
Time550 4
.554 5
	deltaTime555 >
;55> ?

gameObject66 
.66 
GetComponent66 #
<66# $
SpriteRenderer66$ 2
>662 3
(663 4
)664 5
.665 6
color666 ;
=66< =
curtainColor66> J
;66J K
}77 	
else88 
{99 	

transition:: 
=:: 
false:: 
;:: 
cameraADisable<< 
(<< 
)<< 
;<< 
cameraBEnable== 
(== 
)== 
;== 
FadeToClear>> 
(>> 
)>> 
;>> 
}?? 	
}@@ 
voidEE 
transitionToClearEE	 
(EE 
)EE 
{FF 
ifGG 

(GG 
curtainColorGG 
.GG 
aGG 
>GG 
$numGG 
)GG 
{HH 	
curtainColorII 
.II 
aII 
-=II 
transitionSpeedII -
*II. /
TimeII0 4
.II4 5
	deltaTimeII5 >
;II> ?

gameObjectJJ 
.JJ 
GetComponentJJ #
<JJ# $
SpriteRendererJJ$ 2
>JJ2 3
(JJ3 4
)JJ4 5
.JJ5 6
colorJJ6 ;
=JJ< =
curtainColorJJ> J
;JJJ K
}KK 	
elseLL 
{MM 	

transitionNN 
=NN 
falseNN 
;NN 
}OO 	
}PP 
voidVV 
UpdateVV	 
(VV 
)VV 
{VV 
ifWW 

(WW 

transitionWW 
)WW 
{XX 	
switchYY 
(YY 
IsClearYY 
)YY 
{ZZ 
case[[ 
true[[ 
:[[ 
transitionToClear\\ %
(\\% &
)\\& '
;\\' (
break]] 
;]] 
case^^ 
false^^ 
:^^ 
transitionToBlack__ %
(__% &
)__& '
;__' (
break`` 
;`` 
}aa 
}bb 	
}cc 
privateee 
voidee 
cameraADisableee 
(ee  !
)ee! "
{ff 
ifgg 

(gg 

fromCameragg 
!=gg 
nullgg 
)gg 

fromCameraii 
.ii 
enabledii 
=ii  
falseii! &
;ii& '
}jj 
privatell 
voidll 
cameraBEnablell 
(ll 
)ll  
{mm 
ifnn 

(nn 
toCamerann 
!=nn 
nullnn 
)nn 
toCamerapp 
.pp 
enabledpp 
=pp 
truepp #
;pp# $
}qq 
}rr �
pC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\Scene transitionit ja kamera\kameracontrolli.cs
public 
class 
kameracontrolli 
: 
MonoBehaviour ,
{- .
public 

Camera 

farmCamera 
, 
breweryCamera +
,+ ,

townCamera- 7
;7 8

GameObject		 
go		 
;		 
void 
Start	 
( 
) 
{ 
go 

= 

GameObject 
. !
FindGameObjectWithTag -
(- .
$str. 7
)7 8
;8 9
} 
private 
void 
OnGUI 
( 
) 
{ 
	GUILayout 
. 
	BeginArea 
( 
new 
Rect  $
($ %
Screen% +
.+ ,
width, 1
-1 2
$num2 5
,5 6
$num7 9
,9 :
$num; >
,> ?
$num@ C
)C D
)D E
;E F
if 

( 
	GUILayout 
. 
Button 
( 
$str '
)' (
)( )
{ 	
go 
. 
GetComponent 
< 
CurtainControls +
>+ ,
(, -
)- .
.. /
FadeToBlack/ :
(: ;
Camera; A
.A B
mainB F
,F G

farmCameraH R
)R S
;S T
} 	
if 

( 
	GUILayout 
. 
Button 
( 
$str *
)* +
)+ ,
{ 	
go 
. 
GetComponent 
< 
CurtainControls +
>+ ,
(, -
)- .
.. /
FadeToBlack/ :
(: ;
Camera; A
.A B
mainB F
,F G
breweryCameraH U
)U V
;V W
} 	
if 

( 
	GUILayout 
. 
Button 
( 
$str '
)' (
)( )
{ 	
go 
. 
GetComponent 
< 
CurtainControls +
>+ ,
(, -
)- .
.. /
FadeToBlack/ :
(: ;
Camera; A
.A B
mainB F
,F G

townCameraH R
)R S
;S T
}   	
	GUILayout"" 
."" 
EndArea"" 
("" 
)"" 
;"" 
}## 
}$$ �M
SC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\ShopSystem\Shop.cs
public		 
class		 
Shop		 
:		 
MonoBehaviour		 !
{		" #
public 


GameObject 
shop 
; 
public 


GameObject 
ShopSlot 
; 
public 


SortedList 
< 
string 
, 
Item "
>" #
items$ )
=* +
new, /

SortedList0 :
<: ;
string; A
,A B
ItemC G
>G H
(H I
)I J
;J K
public 

List 
< 

GameObject 
> 
slots !
=" #
new$ '
List( ,
<, -

GameObject- 7
>7 8
(8 9
)9 :
;: ;
private 

GameObject 
ContentPanel #
;# $
private 

GameObject 
	InfoPanel  
;  !
private 
GridLayoutGroup 
glg 
;  
private 
Item !
currentlySelectedItem &
;& '
private 
void 
Start 
( 
) 
{ 
items 
= 

gameObject 
. 
GetComponent '
<' (
	Inventory( 1
>1 2
(2 3
)3 4
.4 5
items5 :
;: ;
	InfoPanel 
= 
shop 
. 
	transform "
." #
Find# '
(' (
$str( .
). /
./ 0

gameObject0 :
;: ;
ContentPanel 
= 
shop 
. 
	transform %
.% &
Find& *
(* +
$str+ 8
)8 9
.9 :
Find: >
(> ?
$str? I
)I J
.J K
FindK O
(O P
$strP Y
)Y Z
.Z [

gameObject[ e
;e f
for 
( 
int 
i 
= 
$num 
; 
i 
< 
items !
.! "
Count" '
;' (
i) *
++* ,
), -
{ 	

GameObject   
temp   
=   
Instantiate   )
(  ) *
ShopSlot  * 2
)  2 3
;  3 4
temp!! 
.!! 
	transform!! 
.!! 
	SetParent!! $
(!!$ %
ContentPanel!!% 1
.!!1 2
	transform!!2 ;
)!!; <
;!!< =
temp"" 
."" 
name"" 
="" 
items"" 
."" 
Keys"" "
[""" #
i""# $
]""$ %
;""% &
temp## 
.## 
GetComponent## 
<## 
Image## #
>### $
(##$ %
)##% &
.##& '
sprite##' -
=##. /
items##0 5
[##5 6
temp##6 :
.##: ;
name##; ?
]##? @
.##@ A

ItemSprite##A K
;##K L
slots$$ 
.$$ 
Add$$ 
($$ 
temp$$ 
)$$ 
;$$ 
}%% 	

SelectItem(( 
((( 
items(( 
.(( 
Keys(( 
[(( 
$num(( 
]((  
)((  !
;((! "
refreshInfo)) 
()) 
))) 
;)) 
glg,, 
=,, 
ContentPanel,, 
.,, 
GetComponent,, '
<,,' (
GridLayoutGroup,,( 7
>,,7 8
(,,8 9
),,9 :
;,,: ;
scaleContent-- 
(-- 
)-- 
;-- 
}.. 
private33 
void33 
scaleContent33 
(33 
)33  
{44 
float55 
y55 
=55 
(55 
ContentPanel55 
.55  
	transform55  )
.55) *

childCount55* 4
+554 5
$num555 6
)556 7
/558 9
glg55: =
.55= >
constraintCount55> M
*55N O
glg55P S
.55S T
cellSize55T \
.55\ ]
y55] ^
+55_ `
(55a b
glg55b e
.55e f
cellSize55f n
.55n o
y55o p
*55p q
$num55q r
)55r s
;55s t
ContentPanel66 
.66 
GetComponent66 !
<66! "
RectTransform66" /
>66/ 0
(660 1
)661 2
.662 3
	sizeDelta663 <
=66= >
new66? B
Vector266C J
(66J K
ContentPanel66K W
.66W X
GetComponent66X d
<66d e
RectTransform66e r
>66r s
(66s t
)66t u
.66u v
	sizeDelta66v 
.	66 �
x
66� �
,
66� �
y
66� �
)
66� �
;
66� �
}77 
public== 

void== 

SelectItem== 
(== 
string== !
key==" %
)==% &
{>> !
currentlySelectedItem@@ 
=@@ 
items@@  %
[@@% &
key@@& )
]@@) *
;@@* +
refreshInfoBB 
(BB 
)BB 
;BB 
}CC 
privateHH 
voidHH 
refreshInfoHH 
(HH 
)HH 
{II 

GameObjectJJ 
go1JJ 
=JJ 
	InfoPanelJJ "
.JJ" #
	transformJJ# ,
.JJ, -
FindJJ- 1
(JJ1 2
$strJJ2 D
)JJD E
.JJE F

gameObjectJJF P
;JJP Q

GameObjectKK 
go2KK 
=KK 
	InfoPanelKK "
.KK" #
	transformKK# ,
.KK, -
FindKK- 1
(KK1 2
$strKK2 E
)KKE F
.KKF G

gameObjectKKG Q
;KKQ R

GameObjectLL 
go3LL 
=LL 
	InfoPanelLL "
.LL" #
	transformLL# ,
.LL, -
FindLL- 1
(LL1 2
$strLL2 E
)LLE F
.LLF G

gameObjectLLG Q
;LLQ R
go1NN 
.NN 
GetComponentNN 
<NN 
TextNN 
>NN 
(NN 
)NN  
.NN  !
textNN! %
=NN& '!
currentlySelectedItemNN( =
.NN= >

returnNameNN> H
(NNH I
)NNI J
;NNJ K
go2OO 
.OO 
GetComponentOO 
<OO 
TextOO 
>OO 
(OO 
)OO  
.OO  !
textOO! %
=OO& '!
currentlySelectedItemOO( =
.OO= >
ItemDescOO> F
;OOF G
go3PP 
.PP 
GetComponentPP 
<PP 
ImagePP 
>PP 
(PP  
)PP  !
.PP! "
spritePP" (
=PP) *!
currentlySelectedItemPP+ @
.PP@ A

ItemSpritePPA K
;PPK L
}QQ 
publicVV 

voidVV 
BuyItemVV 
(VV 
)VV 
{WW !
currentlySelectedItemXX 
.XX 
AddItemXX %
(XX% &
)XX& '
;XX' (
}YY 
public^^ 

void^^ 
OpenShop^^ 
(^^ 
)^^ 
{__ 

GameObject`` 
.`` !
FindGameObjectWithTag`` (
(``( )
$str``) 6
)``6 7
.``7 8
GetComponent``8 D
<``D E

GameMaster``E O
>``O P
(``P Q
)``Q R
.``R S
IsInventoryOpen``S b
=``c d
true``e i
;``i j
shopaa 
.aa 
	SetActiveaa 
(aa 
trueaa 
)aa 
;aa 
}bb 
publicgg 

voidgg 
	CloseShopgg 
(gg 
)gg 
{hh 

GameObjectii 
.ii !
FindGameObjectWithTagii (
(ii( )
$strii) 6
)ii6 7
.ii7 8
GetComponentii8 D
<iiD E

GameMasteriiE O
>iiO P
(iiP Q
)iiQ R
.iiR S
IsInventoryOpeniiS b
=iic d
falseiie j
;iij k
shopjj 
.jj 
	SetActivejj 
(jj 
falsejj 
)jj 
;jj 
}kk 
privateoo 
voidoo 
OnGUIoo 
(oo 
)oo 
{pp 
	GUILayoutqq 
.qq 
	BeginAreaqq 
(qq 
newqq 
Rectqq  $
(qq$ %
Screenqq% +
.qq+ ,
widthqq, 1
-qq1 2
$numqq2 5
,qq5 6
Screenqq6 <
.qq< =
heightqq= C
-qqD E
$numqqF I
,qqI J
$numqqJ M
,qqM N
$numqqN Q
)qqQ R
)qqR S
;qqS T
ifrr 

(rr 
	GUILayoutrr 
.rr 
Buttonrr 
(rr 
$strrr (
)rr( )
)rr) *
{ss 	
OpenShoptt 
(tt 
)tt 
;tt 
}uu 	
ifvv 

(vv 
	GUILayoutvv 
.vv 
Buttonvv 
(vv 
$strvv )
)vv) *
)vv* +
{ww 	
	CloseShopxx 
(xx 
)xx 
;xx 
}yy 	
	GUILayoutzz 
.zz 
EndAreazz 
(zz 
)zz 
;zz 
}{{ 
}|| �
WC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\ShopSystem\ShopExit.cs
public 
class 
ShopExit 
: 
MonoBehaviour %
,% & 
IPointerClickHandler' ;
{ 
Shop 
shop	 
; 
void		 
Start			 
(		 
)		 
{

 
shop 
= 

GameObject 
. !
FindGameObjectWithTag /
(/ 0
$str0 =
)= >
.> ?
GetComponent? K
<K L
ShopL P
>P Q
(Q R
)R S
;S T
} 
public 

void 
OnPointerClick 
( 
PointerEventData /
data0 4
)4 5
{ 
shop 
. 
	CloseShop 
( 
) 
; 
} 
} �

WC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\ShopSystem\ShopSlot.cs
public 
class 
ShopSlot 
: 
MonoBehaviour %
,% & 
IPointerClickHandler' ;
{ 
private 
Shop 
shop 
; 
void 
Start	 
( 
) 
{ 
shop 
= 

GameObject 
. !
FindGameObjectWithTag /
(/ 0
$str0 =
)= >
.> ?
GetComponent? K
<K L
ShopL P
>P Q
(Q R
)R S
;S T
} 
public 

void 
OnPointerClick 
( 
PointerEventData /
data0 4
)4 5
{ 
if 

( 
shop 
. 
items 
[ 

gameObject !
.! "
name" &
]& '
!=( *
null+ /
)/ 0
{ 	
shop 
. 

SelectItem 
( 

gameObject &
.& '
name' +
)+ ,
;, -
} 	
} 
} �
XC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\ShopSystem\buyButton.cs
public 
class 
	buyButton 
: 
MonoBehaviour &
,& ' 
IPointerClickHandler( <
{ 
Shop 
shop	 
; 
void 
Start	 
( 
) 
{ 
shop 
= 

GameObject 
. !
FindGameObjectWithTag /
(/ 0
$str0 =
)= >
.> ?
GetComponent? K
<K L
ShopL P
>P Q
(Q R
)R S
;S T
} 
public 

void 
OnPointerClick 
( 
PointerEventData /
data0 4
)4 5
{ 
shop 
. 
BuyItem 
( 
) 
; 
} 
} �#
gC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\AA_Rami\testi scriptejä\MainAltCamControls.cs
public

 
class

 
MainAltCamControls

 
:

  !
MonoBehaviour

" /
{

0 1
public 

Camera 
Camera 
; 
public 

	Transform 
CamPos1 
, 
CamPos2 %
;% &
public 

bool 

transition 
= 
false "
;" #
public 

bool 
cam1 
= 
true 
; 
float 	
transitionTime
 
= 
$num  
;  !
private 
void 
Start 
( 
) 
{ 
Camera 
. 
	transform 
. 
position !
=" #
CamPos1$ +
.+ ,
position, 4
;4 5
} 
public 

void 
Update 
( 
) 
{ 
if 

( 

transition 
== 
true 
) 
{ 	
	ChangePos 
( 
) 
; 
} 	
} 
public## 

void## 
	ChangePos## 
(## 
)## 
{$$ 
if%% 

(%% 
cam1%% 
!=%% 
true%% 
)%% 
{&& 	
Camera'' 
.'' 
	transform'' 
.'' 
position'' %
=''& '
new''( +
Vector3'', 3
(''3 4
Mathf''4 9
.''9 :
Lerp'': >
(''> ?
Camera''? E
.''E F
	transform''F O
.''O P
position''P X
.''X Y
x''Y Z
,''Z [
CamPos1''\ c
.''c d
position''d l
.''l m
x''m n
,''n o
transitionTime''p ~
)''~ 
,	'' �
Camera
''� �
.
''� �
	transform
''� �
.
''� �
position
''� �
.
''� �
y
''� �
,
''� �
Camera
''� �
.
''� �
	transform
''� �
.
''� �
position
''� �
.
''� �
z
''� �
)
''� �
;
''� �
if)) 
()) 
()) 
int)) 
))) 
Camera)) 
.)) 
	transform)) %
.))% &
position))& .
.)). /
x))/ 0
<=))1 3
())4 5
int))5 8
)))8 9
CamPos1))9 @
.))@ A
	transform))A J
.))J K
position))K S
.))S T
x))T U
)))U V
{** 

transition++ 
=++ 
false++ "
;++" #
cam1,, 
=,, 
true,, 
;,, 
}-- 
}.. 	
else// 
{00 	
Camera11 
.11 
	transform11 
.11 
position11 %
=11& '
new11( +
Vector311, 3
(113 4
Mathf114 9
.119 :
Lerp11: >
(11> ?
Camera11? E
.11E F
	transform11F O
.11O P
position11P X
.11X Y
x11Y Z
,11Z [
CamPos211\ c
.11c d
position11d l
.11l m
x11m n
,11n o
transitionTime11p ~
)11~ 
,	11 �
Camera
11� �
.
11� �
	transform
11� �
.
11� �
position
11� �
.
11� �
y
11� �
,
11� �
Camera
11� �
.
11� �
	transform
11� �
.
11� �
position
11� �
.
11� �
z
11� �
)
11� �
;
11� �
if33 
(33 
(33 
int33 
)33 
Camera33 
.33 
	transform33 %
.33% &
position33& .
.33. /
x33/ 0
>=331 3
(334 5
int335 8
)338 9
CamPos2339 @
.33@ A
	transform33A J
.33J K
position33K S
.33S T
x33T U
)33U V
{44 

transition55 
=55 
false55 "
;55" #
cam166 
=66 
false66 
;66 
}77 
}88 	
}99 
}:: �$
HC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\DialogueTest.cs
public 
class 
DialogueTest 
: 
MonoBehaviour )
{ 
RPGTalk 
rpgTalk 
; 
MainAltCamControls		 
altCam		 
;		 

GameMaster

 
gm

 
;

 
bool 
tutorial1done	 
= 
false 
; 
bool 
tutorial2done	 
= 
false 
; 
bool 
tutorial3done	 
= 
false 
; 
private 
void 
Awake 
( 
) 
{ 
gm 

= 

GameObject 
. 
Find 
( 
$str *
)* +
.+ ,
GetComponent, 8
<8 9

GameMaster9 C
>C D
(D E
)E F
;F G
rpgTalk 
= 
gm 
. 
GetComponent !
<! "
RPGTalk" )
>) *
(* +
)+ ,
;, -
altCam 
= 

GameObject 
. 
Find  
(  !
$str! 1
)1 2
.2 3
GetComponent3 ?
<? @
MainAltCamControls@ R
>R S
(S T
)T U
;U V
} 
void 
Start	 
( 
) 
{ 
StartCoroutine 
( 
Wait 
( 
	Tutorial1 %
)% &
)& '
;' (
} 
void 
Update	 
( 
) 
{ 
if 

( 
altCam 
. 
cam1 
== 
false  
&&! #
tutorial2done$ 1
==2 4
false5 :
): ;
{ 	
StartCoroutine   
(   
Wait   
(    
	Tutorial2    )
)  ) *
)  * +
;  + ,
tutorial2done!! 
=!! 
true!!  
;!!  !
}"" 	
if## 

(## 
ColliderHandler## 
.## 
parentGameObject## ,
.##, -
tag##- 0
==##1 3
$str##4 @
&&##A C
gm##D F
.##F G
IsInventoryOpen##G V
==##W Y
true##Z ^
&&##_ a
tutorial3done##b o
==##p r
false##s x
)##x y
{$$ 	
StartCoroutine%% 
(%% 
Wait%% 
(%%  
	Tutorial3%%  )
)%%) *
)%%* +
;%%+ ,
tutorial3done&& 
=&& 
true&&  
;&&  !
}'' 	
}(( 
void** 
	Tutorial1**	 
(** 
)** 
{++ 
rpgTalk,, 
.,, 
lineToStart,, 
=,, 
$num,, 
;,,  
rpgTalk-- 
.-- 
lineToBreak-- 
=-- 
$num-- 
;--  
rpgTalk.. 
... 
NewTalk.. 
(.. 
).. 
;.. 
}// 
void11 
	Tutorial211	 
(11 
)11 
{22 
rpgTalk33 
.33 
lineToStart33 
=33 
$num33 
;33  
rpgTalk44 
.44 
lineToBreak44 
=44 
$num44 
;44  
rpgTalk55 
.55 
NewTalk55 
(55 
)55 
;55 
}66 
void88 
	Tutorial388	 
(88 
)88 
{99 
rpgTalk:: 
.:: 
lineToStart:: 
=:: 
$num:: 
;::  
rpgTalk;; 
.;; 
lineToBreak;; 
=;; 
$num;; 
;;;  
rpgTalk<< 
.<< 
NewTalk<< 
(<< 
)<< 
;<< 
}== 
IEnumerator?? 
Wait?? 
(?? 
System?? 
.?? 
Action?? "
tutorial??# +
)??+ ,
{@@ 
yieldAA 
returnAA 
newAA 
WaitForSecondsAA '
(AA' (
$numAA( )
)AA) *
;AA* +
tutorialBB 
(BB 
)BB 
;BB 
}CC 
}DD ��
XC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\RPGTALK\Editor\RPGTalkEditor.cs
[ 
CustomEditor 
( 
typeof 
( 
RPGTalk 
) 
) 
] 
public 
class 
RPGTalkEditor 
: 
Editor #
{		 
override 	
public
 
void 
OnInspectorGUI $
($ %
)% &
{ 
serializedObject 
. 
Update 
( 
) 
; 
RPGTalk 	
rpgTalk
 
= 
( 
RPGTalk 
) 
target #
;# $
EditorGUIUtility 
. 
LookLikeInspector $
($ %
)% &
;& '
	EditorGUI 
. 
BeginChangeCheck 
( 
) 
; 
EditorGUILayout 
. 

LabelField 
( 
$str Y
)Y Z
;Z [
EditorGUILayout 
. 
PropertyField 
(  !
serializedObject! 1
.1 2
FindProperty2 >
(> ?
$str? K
)K L
,L M

GUIContentM W
.W X
noneX \
)\ ]
;] ^
if 
( 
serializedObject 
. 
FindProperty "
(" #
$str# /
)/ 0
.0 1 
objectReferenceValue1 E
==F H
nullI M
)M N
{N O
EditorGUILayout 
. 
HelpBox 
( 
$str P
,P Q
MessageTypeR ]
.] ^
Error^ c
,c d
truee i
)i j
;j k
} 
EditorGUILayout 
. 
PropertyField 
(  !
serializedObject! 1
.1 2
FindProperty2 >
(> ?
$str? O
)O P
,P Q
trueQ U
)U V
;V W
if 
( 
serializedObject 
. 
FindProperty "
(" #
$str# 3
)3 4
.4 5
	arraySize5 >
==? A
$numB C
)C D
{D E
EditorGUILayout 
. 
HelpBox 
( 
$str a
+b c
$str 1
,1 2
MessageType3 >
.> ?
Warning? F
,F G
trueH L
)L M
;M N
} 
EditorGUILayout!! 
.!! 
BeginVertical!! 
(!!  
(!!! "
GUIStyle!!" *
)!!* +
$str!!, 5
)!!5 6
;!!6 7
EditorGUILayout## 
.## 

LabelField## 
(## 
$str## /
,##/ 0
EditorStyles##0 <
.##< =
	boldLabel##= F
)##F G
;##G H
rpgTalk$$ 	
.$$	 

startOnAwake$$
 
=$$ 
	GUILayout$$ "
.$$" #
Toggle$$# )
($$) *
rpgTalk$$* 1
.$$1 2
startOnAwake$$2 >
,$$> ?
$str$$@ Q
)$$Q R
;$$R S
rpgTalk%% 	
.%%	 

dialoger%%
 
=%% 
	GUILayout%% 
.%% 
Toggle%% %
(%%% &
rpgTalk%%& -
.%%- .
dialoger%%. 6
,%%6 7
$str%%8 ]
)%%] ^
;%%^ _
rpgTalk&& 	
.&&	 

shouldUsePhotos&&
 
=&& 
	GUILayout&& %
.&&% &
Toggle&&& ,
(&&, -
rpgTalk&&- 4
.&&4 5
shouldUsePhotos&&5 D
,&&D E
$str&&F p
)&&p q
;&&q r
rpgTalk'' 	
.''	 

shouldStayOnScreen''
 
='' 
	GUILayout'' (
.''( )
Toggle'') /
(''/ 0
rpgTalk''0 7
.''7 8
shouldStayOnScreen''8 J
,''J K
$str	''L �
)
''� �
;
''� �
rpgTalk(( 	
.((	 

shouldFollow((
 
=(( 
	GUILayout(( "
.((" #
Toggle((# )
((() *
rpgTalk((* 1
.((1 2
shouldFollow((2 >
,((> ?
$str((@ c
)((c d
;((d e
if)) 
()) 
rpgTalk)) 
.)) 
shouldFollow)) 
))) 
{)) 
	EditorGUI** 
.** 
indentLevel** 
++** 
;** 
EditorGUILayout++ 
.++ 

LabelField++ 
(++ 
$str++ P
)++P Q
;++Q R
EditorGUILayout,, 
.,, 
BeginHorizontal,, "
(,," #
),,# $
;,,$ %
EditorGUILayout-- 
.-- 
PropertyField--  
(--! "
serializedObject--" 2
.--2 3
FindProperty--3 ?
(--? @
$str--@ H
)--H I
,--I J

GUIContent--J T
.--T U
none--U Y
)--Y Z
;--Z [
EditorGUILayout.. 
... 
PropertyField..  
(..! "
serializedObject.." 2
...2 3
FindProperty..3 ?
(..? @
$str..@ N
)..N O
,..O P

GUIContent..P Z
...Z [
none..[ _
).._ `
;..` a
EditorGUILayout// 
.// 
EndHorizontal//  
(//  !
)//! "
;//" #
if11 
(11 
rpgTalk11 
.11 
shouldFollow11 
&&11 
serializedObject11 .
.11. /
FindProperty11/ ;
(11; <
$str11< D
)11D E
.11E F 
objectReferenceValue11F Z
==11[ ]
null11^ b
)11b c
{11c d
EditorGUILayout22 
.22 
HelpBox22 
(22 
$str22 >
,22> ?
MessageType22@ K
.22K L
Error22L Q
,22Q R
true22S W
)22W X
;22X Y
}33 
EditorGUILayout55 
.55 

LabelField55 
(55 
$str55 c
)55c d
;55d e
EditorGUILayout66 
.66 
BeginHorizontal66 "
(66" #
)66# $
;66$ %
rpgTalk77 

.77
 
	billboard77 
=77 
	GUILayout77  
.77  !
Toggle77! '
(77' (
rpgTalk77( /
.77/ 0
	billboard770 9
,779 :
$str77: F
)77F G
;77G H
if88 
(88 
rpgTalk88 
.88 
	billboard88 
)88 
{88 
rpgTalk99 
.99 

mainCamera99 
=99 
	GUILayout99 "
.99" #
Toggle99# )
(99* +
rpgTalk99+ 2
.992 3

mainCamera993 =
,99= >
$str99? V
)99V W
;99W X
}:: 
EditorGUILayout;; 
.;; 
EndHorizontal;;  
(;;  !
);;! "
;;;" #
if<< 
(<< 
rpgTalk<< 
.<< 
	billboard<< 
&&<< 
!<< 
rpgTalk<< $
.<<$ %

mainCamera<<% /
)<</ 0
{<<1 2
EditorGUILayout== 
.== 

LabelField== 
(== 
$str== N
)==N O
;==O P
EditorGUILayout>> 
.>> 
PropertyField>> !
(>>" #
serializedObject>># 3
.>>3 4
FindProperty>>4 @
(>>@ A
$str>>A N
)>>N O
,>>O P

GUIContent>>P Z
.>>Z [
none>>[ _
)>>_ `
;>>` a
}?? 
	EditorGUI@@ 
.@@ 
indentLevel@@ 
--@@ 
;@@ 
}AA 
rpgTalkBB 	
.BB	 

enableQuickSkipBB
 
=BB 
	GUILayoutBB %
.BB% &
ToggleBB& ,
(BB, -
rpgTalkBB- 4
.BB4 5
enableQuickSkipBB5 D
,BBD E
$strBBF }
)BB} ~
;BB~ 
EditorGUILayoutCC 
.CC 
PropertyFieldCC 
(CC  !
serializedObjectCC! 1
.CC1 2
FindPropertyCC2 >
(CC> ?
$strCC? J
)CCJ K
)CCK L
;CCL M
rpgTalkEE 	
.EE	 

passWithMouseEE
 
=EE 
	GUILayoutEE #
.EE# $
ToggleEE$ *
(EE* +
rpgTalkEE+ 2
.EE2 3
passWithMouseEE3 @
,EE@ A
$strEEB c
)EEc d
;EEd e
EditorGUILayoutFF 
.FF 

LabelFieldFF 
(FF 
$strFF l
)FFl m
;FFm n
EditorGUILayoutGG 
.GG 
PropertyFieldGG 
(GG  !
serializedObjectGG! 1
.GG1 2
FindPropertyGG2 >
(GG> ?
$strGG? T
)GGT U
,GGU V

GUIContentGGV `
.GG` a
noneGGa e
)GGe f
;GGf g
ifHH 
(HH 
!HH 
rpgTalkHH 
.HH 
passWithMouseHH 
&&HH 
serializedObjectHH /
.HH/ 0
FindPropertyHH0 <
(HH< =
$strHH= R
)HHR S
.HHS T
stringValueHHT _
==HH` b
$strHHc e
)HHe f
{HHf g
EditorGUILayoutII 
.II 
HelpBoxII 
(II 
$strII i
,IIi j
MessageTypeIIk v
.IIv w
WarningIIw ~
,II~ 
true
II� �
)
II� �
;
II� �
}JJ 
EditorGUILayoutLL 
.LL 
SpaceLL 
(LL 
)LL 
;LL 
EditorGUILayoutMM 
.MM 

LabelFieldMM 
(MM 
$strMM c
)MMc d
;MMd e
rpgTalkNN 	
.NN	 

wordWrapNN
 
=NN 
	GUILayoutNN 
.NN 
ToggleNN %
(NN% &
rpgTalkNN& -
.NN- .
wordWrapNN. 6
,NN6 7
$strNN8 D
)NND E
;NNE F
ifOO 
(OO 
rpgTalkOO 
.OO 
wordWrapOO 
)OO 
{OO 
EditorGUILayoutPP 
.PP 

LabelFieldPP 
(PP 
$strPP g
)PPg h
;PPh i
	EditorGUIQQ 
.QQ 
indentLevelQQ 
++QQ 
;QQ 
EditorGUILayoutRR 
.RR 
PropertyFieldRR  
(RR! "
serializedObjectRR" 2
.RR2 3
FindPropertyRR3 ?
(RR@ A
$strRRA Q
)RRQ R
)RRR S
;RRS T
EditorGUILayoutSS 
.SS 
PropertyFieldSS  
(SS! "
serializedObjectSS" 2
.SS2 3
FindPropertySS3 ?
(SS@ A
$strSSA R
)SSR S
)SSS T
;SST U
	EditorGUITT 
.TT 
indentLevelTT 
--TT 
;TT 
}VV 
EditorGUILayoutXX 
.XX 
EndVerticalXX 
(XX 
)XX  
;XX  !
EditorGUILayout\\ 
.\\ 
BeginVertical\\ 
(\\  
(\\! "
GUIStyle\\" *
)\\* +
$str\\, 5
)\\5 6
;\\6 7
EditorGUILayout]] 
.]] 

LabelField]] 
(]] 
$str]] )
,]]) *
EditorStyles]]* 6
.]]6 7
	boldLabel]]7 @
)]]@ A
;]]A B
EditorGUILayout^^ 
.^^ 

LabelField^^ 
(^^ 
$str^^ D
)^^D E
;^^E F
EditorGUILayout__ 
.__ 
PropertyField__ 
(__  !
serializedObject__! 1
.__1 2
FindProperty__2 >
(__> ?
$str__? G
)__G H
)__H I
;__I J
if`` 
(`` 
serializedObject`` 
.`` 
FindProperty`` "
(``" #
$str``# +
)``+ ,
.``, - 
objectReferenceValue``- A
==``B D
null``E I
)``I J
{``J K
EditorGUILayoutaa 
.aa 
HelpBoxaa 
(aa 
$straa Z
,aaZ [
MessageTypeaa\ g
.aag h
Erroraah m
,aam n
trueaao s
)aas t
;aat u
}bb 
ifcc 
(cc 
rpgTalkcc 
.cc 
dialogercc 
)cc 
{cc 
EditorGUILayoutdd 
.dd 

LabelFielddd 
(dd 
$strdd L
)ddL M
;ddM N
EditorGUILayoutee 
.ee 
PropertyFieldee  
(ee! "
serializedObjectee" 2
.ee2 3
FindPropertyee3 ?
(ee? @
$stree@ L
)eeL M
)eeM N
;eeN O
ifff 
(ff 
serializedObjectff 
.ff 
FindPropertyff #
(ff# $
$strff$ 0
)ff0 1
.ff1 2 
objectReferenceValueff2 F
==ffG I
nullffJ N
)ffN O
{ffO P
EditorGUILayoutgg 
.gg 
HelpBoxgg 
(gg 
$strgg d
,ggd e
MessageTypeggf q
.ggq r
Errorggr w
,ggw x
trueggy }
)gg} ~
;gg~ 
}hh 
}ii 
ifjj 
(jj 
rpgTalkjj 
.jj 
shouldUsePhotosjj 
)jj 
{jj  
EditorGUILayoutkk 
.kk 

LabelFieldkk 
(kk 
$strkk M
)kkM N
;kkN O
EditorGUILayoutll 
.ll 
PropertyFieldll  
(ll! "
serializedObjectll" 2
.ll2 3
FindPropertyll3 ?
(ll? @
$strll@ I
)llI J
)llJ K
;llK L
ifmm 
(mm 
serializedObjectmm 
.mm 
FindPropertymm #
(mm# $
$strmm$ -
)mm- .
.mm. / 
objectReferenceValuemm/ C
==mmD F
nullmmG K
)mmK L
{mmL M
EditorGUILayoutnn 
.nn 
HelpBoxnn 
(nn 
$strnn f
,nnf g
MessageTypennh s
.nns t
Errornnt y
,nny z
truenn{ 
)	nn �
;
nn� �
}oo 
}pp 
EditorGUILayoutqq 
.qq 

LabelFieldqq 
(qq 
$strqq P
)qqP Q
;qqQ R
EditorGUILayoutrr 
.rr 
PropertyFieldrr 
(rr  !
serializedObjectrr! 1
.rr1 2
FindPropertyrr2 >
(rr> ?
$strrr? O
)rrO P
,rrP Q

GUIContentrrQ [
.rr[ \
nonerr\ `
)rr` a
;rra b
EditorGUILayoutss 
.ss 
EndVerticalss 
(ss 
)ss  
;ss  !
EditorGUILayoutvv 
.vv 
BeginVerticalvv 
(vv  
(vv! "
GUIStylevv" *
)vv* +
$strvv, 5
)vv5 6
;vv6 7
EditorGUILayoutww 
.ww 

LabelFieldww 
(ww 
$strww <
,ww< =
EditorStylesww= I
.wwI J
	boldLabelwwJ S
)wwS T
;wwT U
EditorGUILayoutxx 
.xx 

LabelFieldxx 
(xx 
$strxx Q
)xxQ R
;xxR S
EditorGUILayoutyy 
.yy 
PropertyFieldyy 
(yy  !
serializedObjectyy! 1
.yy1 2
FindPropertyyy2 >
(yy> ?
$stryy? O
)yyO P
,yyP Q

GUIContentyyQ [
.yy[ \
noneyy\ `
)yy` a
;yya b
ifzz 
(zz 
serializedObjectzz 
.zz 
FindPropertyzz "
(zz" #
$strzz# 3
)zz3 4
.zz4 5 
objectReferenceValuezz5 I
!=zzJ L
nullzzM Q
)zzQ R
{zzR S
EditorGUILayout{{ 
.{{ 

LabelField{{ 
({{ 
$str{{ N
){{N O
;{{O P
EditorGUILayout|| 
.|| 
PropertyField||  
(||! "
serializedObject||" 2
.||2 3
FindProperty||3 ?
(||? @
$str||@ R
)||R S
,||S T

GUIContent||T ^
.||^ _
none||_ c
)||c d
;||d e
if}} 
(}} 
serializedObject}} 
.}} 
FindProperty}} #
(}}# $
$str}}$ 6
)}}6 7
.}}7 8
stringValue}}8 C
==}}D F
$str}}G I
)}}I J
{}}J K
EditorGUILayout~~ 
.~~ 
HelpBox~~ 
(~~ 
$str	~~ �
,
~~� �
MessageType
~~� �
.
~~� �
Error
~~� �
,
~~� �
true
~~� �
)
~~� �
;
~~� �
} 
}
�� 
EditorGUILayout
�� 
.
�� 
Space
�� 
(
�� 
)
�� 
;
�� 
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� k
)
��k l
;
��l m
EditorGUILayout
�� 
.
�� 
BeginHorizontal
�� !
(
��" #
)
��# $
;
��$ %
EditorGUILayout
�� 
.
�� 
PropertyField
�� 
(
��  !
serializedObject
��! 1
.
��1 2
FindProperty
��2 >
(
��> ?
$str
��? L
)
��L M
,
��M N

GUIContent
��N X
.
��X Y
none
��Y ]
)
��] ^
;
��^ _
EditorGUILayout
�� 
.
�� 
PropertyField
�� 
(
��  !
serializedObject
��! 1
.
��1 2
FindProperty
��2 >
(
��> ?
$str
��? L
)
��L M
,
��M N

GUIContent
��N X
.
��X Y
none
��Y ]
)
��] ^
;
��^ _
EditorGUILayout
�� 
.
�� 
EndHorizontal
�� 
(
��  !
)
��! "
;
��" #
if
�� 
(
�� 
serializedObject
�� 
.
�� 
FindProperty
�� "
(
��" #
$str
��# 0
)
��0 1
.
��1 2
intValue
��2 :
<
��; <
$num
��= >
)
��> ?
{
��? @
EditorGUILayout
�� 
.
�� 
HelpBox
�� 
(
�� 
$str
�� V
,
��V W
MessageType
��X c
.
��c d
Error
��d i
,
��i j
true
��k o
)
��o p
;
��p q
}
�� 
if
�� 
(
�� 
serializedObject
�� 
.
�� 
FindProperty
�� "
(
��" #
$str
��# 0
)
��0 1
.
��1 2
intValue
��2 :
!=
��; =
-
��> ?
$num
��? @
&&
��A C
serializedObject
�� 
.
�� 
FindProperty
��  
(
��  !
$str
��! .
)
��. /
.
��/ 0
intValue
��0 8
<
��9 :
serializedObject
��; K
.
��K L
FindProperty
��L X
(
��X Y
$str
��Y f
)
��f g
.
��g h
intValue
��h p
)
��p q
{
��q r
EditorGUILayout
�� 
.
�� 
HelpBox
�� 
(
�� 
$str
�� x
+
��y z
$str
�� k
,
��k l
MessageType
��m x
.
��x y
Error
��y ~
,
��~ 
true��� �
)��� �
;��� �
}
�� 
EditorGUILayout
�� 
.
�� 
Space
�� 
(
�� 
)
�� 
;
�� 
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� S
)
��S T
;
��T U
	EditorGUI
�� 
.
�� 
indentLevel
�� 
++
�� 
;
�� 
EditorGUILayout
�� 
.
�� 
PropertyField
�� 
(
��  !
serializedObject
��! 1
.
��1 2
FindProperty
��2 >
(
��> ?
$str
��? J
)
��J K
,
��K L
true
��L P
)
��P Q
;
��Q R
	EditorGUI
�� 
.
�� 
indentLevel
�� 
--
�� 
;
�� 
if
�� 
(
�� 
rpgTalk
�� 
.
�� 
shouldUsePhotos
�� 
)
�� 
{
��  
EditorGUILayout
�� 
.
�� 
Space
�� 
(
�� 
)
�� 
;
�� 
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� H
)
��H I
;
��I J
	EditorGUI
�� 
.
�� 
indentLevel
�� 
++
�� 
;
�� 
EditorGUILayout
�� 
.
�� 
PropertyField
��  
(
��! "
serializedObject
��" 2
.
��2 3
FindProperty
��3 ?
(
��@ A
$str
��A I
)
��I J
,
��J K
true
��L P
)
��P Q
;
��Q R
	EditorGUI
�� 
.
�� 
indentLevel
�� 
--
�� 
;
�� 
}
�� 
EditorGUILayout
�� 
.
�� 
EndVertical
�� 
(
�� 
)
��  
;
��  !
EditorGUILayout
�� 
.
�� 
BeginVertical
�� 
(
��  
(
��! "
GUIStyle
��" *
)
��* +
$str
��, 5
)
��5 6
;
��6 7
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� )
,
��) *
EditorStyles
��* 6
.
��6 7
	boldLabel
��7 @
)
��@ A
;
��A B
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� J
)
��J K
;
��K L
EditorGUILayout
�� 
.
�� 
PropertyField
�� 
(
��  !
serializedObject
��! 1
.
��1 2
FindProperty
��2 >
(
��> ?
$str
��? T
)
��T U
,
��U V

GUIContent
��V `
.
��` a
none
��a e
)
��e f
;
��f g
if
�� 
(
�� 
serializedObject
�� 
.
�� 
FindProperty
�� "
(
��" #
$str
��# 8
)
��8 9
.
��9 :"
objectReferenceValue
��: N
!=
��O Q
null
��R V
)
��V W
{
��W X
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� W
)
��W X
;
��X Y
EditorGUILayout
�� 
.
�� 
PropertyField
��  
(
��! "
serializedObject
��" 2
.
��2 3
FindProperty
��3 ?
(
��? @
$str
��@ U
)
��U V
,
��V W

GUIContent
��W a
.
��a b
none
��b f
)
��f g
;
��g h
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� l
)
��l m
;
��m n
EditorGUILayout
�� 
.
�� 
PropertyField
��  
(
��! "
serializedObject
��" 2
.
��2 3
FindProperty
��3 ?
(
��? @
$str
��@ Q
)
��Q R
,
��R S

GUIContent
��S ]
.
��] ^
none
��^ b
)
��b c
;
��c d
}
�� 
EditorGUILayout
�� 
.
�� 
EndVertical
�� 
(
�� 
)
��  
;
��  !
EditorGUILayout
�� 
.
�� 
BeginVertical
�� 
(
��  
(
��! "
GUIStyle
��" *
)
��* +
$str
��, 5
)
��5 6
;
��6 7
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� %
,
��% &
EditorStyles
��& 2
.
��2 3
	boldLabel
��3 <
)
��< =
;
��= >
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� E
)
��E F
;
��F G
EditorGUILayout
�� 
.
�� 
PropertyField
�� 
(
��  !
serializedObject
��! 1
.
��1 2
FindProperty
��2 >
(
��> ?
$str
��? J
)
��J K
,
��K L

GUIContent
��L V
.
��V W
none
��W [
)
��[ \
;
��\ ]
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� V
)
��V W
;
��W X
EditorGUILayout
�� 
.
�� 
PropertyField
�� 
(
��  !
serializedObject
��! 1
.
��1 2
FindProperty
��2 >
(
��> ?
$str
��? J
)
��J K
,
��K L

GUIContent
��L V
.
��V W
none
��W [
)
��[ \
;
��\ ]
EditorGUILayout
�� 
.
�� 
EndVertical
�� 
(
�� 
)
��  
;
��  !
EditorGUILayout
�� 
.
�� 
	Separator
�� 
(
�� 
)
�� 
;
�� 
EditorGUILayout
�� 
.
�� 
BeginVertical
�� 
(
��  
(
��! "
GUIStyle
��" *
)
��* +
$str
��, 5
)
��5 6
;
��6 7
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� D
,
��D E
EditorStyles
��E Q
.
��Q R
	boldLabel
��R [
)
��[ \
;
��\ ]
GUIStyle
�� 

style
�� 
=
�� 
new
�� 
GUIStyle
�� 
(
��  !
)
��! "
;
��" #
style
�� 
.
�� 
richText
�� 
=
�� 
true
�� 
;
�� 
string
�� 
color
��	 
=
�� 
$str
�� 
;
�� 
	GUILayout
�� 
.
�� 
Label
�� 
(
�� 
string
�� 
.
�� 
Format
�� 
(
��  
$str��  �
,��� �
color��� �
)��� �
,��� �
style��� �
)��� �
;��� �
EditorGUILayout
�� 
.
�� 
BeginHorizontal
�� !
(
��" #
)
��# $
;
��$ %
if
�� 
(
�� 
	GUILayout
�� 
.
�� 
Button
�� 
(
�� 
$str
�� 4
)
��4 5
)
��5 6
{
��7 8
Application
�� 
.
�� 
OpenURL
�� 
(
�� 
$str
�� @
)
��@ A
;
��A B
}
�� 
if
�� 
(
�� 
	GUILayout
�� 
.
�� 
Button
�� 
(
�� 
$str
�� /
)
��/ 0
)
��0 1
{
��2 3
Application
�� 
.
�� 
OpenURL
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <
}
�� 
EditorGUILayout
�� 
.
�� 
EndHorizontal
�� 
(
��  !
)
��! "
;
��" #
GUIStyle
�� 

centeredStyle
�� 
=
�� 
GUI
�� 
.
�� 
skin
�� #
.
��# $
GetStyle
��$ ,
(
��, -
$str
��- 4
)
��4 5
;
��5 6
centeredStyle
�� 
.
�� 
	alignment
�� 
=
�� 

TextAnchor
�� &
.
��& '
UpperCenter
��' 2
;
��2 3
EditorGUILayout
�� 
.
�� 

LabelField
�� 
(
�� 
$str
�� 3
,
��3 4
centeredStyle
��4 A
)
��A B
;
��B C
EditorGUILayout
�� 
.
�� 
EndVertical
�� 
(
�� 
)
��  
;
��  !
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� 
(
�� 
)
�� 
)
��  
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� +
(
��+ ,
)
��, -
;
��- .
EditorGUIUtility
�� 
.
�� 
LookLikeControls
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}�� ��
KC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\RPGTALK\RPGTalk.cs
[		 
AddComponentMenu		 
(		 
$str		 *
)		* +
]		+ ,
public

 
class

 
RPGTalk

 
:

 
MonoBehaviour

 $
{

% &
[ 
Tooltip 	
(	 

$str
 ?
)? @
]@ A
public 
bool 
startOnAwake 
= 
true  
;  !
[ 
Tooltip 	
(	 

$str
 C
)C D
]D E
public 

GameObject 
[ 
] 
showWithDialog #
;# $
[ 
Tooltip 	
(	 

$str
 
) 
] 
public 
Text 
textUI 
; 
[ 
Tooltip 	
(	 

$str
 0
)0 1
]1 2
public 
bool 
dialoger 
; 
[ 
Tooltip 	
(	 

$str
 #
)# $
]$ %
public 
Text 

dialogerUI 
; 
[ 
Tooltip 	
(	 

$str
 .
). /
]/ 0
public 
bool 
shouldFollow 
; 
[ 
Tooltip 	
(	 

$str
 
) 
] 
public 

GameObject 
follow 
; 
[!! 
Tooltip!! 	
(!!	 

$str!!
 <
)!!< =
]!!= >
public"" 
Vector3"" 
followOffset"" 
;"" 
[$$ 
Tooltip$$ 	
($$	 

$str$$
 6
)$$6 7
]$$7 8
public%% 
bool%% 
	billboard%% 
=%% 
true%% 
;%% 
['' 
Tooltip'' 	
(''	 

$str''
 +
)''+ ,
]'', -
public(( 
bool(( 

mainCamera(( 
=(( 
true(( 
;(( 
[** 
Tooltip** 	
(**	 

$str**
 +
)**+ ,
]**, -
public++ 
Camera++ 
otherCamera++ 
;++ 
[-- 
Tooltip-- 	
(--	 

$str--
 $
)--$ %
]--% &
public.. 
	TextAsset.. 

txtToParse.. 
;.. 
[11 
Tooltip11 	
(11	 

$str11
 <
)11< =
]11= >
public22 
bool22 
enableQuickSkip22 
=22 
true22 #
;22# $
[44 
Tooltip44 	
(44	 

$str44
 n
)44n o
]44o p
public55 
MonoBehaviour55 
callbackScript55 $
;55$ %
[77 
Tooltip77 	
(77	 

$str77
 6
)776 7
]777 8
public88 
string88 
callbackFunction88 
;88  
[:: 
Tooltip:: 	
(::	 

$str::
 H
)::H I
]::I J
public;; 
Animator;; 
animatorWhenTalking;; $
;;;$ %
[== 
Tooltip== 	
(==	 

$str==
 4
)==4 5
]==5 6
public>> 
string>> 
animatorBooleanName>> "
;>>" #
[@@ 
Tooltip@@ 	
(@@	 

$str@@
 C
)@@C D
]@@D E
publicAA 
stringAA 
animatorIntNameAA 
;AA 
privateLL 
intLL	 
cutscenePositionLL 
=LL 
$numLL  !
;LL! "
[NN 
TooltipNN 	
(NN	 

$strNN
 7
)NN7 8
]NN8 9
publicOO 
floatOO 
	textSpeedOO 
=OO 
$numOO 
;OO  
privateQQ 
floatQQ	 
currentCharQQ 
=QQ 
$numQQ !
;QQ! "
privateTT 
ListTT	 
<TT 
RpgtalkElementTT 
>TT 
rpgtalkElementsTT -
;TT- .
[VV 
TooltipVV 	
(VV	 

$strVV
 ;
)VV; <
]VV< =
publicWW 

GameObjectWW 
blinkWhenReadyWW !
;WW! "
[YY 
TooltipYY 	
(YY	 

$strYY
 .
)YY. /
]YY/ 0
publicZZ 
RPGTalkVariableZZ 
[ZZ 
]ZZ 
	variablesZZ #
;ZZ# $
[\\ 
Tooltip\\ 	
(\\	 

$str\\
 #
)\\# $
]\\$ %
public]] 
bool]] 
shouldUsePhotos]] 
;]] 
[__ 
Tooltip__ 	
(__	 

$str__
 2
)__2 3
]__3 4
public`` 
RPGTalkPhoto`` 
[`` 
]`` 
photos`` 
;`` 
[bb 
Tooltipbb 	
(bb	 

$strbb
 6
)bb6 7
]bb7 8
publiccc 
Imagecc 
UIPhotocc 
;cc 
[ee 
Tooltipee 	
(ee	 

$stree
 J
)eeJ K
]eeK L
publicff 
boolff 
shouldStayOnScreenff 
;ff  
publichh 
boolhh 
lookForClickhh 
=hh 
truehh  
;hh  !
[jj 
Tooltipjj 	
(jj	 

$strjj
 =
)jj= >
]jj> ?
publickk 
	AudioClipkk 
	textAudiokk 
;kk 
[ll 
Tooltipll 	
(ll	 

$strll
 :
)ll: ;
]ll; <
publicmm 
	AudioClipmm 
	passAudiomm 
;mm 
AudioSourcenn 
rpgAudioSorcenn 
;nn 
[qq 
Tooltipqq 	
(qq	 

$strqq
 !
)qq! "
]qq" #
publicrr 
boolrr 
passWithMouserr 
=rr 
truerr !
;rr! "
[tt 
Tooltiptt 	
(tt	 

$strtt
 A
)ttA B
]ttB C
publicuu 
stringuu 
passWithInputButtonuu "
;uu" #
[ww 
Tooltipww 	
(ww	 

$strww
 *
)ww* +
]ww+ ,
publicxx 
intxx 
lineToStartxx 
=xx 
$numxx 
;xx 
[yy 
Tooltipyy 	
(yy	 

$stryy
 Q
)yyQ R
]yyR S
publiczz 
intzz 
lineToBreakzz 
=zz 
-zz 
$numzz 
;zz 
private|| 
int||	 
actualLineToStart|| 
;|| 
private}} 
int}}	 
actualLineToBreak}} 
;}} 
[ 
Tooltip 	
(	 

$str
 8
)8 9
]9 :
public
�� 
bool
�� 
wordWrap
�� 
=
�� 
true
�� 
;
�� 
public
�� 
int
�� 
maxCharInWidth
�� 
=
�� 
$num
�� 
;
��  
public
�� 
int
�� 
maxCharInHeight
�� 
=
�� 
$num
�� 
;
��  
void
�� 
Awake
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
startOnAwake
�� 
)
�� 
{
�� 
NewTalk
�� 

(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 
void
�� 
NewTalk
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
lineToBreak
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
actualLineToBreak
�� 
=
�� 
lineToBreak
�� "
;
��" #
}
�� 
else
�� 
{
�� 
actualLineToBreak
�� 
=
�� 
lineToBreak
�� "
-
��" #
$num
��# $
;
��$ %
}
�� 
actualLineToStart
�� 
=
�� 
lineToStart
�� !
-
��! "
$num
��" #
;
��# $
if
�� 
(
�� 
	textAudio
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
if
�� 
(
�� 
rpgAudioSorce
�� 
==
�� 
null
�� 
)
�� 
{
�� 
rpgAudioSorce
�� 
=
�� 

gameObject
�� 
.
�� 
AddComponent
�� +
<
��+ ,
AudioSource
��, 7
>
��7 8
(
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 
lookForClick
�� 
=
�� 
true
�� 
;
�� 
CancelInvoke
�� 
(
�� 
$str
�� 
)
�� 
;
�� 
if
�� 
(
�� 
blinkWhenReady
�� 
)
�� 
{
�� 
blinkWhenReady
�� 
.
�� 
	SetActive
�� 
(
�� 
false
�� "
)
��" #
;
��# $
}
�� 
cutscenePosition
�� 
=
�� 
$num
�� 
;
�� 
currentChar
�� 
=
�� 
$num
�� 
;
�� 
rpgtalkElements
�� 
=
�� 
new
�� 
List
�� 
<
�� 
RpgtalkElement
�� +
>
��+ ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 

txtToParse
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
StringReader
�� 
reader
�� 
=
�� 
new
�� 
StringReader
�� )
(
��* +

txtToParse
��+ 5
.
��5 6
text
��6 :
)
��: ;
;
��; <
string
�� 	
line
��
 
=
�� 
reader
�� 
.
�� 
ReadLine
��  
(
��  !
)
��! "
;
��" #
int
�� 
currentLine
�� 
=
�� 
$num
�� 
;
�� 
while
�� 
(
��	 

line
��
 
!=
�� 
null
�� 
)
�� 
{
�� 
if
�� 
(
�� 
currentLine
�� 
>=
�� 
actualLineToStart
�� (
)
��( )
{
��* +
if
�� 
(
�� 	
actualLineToBreak
��	 
==
�� 
-
�� 
$num
��  
||
��! #
currentLine
��$ /
<=
��0 2
actualLineToBreak
��3 D
)
��D E
{
��F G
if
�� 
(
��	 

wordWrap
��
 
)
�� 
{
��  
CheckIfTheTextFits
�� 
(
�� 
line
�� 
)
��  
;
��  !
}
�� 
else
�� 
{
�� 
rpgtalkElements
�� 
.
�� 
Add
�� 
(
�� 
readSceneElement
�� ,
(
��- .
line
��. 2
)
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
line
�� 
=
��	 

reader
�� 
.
�� 
ReadLine
�� 
(
�� 
)
�� 
;
�� 
currentLine
�� 
++
�� 
;
�� 
}
�� 
if
�� 
(
�� 
rpgtalkElements
�� 
.
�� 
Count
�� 
==
�� 
$num
��  
)
��  !
{
��! "
Debug
�� 	
.
��	 

LogError
��
 
(
�� 
$str
�� [
)
��[ \
;
��\ ]
return
�� 

;
��
 
}
�� 
}
�� 
if
�� 
(
�� 
dialoger
�� 
)
�� 
{
�� 

dialogerUI
�� 
.
�� 
text
�� 
=
�� 
rpgtalkElements
�� $
[
��% &
$num
��& '
]
��' (
.
��( )
speakerName
��) 4
;
��4 5
if
�� 
(
�� 
shouldUsePhotos
�� 
)
�� 
{
�� 
for
�� 
(
�� 	
int
��	 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
photos
�� 
.
�� 
Length
�� %
;
��% &
i
��' (
++
��( *
)
��* +
{
��, -
if
�� 
(
�� 	
photos
��	 
[
�� 
i
�� 
]
�� 
.
�� 
name
�� 
==
�� 
rpgtalkElements
�� +
[
��, -
$num
��- .
]
��. /
.
��/ 0!
originalSpeakerName
��0 C
)
��C D
{
��E F
UIPhoto
�� 
.
�� 
sprite
�� 
=
�� 
photos
�� 
[
�� 
i
��  
]
��  !
.
��! "
photo
��" '
;
��' (
if
�� 
(
�� 	!
animatorWhenTalking
��	 
&&
�� 
animatorIntName
��  /
!=
��0 2
$str
��3 5
)
��5 6
{
��6 7!
animatorWhenTalking
�� 
.
�� 

SetInteger
�� %
(
��& '
animatorIntName
��' 6
,
��6 7
i
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
textUI
�� 
.
�� 	
enabled
��	 
=
�� 
true
�� 
;
�� 
if
�� 
(
�� 
dialoger
�� 
)
�� 
{
�� 

dialogerUI
�� 
.
�� 
enabled
�� 
=
�� 
true
�� 
;
�� 
}
�� 
for
�� 
(
�� 
int
�� 

i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
showWithDialog
�� $
.
��$ %
Length
��% +
;
��+ ,
i
��- .
++
��. 0
)
��0 1
{
��2 3
showWithDialog
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	SetActive
�� 
(
�� 
true
�� #
)
��# $
;
��$ %
}
�� 
if
�� 
(
�� !
animatorWhenTalking
�� 
!=
�� 
null
�� !
)
��! "
{
��# $!
animatorWhenTalking
�� 
.
�� 
SetBool
�� 
(
��  !
animatorBooleanName
��  3
,
��3 4
true
��5 9
)
��9 :
;
��: ;
}
�� 
}
�� 
private
�� 
RpgtalkElement
��	 
readSceneElement
�� (
(
��( )
string
��) /
line
��0 4
)
��4 5
{
��6 7
RpgtalkElement
�� 

newElement
�� 
=
�� 
new
�� !
RpgtalkElement
��" 0
(
��0 1
)
��1 2
;
��2 3

newElement
�� 
.
�� !
originalSpeakerName
��  
=
��! "
line
��# '
;
��' (
for
�� 
(
�� 
int
�� 

i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	variables
�� 
.
��  
Length
��  &
;
��& '
i
��( )
++
��) +
)
��+ ,
{
��- .
if
�� 
(
�� 
line
�� 
.
�� 
Contains
�� 
(
�� 
	variables
�� 
[
��  
i
��  !
]
��! "
.
��" #
variableName
��# /
)
��/ 0
)
��0 1
{
��2 3
line
�� 
=
��	 

line
�� 
.
�� 
Replace
�� 
(
�� 
	variables
�� "
[
��" #
i
��# $
]
��$ %
.
��% &
variableName
��& 2
,
��2 3
	variables
��4 =
[
��= >
i
��> ?
]
��? @
.
��@ A
variableValue
��A N
)
��N O
;
��O P
}
�� 
}
�� 
if
�� 
(
�� 
dialoger
�� 
)
�� 
{
�� 
if
�� 
(
�� 
line
�� 
.
�� 
IndexOf
�� 
(
�� 
$char
�� 
)
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
��! "
string
�� 

[
��
 
]
�� 
	splitLine
�� 
=
�� 
line
�� 
.
�� 
Split
�� #
(
��$ %
new
��% (
char
��) -
[
��- .
]
��. /
{
��0 1
$char
��2 5
}
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <

newElement
�� 
.
�� 
speakerName
�� 
=
�� 
	splitLine
�� &
[
��' (
$num
��( )
]
��) *
.
��* +
Trim
��+ /
(
��0 1
)
��1 2
;
��2 3

newElement
�� 
.
�� 

dialogText
�� 
=
�� 
	splitLine
�� %
[
��& '
$num
��' (
]
��( )
.
��) *
Trim
��* .
(
��/ 0
)
��0 1
;
��1 2
string
�� 

[
��
 
]
�� 
originalSplitLine
�� 
=
��  

newElement
��! +
.
��+ ,!
originalSpeakerName
��, ?
.
��? @
Split
��@ E
(
��F G
new
��G J
char
��K O
[
��O P
]
��P Q
{
��R S
$char
��T W
}
��X Y
,
��Y Z
$num
��Z [
)
��[ \
;
��\ ]

newElement
�� 
.
�� !
originalSpeakerName
�� "
=
��# $
originalSplitLine
��% 6
[
��7 8
$num
��8 9
]
��9 :
.
��: ;
Trim
��; ?
(
��@ A
)
��A B
;
��B C
}
�� 
else
�� 	
{
��
 

newElement
�� 
.
�� 

dialogText
�� 
=
�� 
line
��  
;
��  !
}
�� 
}
�� 
else
�� 
{
��	 


newElement
�� 
.
�� 

dialogText
�� 
=
�� 
line
�� 
;
��  
}
�� 

newElement
�� 
.
�� 
	hasDialog
�� 
=
�� 
true
�� 
;
�� 
return
�� 

newElement
��	 
;
�� 
}
�� 
void
�� 
Update
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
textUI
�� 
.
�� 

gameObject
�� 
.
�� 
activeInHierarchy
�� *
)
��* +
{
��, -
return
�� 	
;
��	 

}
�� 
if
�� 
(
�� 
follow
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
Vector3
�� 

newPos
�� 
=
�� 
follow
�� 
.
�� 
	transform
�� $
.
��$ %
position
��% -
-
��. /
followOffset
��0 <
;
��< =

Quaternion
�� 
newRotation
�� 
=
�� 
follow
�� "
.
��" #
	transform
��# ,
.
��, -
rotation
��- 5
;
��5 6
if
�� 
(
�� 
	billboard
�� 
)
�� 
{
�� 
if
�� 
(
�� 

mainCamera
�� 
)
�� 
{
�� 
newRotation
�� 
=
�� 
Camera
�� 
.
�� 
main
�� 
.
�� 
	transform
�� (
.
��( )
rotation
��) 1
;
��1 2
}
�� 
else
�� 

{
�� 
newRotation
�� 
=
�� 
otherCamera
�� 
.
�� 
	transform
�� (
.
��( )
rotation
��) 1
;
��1 2
}
�� 
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
showWithDialog
�� %
.
��% &
Length
��& ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
��3 4
showWithDialog
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	transform
�� 
.
��  
position
��  (
=
��) *
newPos
��+ 1
;
��1 2
showWithDialog
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	transform
��  
.
��  !
rotation
��! )
=
��* +
newRotation
��, 7
;
��7 8
}
�� 
}
�� 
if
�� 
(
�� 
textUI
�� 
.
�� 
enabled
�� 
&&
�� 
currentChar
�� 
>=
�� 
rpgtalkElements
�� !
[
��" #
cutscenePosition
��# 3
-
��4 5
$num
��6 7
]
��7 8
.
��8 9

dialogText
��9 C
.
��C D
Length
��D J
)
��J K
{
��L M
if
�� 
(
�� 
cutscenePosition
�� 
>=
�� 
rpgtalkElements
�� *
.
��* +
Count
��+ 0
&&
��1 3 
shouldStayOnScreen
��4 F
)
��F G
{
��H I
if
�� 
(
�� 
lookForClick
�� 
&&
�� 
(
�� 
(
�� 
passWithMouse
�� 
&&
�� 
Input
�� 
.
��  
GetMouseButtonDown
�� /
(
��0 1
$num
��1 2
)
��2 3
)
��3 4
||
��5 7
(
�� !
passWithInputButton
�� 
!=
�� 
$str
�� 
&&
��  "
Input
��# (
.
��( )
GetButtonDown
��) 6
(
��6 7!
passWithInputButton
��7 J
)
��J K
)
��K L
)
�� 
)
�� 
{
�� 
if
�� 
(
�� 	
	passAudio
��	 
!=
�� 
null
�� 
&&
�� 
!
�� 
rpgAudioSorce
�� ,
.
��, -
	isPlaying
��- 6
)
��6 7
{
��8 9
rpgAudioSorce
�� 
.
�� 
clip
�� 
=
�� 
	passAudio
�� $
;
��$ %
rpgAudioSorce
�� 
.
�� 
Play
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
callbackScript
�� 
!=
�� 
null
�� 
)
�� 
{
��  
callbackScript
�� 
.
�� 
Invoke
�� 
(
�� 
callbackFunction
�� ,
,
��, -
$num
��- /
)
��/ 0
;
��0 1
CancelInvoke
�� 
(
�� 
$str
�� 
)
�� 
;
�� 
if
�� 
(
��	 

blinkWhenReady
��
 
)
�� 
{
�� 
blinkWhenReady
�� 
.
�� 
	SetActive
�� 
(
��  !
false
��! &
)
��& '
;
��' (
}
�� 
}
�� 
lookForClick
�� 
=
�� 
false
�� 
;
�� 
}
�� 
CancelInvoke
�� 
(
�� 
$str
�� 
)
�� 
;
�� 
if
�� 
(
�� 
blinkWhenReady
�� 
)
�� 
{
�� 
blinkWhenReady
�� 
.
�� 
	SetActive
�� 
(
�� 
false
�� $
)
��$ %
;
��% &
}
�� 
return
�� 

;
��
 
}
�� 
if
�� 
(
�� 
(
�� 
passWithMouse
�� 
&&
�� 
Input
�� 
.
��  
GetMouseButtonDown
�� .
(
��/ 0
$num
��0 1
)
��1 2
)
��2 3
||
��4 6
(
�� !
passWithInputButton
�� 
!=
�� 
$str
�� 
&&
�� !
Input
��" '
.
��' (
GetButtonDown
��( 5
(
��5 6!
passWithInputButton
��6 I
)
��I J
)
��J K
)
�� 
{
�� 
if
�� 
(
�� 
	passAudio
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
rpgAudioSorce
�� 
.
�� 
clip
�� 
=
�� 
	passAudio
�� #
;
��# $
rpgAudioSorce
�� 
.
�� 
Play
�� 
(
�� 
)
�� 
;
�� 
}
�� 
textUI
�� 

.
��
 
enabled
�� 
=
�� 
false
�� 
;
�� 
PlayNext
�� 
(
�� 
)
�� 
;
�� 
}
�� 
return
�� 	
;
��	 

}
�� 
if
�� 
(
�� 
textUI
�� 
.
�� 
enabled
�� 
)
�� 
{
�� 
if
�� 
(
�� 
currentChar
�� 
<
�� 
rpgtalkElements
�� #
[
��# $
cutscenePosition
��$ 4
-
��5 6
$num
��7 8
]
��8 9
.
��9 :

dialogText
��: D
.
��D E
Length
��E K
)
��K L
{
��M N
currentChar
�� 
=
�� 
Mathf
�� 
.
�� 
Min
�� 
(
�� 
currentChar
�� 
+
�� 
	textSpeed
�� 
*
�� 
Time
�� #
.
��# $
	deltaTime
��$ -
,
��- .
rpgtalkElements
�� 
[
�� 
cutscenePosition
�� %
-
��& '
$num
��( )
]
��) *
.
��* +

dialogText
��+ 5
.
��5 6
Length
��6 <
)
��< =
;
��= >
textUI
�� 

.
��
 
text
�� 
=
�� 
rpgtalkElements
�� 
[
�� 
cutscenePosition
�� %
-
��& '
$num
��( )
]
��) *
.
��* +

dialogText
��+ 5
.
��5 6
	Substring
��6 ?
(
��? @
$num
��@ A
,
��A B
(
��C D
int
��D G
)
��G H
currentChar
��H S
)
��S T
;
�� 
if
�� 
(
�� 
	textAudio
�� 
!=
�� 
null
�� 
&&
�� 
!
�� 
rpgAudioSorce
�� +
.
��+ ,
	isPlaying
��, 5
)
��5 6
{
��7 8
rpgAudioSorce
�� 
.
�� 
clip
�� 
=
�� 
	textAudio
�� #
;
��# $
rpgAudioSorce
�� 
.
�� 
Play
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
enableQuickSkip
�� 
==
�� 
true
�� 
&&
��  
(
�� 
(
�� 
passWithMouse
�� 
&&
�� 
Input
�� 
.
��  
GetMouseButtonDown
�� /
(
��0 1
$num
��1 2
)
��2 3
)
��3 4
||
��5 7
(
�� !
passWithInputButton
�� 
!=
�� 
$str
�� 
&&
��  "
Input
��# (
.
��( )
GetButtonDown
��) 6
(
��6 7!
passWithInputButton
��7 J
)
��J K
)
��K L
)
�� 
&&
�� 
currentChar
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
textUI
�� 

.
��
 
text
�� 
=
�� 
rpgtalkElements
�� !
[
��! "
cutscenePosition
��" 2
-
��3 4
$num
��5 6
]
��6 7
.
��7 8

dialogText
��8 B
;
��B C
currentChar
�� 
=
�� 
rpgtalkElements
�� !
[
��! "
cutscenePosition
��" 2
-
��3 4
$num
��5 6
]
��6 7
.
��7 8

dialogText
��8 B
.
��B C
Length
��C I
;
��I J
}
�� 
if
�� 
(
�� 
currentChar
�� 
>=
�� 
rpgtalkElements
�� $
[
��$ %
cutscenePosition
��% 5
-
��6 7
$num
��8 9
]
��9 :
.
��: ;

dialogText
��; E
.
��E F
Length
��F L
)
��L M
{
��M N
blink
�� 	
(
��	 

)
��
 
;
�� 
if
�� 
(
�� !
animatorWhenTalking
�� 
!=
�� 
null
�� #
)
��# $
{
��% &!
animatorWhenTalking
�� 
.
�� 
SetBool
��  
(
��! "!
animatorBooleanName
��" 5
,
��5 6
false
��7 <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
cutscenePosition
�� 
>=
�� 
rpgtalkElements
�� *
.
��* +
Count
��+ 0
&&
��1 3
callbackScript
��4 B
==
��C E
null
��F J
)
��J K
{
��K L
}
�� 
}
�� 
}
�� 
}
�� 
void
�� 
blink
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
blinkWhenReady
�� 
)
�� 
{
�� 
blinkWhenReady
�� 
.
�� 
	SetActive
�� 
(
�� 
!
�� 
blinkWhenReady
�� ,
.
��, -
activeInHierarchy
��- >
)
��> ?
;
��? @
Invoke
�� 	
(
��
 
$str
�� 
,
�� 
$num
�� 
)
�� 
;
�� 
}
�� 
}
�� 
void
��  
CheckIfTheTextFits
�� 
(
�� 
string
�� 
line
��  $
)
��$ %
{
��% &
int
�� 
maxCharsOnUI
�� 
=
�� 
maxCharInWidth
�� #
*
��$ %
maxCharInHeight
��& 5
;
��5 6
if
�� 
(
�� 
line
�� 

.
��
 
Length
�� 
>
�� 
maxCharsOnUI
��  
)
��  !
{
��" #
int
�� 
howMuchMore
�� 
=
�� 
Mathf
�� 
.
�� 
	CeilToInt
�� $
(
��$ %
(
��% &
float
��& +
)
��+ ,
line
��, 0
.
��0 1
Length
��1 7
/
��8 9
(
��: ;
float
��; @
)
��@ A
maxCharsOnUI
��A M
)
��M N
;
��N O
string
�� 	
newLine
��
 
=
�� 
$str
�� 
;
�� 
int
�� 
cuttedInSpace
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
howMuchMore
�� "
;
��" #
i
��$ %
++
��% '
)
��' (
{
��) *
int
�� 
	startChar
�� 
=
�� 
i
�� 
*
�� 
maxCharsOnUI
�� $
;
��$ %
if
�� 
(
�� 
cuttedInSpace
�� 
!=
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
	startChar
�� 
=
�� 
cuttedInSpace
�� 
;
�� 
cuttedInSpace
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
if
�� 
(
�� 
line
�� 
.
�� 
	Substring
�� 
(
�� 
	startChar
�� !
,
��! "
line
�� 	
.
��	 

Length
��
 
-
�� 
(
�� 
	startChar
�� 
)
�� 
)
�� 
.
��  
Length
��  &
<
��' (
maxCharsOnUI
��) 5
)
��5 6
{
��7 8
newLine
�� 
=
�� 
line
�� 
.
�� 
	Substring
�� 
(
�� 
	startChar
�� (
,
��( )
line
�� 

.
��
 
Length
�� 
-
�� 
(
�� 
	startChar
�� 
)
�� 
)
��  
;
��  !
}
�� 
else
�� 

{
�� 
cuttedInSpace
�� 
=
�� 
line
�� 
.
�� 
IndexOf
�� !
(
��" #
$str
��# &
,
��& '
	startChar
��( 1
+
��1 2
(
��3 4
maxCharsOnUI
��4 @
-
��A B
$num
��C E
)
��E F
)
��F G
;
��G H
if
�� 
(
�� 
cuttedInSpace
�� 
!=
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
newLine
�� 
=
�� 
line
�� 
.
�� 
	Substring
�� 
(
��  
	startChar
��  )
,
��) *
cuttedInSpace
��+ 8
-
��8 9
	startChar
��9 B
)
��B C
;
��C D
}
�� 
else
�� 

{
��
 
newLine
�� 
=
�� 
line
�� 
.
�� 
	Substring
�� 
(
��  
	startChar
��  )
,
��) *
maxCharsOnUI
��+ 7
)
��7 8
;
��8 9
}
�� 
}
�� 
rpgtalkElements
�� 
.
�� 
Add
�� 
(
�� 
readSceneElement
�� )
(
��* +
newLine
��+ 2
)
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
else
�� 
{
��	 

rpgtalkElements
�� 
.
�� 
Add
�� 
(
�� 
readSceneElement
�� (
(
��) *
line
��* .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 
public
�� 
void
�� 
EndTalk
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
textUI
�� 
.
�� 

gameObject
�� 
.
�� 
activeInHierarchy
�� )
)
��) *
{
��+ ,
if
�� 
(
��  
shouldStayOnScreen
�� 
)
�� 
{
�� 
cutscenePosition
�� 
=
�� 
rpgtalkElements
�� &
.
��& '
Count
��' ,
-
��, -
$num
��- .
;
��. /
}
�� 
else
�� 	
{
��
 
cutscenePosition
�� 
=
�� 
rpgtalkElements
�� &
.
��& '
Count
��' ,
;
��, -
}
�� 
PlayNext
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
public
�� 
void
�� 
PlayNext
�� 
(
�� 
)
�� 
{
�� 
cutscenePosition
�� 
++
�� 
;
�� 
currentChar
�� 
=
�� 
$num
�� 
;
�� 
CancelInvoke
�� 
(
�� 
$str
�� 
)
�� 
;
�� 
if
�� 
(
�� 
blinkWhenReady
�� 
)
�� 
{
�� 
blinkWhenReady
�� 
.
�� 
	SetActive
�� 
(
�� 
false
�� "
)
��" #
;
��# $
}
�� 
if
�� 
(
�� 
cutscenePosition
�� 
<=
�� 
rpgtalkElements
�� (
.
��( )
Count
��) .
)
��. /
{
��0 1
textUI
�� 	
.
��	 

enabled
��
 
=
�� 
true
�� 
;
�� 
RpgtalkElement
�� #
currentRpgtalkElement
�� '
=
��( )
rpgtalkElements
��* 9
[
��9 :
cutscenePosition
��: J
-
��K L
$num
��M N
]
��N O
;
��O P
if
�� 
(
�� 
dialoger
�� 
)
�� 
{
�� 

dialogerUI
�� 
.
�� 
enabled
�� 
=
�� 
true
�� 
;
�� 

dialogerUI
�� 
.
�� 
text
�� 
=
�� #
currentRpgtalkElement
�� +
.
��+ ,
speakerName
��, 7
;
��7 8
if
�� 
(
�� 
shouldUsePhotos
�� 
)
�� 
{
�� 
for
�� 
(
��	 

int
��
 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
photos
�� 
.
��  
Length
��  &
;
��& '
i
��( )
++
��) +
)
��+ ,
{
��- .
if
�� 
(
��	 

photos
��
 
[
�� 
i
�� 
]
�� 
.
�� 
name
�� 
==
�� #
currentRpgtalkElement
�� 2
.
��2 3!
originalSpeakerName
��3 F
)
��F G
{
��H I
UIPhoto
�� 
.
�� 
sprite
�� 
=
�� 
photos
�� 
[
��  
i
��  !
]
��! "
.
��" #
photo
��# (
;
��( )
if
�� 	
(
��	 
!
animatorWhenTalking
��
 
&&
��  
animatorIntName
��! 0
!=
��1 3
$str
��4 6
)
��6 7
{
��7 8!
animatorWhenTalking
�� 
.
�� 

SetInteger
�� &
(
��' (
animatorIntName
��( 7
,
��7 8
i
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
if
�� 
(
�� !
animatorWhenTalking
�� 
!=
�� 
null
�� "
)
��" #
{
��$ %!
animatorWhenTalking
�� 
.
�� 
SetBool
�� 
(
��  !!
animatorBooleanName
��! 4
,
��4 5
true
��6 :
)
��: ;
;
��; <
}
�� 
}
�� 
else
�� 
{
��	 

if
�� 
(
�� 
!
��  
shouldStayOnScreen
�� 
)
�� 
{
�� 
textUI
�� 

.
��
 
enabled
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
�� 
dialoger
�� 
)
�� 
{
�� 

dialogerUI
�� 
.
�� 
enabled
�� 
=
�� 
false
�� 
;
��  
}
�� 
for
�� 
(
�� 	
int
��	 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
showWithDialog
�� &
.
��& '
Length
��' -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
��4 5
showWithDialog
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	SetActive
�� !
(
��" #
false
��# (
)
��( )
;
��) *
}
�� 
}
�� 
if
�� 
(
�� 
callbackScript
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
callbackScript
�� 
.
�� 
Invoke
�� 
(
�� 
callbackFunction
�� *
,
��* +
$num
��+ -
)
��- .
;
��. /
}
�� 
}
�� 
}
�� 
private
�� 
class
��	 
RpgtalkElement
�� 
{
�� 
public
�� 
bool
��	 
	hasDialog
�� 
=
�� 
false
�� 
;
��  
public
�� 
bool
��	  
allowPlayerAdvance
��  
=
��! "
true
��# '
;
��' (
public
�� 
string
��	 
speakerName
�� 
;
�� 
public
�� 
string
��	 !
originalSpeakerName
�� #
;
��# $
public
�� 
string
��	 

dialogText
�� 
;
�� 
public
�� 
override
��	 
string
�� 
ToString
�� !
(
��" #
)
��# $
{
��% &
return
�� 	
$str
�� 
+
�� 
this
�� 
.
�� 
	hasDialog
�� 
+
��  !
$str
��" %
+
��& '
this
��( ,
.
��, -
speakerName
��- 8
+
��9 :
$str
��; ?
+
��@ A
this
��B F
.
��F G

dialogText
��G Q
+
��R S
$str
��T X
;
��X Y
}
�� 
}
�� 
}�� 
[�� 
System
�� 
.
�� 
Serializable
�� 
]
�� 
public�� 
class
�� 
RPGTalkVariable
�� 
{
�� 
public
�� 
string
�� 
variableName
�� 
;
�� 
public
�� 
string
�� 
variableValue
�� 
;
�� 
}�� 
[�� 
System
�� 
.
�� 
Serializable
�� 
]
�� 
public�� 
class
�� 
RPGTalkPhoto
�� 
{
�� 
public
�� 
string
�� 
name
�� 
;
�� 
public
�� 
Sprite
�� 
photo
�� 
;
�� 
}�� �
RC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\BottlingScript.cs
public 
class 
BottlingScript 
: 
MonoBehaviour +
{ 
public

 


GameMaster

 
.

 
BottlingState

 #
bottlingState

$ 1
;

1 2
private 
float 
timer 
; 
public 

string 
niceTime 
; 
public 

string 
wineName 
; 
private 
int 
bottlingTimeMinutes #
;# $
private 
int 
bottlingTimeSeconds #
;# $
public 

float 
Timer 
{ 
get 
{ 	
return 
timer 
; 
} 	
set 
{ 	
timer 
= 
value 
; 
} 	
} 
void   
Update  	 
(   
)   
{!! 
if## 

(## 
bottlingState## 
!=## 

GameMaster## '
.##' (
BottlingState##( 5
.##5 6
NotBottling##6 A
&&##B D
bottlingState##E R
!=##S U

GameMaster##V `
.##` a
BottlingState##a n
.##n o
Bottled##o v
)##v w
{$$ 	
if%% 
(%% 
timer%% 
>=%% 
$num%% 
)%% 
{&& 
timer'' 
-='' 
Time'' 
.'' 
	deltaTime'' '
;''' (
bottlingTimeMinutes(( #
=(($ %
Mathf((& +
.((+ ,

FloorToInt((, 6
(((6 7
timer((7 <
/((= >
$num((? B
)((B C
;((C D
bottlingTimeSeconds)) #
=))$ %
Mathf))& +
.))+ ,

FloorToInt)), 6
())6 7
timer))7 <
-))= >
bottlingTimeMinutes))? R
*))S T
$num))U W
)))W X
;))X Y
niceTime** 
=** 
string** !
.**! "
Format**" (
(**( )
$str**) 7
,**7 8
bottlingTimeMinutes**9 L
,**L M
bottlingTimeSeconds**N a
)**a b
;**b c
}++ 
if-- 
(-- 
timer-- 
<=-- 
$num-- 
)-- 
{.. 
bottlingState// 
=// 

GameMaster//  *
.//* +
BottlingState//+ 8
.//8 9
Bottled//9 @
;//@ A
}00 
}11 	
else22 
niceTime33 
=33 
string33 
.33 
Format33 $
(33$ %
$str33% +
)33+ ,
;33, -
}44 
}55 �
WC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\ClarificationScript.cs
public 
class 
ClarificationScript  
:! "
MonoBehaviour# 0
{ 
public 


GameMaster 
. 
ClarificationState (
clarificationState) ;
;; <
private		 
float		 
timer		 
;		 
public

 

string

 
niceTime

 
;

 
public 

string 
wineName 
; 
private 
int $
clarificationTimeMinutes (
;( )
private 
int $
clarificationTimeSeconds (
;( )
public 

float 
Timer 
{ 
get 
{ 	
return 
timer 
; 
} 	
set 
{ 	
timer 
= 
value 
; 
} 	
} 
void 
Update	 
( 
) 
{   
if"" 

("" 
clarificationState"" 
!="" !

GameMaster""" ,
."", -
ClarificationState""- ?
.""? @
NotClarificating""@ P
&&""Q S
clarificationState""T f
!=""g i

GameMaster""j t
.""t u
ClarificationState	""u �
.
""� �
Clarificated
""� �
)
""� �
{## 	
if%% 
(%% 
timer%% 
>=%% 
$num%% 
)%% 
{&& 
timer'' 
-='' 
Time'' 
.'' 
	deltaTime'' '
;''' ($
clarificationTimeMinutes(( (
=(() *
Mathf((+ 0
.((0 1

FloorToInt((1 ;
(((; <
timer((< A
/((B C
$num((D G
)((G H
;((H I$
clarificationTimeSeconds)) (
=))) *
Mathf))+ 0
.))0 1

FloorToInt))1 ;
()); <
timer))< A
-))B C$
clarificationTimeMinutes))D \
*))] ^
$num))_ a
)))a b
;))b c
niceTime** 
=** 
string** !
.**! "
Format**" (
(**( )
$str**) 7
,**7 8$
clarificationTimeMinutes**9 Q
,**Q R$
clarificationTimeSeconds**S k
)**k l
;**l m
}++ 
if.. 
(.. 
timer.. 
<=.. 
$num.. 
).. 
{// 
clarificationState00 "
=00# $

GameMaster00% /
.00/ 0
ClarificationState000 B
.00B C
Clarificated00C O
;00O P
}11 
}22 	
else33 
niceTime44 
=44 
string44 
.44 
Format44 $
(44$ %
$str44% +
)44+ ,
;44, -
}55 
}66 �5
SC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\ColliderHandler.cs
public 
class 
ColliderHandler 
: 
MonoBehaviour ,
{ 
public 

static 
bool 
hitDetected "
;" #
public		 


GameObject		 

gameMaster		  
;		  !
public

 

static

 

GameObject

 
parentGameObject

 -
;

- .
private 

GameMaster 
gm 
; 
private 
	LayerMask 
	layerMask 
=  !
$num" #
;# $
RuntimePlatform 
platform 
= 
Application *
.* +
platform+ 3
;3 4
void 
Awake	 
( 
) 
{ 
gm 

= 

gameMaster 
. 
GetComponent $
<$ %

GameMaster% /
>/ 0
(0 1
)1 2
;2 3
} 
void 
Update	 
( 
) 
{ 
if 

( 
platform 
== 
RuntimePlatform '
.' (
Android( /
||0 2
platform3 ;
==< >
RuntimePlatform? N
.N O
IPhonePlayerO [
)[ \
{ 	
if 
( 
Input 
. 

touchCount  
>! "
$num# $
)$ %
{ 
if 
( 
Input 
. 
GetTouch "
(" #
$num# $
)$ %
.% &
phase& +
==, .

TouchPhase/ 9
.9 :
Began: ?
)? @
{ 

checkTouch   
(   
Input   $
.  $ %
GetTouch  % -
(  - .
$num  . /
)  / 0
.  0 1
position  1 9
)  9 :
;  : ;
}!! 
}"" 
}## 	
else$$ 
if$$ 
($$ 
platform$$ 
==$$ 
RuntimePlatform$$ ,
.$$, -
WindowsEditor$$- :
)$$: ;
{%% 	
if&& 
(&& 
Input&& 
.&& 
GetMouseButtonUp&& &
(&&& '
$num&&' (
)&&( )
)&&) *
{'' 

checkTouch(( 
((( 
Input((  
.((  !
mousePosition((! .
)((. /
;((/ 0
})) 
}** 	
if,, 

(,, 
gm,, 
.,, 
IsInventoryOpen,, 
==,, !
true,," &
),,& '
	layerMask-- 
.-- 
value-- 
=-- 
$num-- 
;--  
else.. 
if.. 
(.. 
gm.. 
... 
State.. 
==.. 

GameMaster.. '
...' (
	GameState..( 1
...1 2
Farm..2 6
)..6 7
{// 	
	layerMask00 
.00 
value00 
=00 
$num00 !
;00! "
}11 	
else22 
if22 
(22 
gm22 
.22 
State22 
==22 

GameMaster22 '
.22' (
	GameState22( 1
.221 2
Brewery222 9
)229 :
{33 	
	layerMask44 
.44 
value44 
=44 
$num44 !
;44! "
}55 	
else66 
if66 
(66 
gm66 
.66 
State66 
==66 

GameMaster66 '
.66' (
	GameState66( 1
.661 2
Town662 6
)666 7
{77 	
	layerMask88 
.88 
value88 
=88 
$num88 "
;88" #
}99 	
else:: 
if:: 
(:: 
gm:: 
.:: 
State:: 
==:: 

GameMaster:: '
.::' (
	GameState::( 1
.::1 2

GrapeCrush::2 <
)::< =
{;; 	
	layerMask<< 
.<< 
value<< 
=<< 
$num<< "
;<<" #
}== 	
else>> 
	layerMask?? 
.?? 
value?? 
=?? 
$num?? 
;??  
}BB 
voidDD 

checkTouchDD	 
(DD 
Vector2DD 
posDD 
)DD  
{EE 
ifGG 

(GG 
	layerMaskGG 
.GG 
valueGG 
==GG 
$numGG "
)GG" #
{HH 	
hitterMethodII 
(II 
posII 
)II 
;II 
}JJ 	
ifKK 

(KK 
	layerMaskKK 
.KK 
valueKK 
==KK 
$numKK "
)KK" #
{LL 	
hitterMethodMM 
(MM 
posMM 
)MM 
;MM 
}NN 	
ifOO 

(OO 
	layerMaskOO 
.OO 
valueOO 
==OO 
$numOO #
)OO# $
{PP 	
hitterMethodQQ 
(QQ 
posQQ 
)QQ 
;QQ 
}RR 	
}WW 
publicYY 

voidYY 
hitterMethodYY 
(YY 
Vector2YY $
posYY% (
)YY( )
{ZZ 
Vector3[[ 
wp[[ 
=[[ 
Camera[[ 
.[[ 
main[[  
.[[  !
ScreenToWorldPoint[[! 3
([[3 4
pos[[4 7
)[[7 8
;[[8 9
Vector2\\ 
touchPos\\ 
=\\ 
new\\ 
Vector2\\ &
(\\& '
wp\\' )
.\\) *
x\\* +
,\\+ ,
wp\\- /
.\\/ 0
y\\0 1
)\\1 2
;\\2 3

Collider2D]] 
hit]] 
=]] 
	Physics2D]] "
.]]" #
OverlapPoint]]# /
(]]/ 0
touchPos]]0 8
,]]8 9
	layerMask]]: C
)]]C D
;]]D E
if__ 

(__ 
hit__ 
)__ 
{`` 	
parentGameObjectaa 
=aa 
hitaa "
.aa" #

gameObjectaa# -
;aa- .
MethodCallerHandlerbb 
mchbb  #
;bb# $
mchcc 
=cc 
parentGameObjectcc "
.cc" #
GetComponentcc# /
<cc/ 0
MethodCallerHandlercc0 C
>ccC D
(ccD E
)ccE F
;ccF G
mchdd 
.dd 

CallMethoddd 
(dd 
)dd 
;dd 
}ff 	
}gg 
}hh �l
OC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\CrushScript.cs
public

 
class

 
CrushScript

 
:

 
MonoBehaviour

 (
{ 
public 

Camera 

farmCamera 
; 
public 


GameObject 
grape 
; 
public 

	LayerMask 
	layerMask 
; 
public 

float 

grapeScore 
; 
public 

int 
missedGrapes 
; 
public 

Image 
fillBar 
; 
public 

Text 
fillText 
; 
public 

Text 
gameOverText 
; 
public 

Text 

missedText 
; 
public 

static 
bool 
didWin 
; 
private 
const 
int 
maxMissedGrapes %
=& '
$num( *
;* +
private 

GameObject 
temp 
; 
private 
float 
	startTime 
, 
refire #
=$ %
$num& *
;* +
private 

GameObject 
grapeSplash "
;" #
private 
MethodCallerHandler 
mch  #
;# $
private 
bool 
	isStarted 
; 
private 

SlotScript 

slotScript !
;! "
private 
	Inventory 
	inventory 
;  

GameObject   
[   
]   

spawnpoint   
;   
RuntimePlatform"" 
platform"" 
="" 
Application"" *
.""* +
platform""+ 3
;""3 4
void%% 
Awake%%	 
(%% 
)%% 
{&& 
mch(( 
=(( 
GetComponent(( 
<(( 
MethodCallerHandler(( .
>((. /
(((/ 0
)((0 1
;((1 2

slotScript)) 
=)) 

GameObject)) 
.))  !
FindGameObjectWithTag))  5
())5 6
$str))6 C
)))C D
.))D E
GetComponent))E Q
<))Q R

SlotScript))R \
>))\ ]
())] ^
)))^ _
;))_ `
	inventory** 
=** 

GameObject** 
.** !
FindGameObjectWithTag** 4
(**4 5
$str**5 B
)**B C
.**C D
GetComponent**D P
<**P Q
	Inventory**Q Z
>**Z [
(**[ \
)**\ ]
;**] ^
grapeSplash++ 
=++ 
	Resources++ 
.++  
Load++  $
<++$ %

GameObject++% /
>++/ 0
(++0 1
$str++1 @
)++@ A
;++A B

spawnpoint,, 
=,, 

GameObject,, 
.,,  "
FindGameObjectsWithTag,,  6
(,,6 7
$str,,7 @
),,@ A
;,,A B
mch-- 
=-- 
GetComponent-- 
<-- 
MethodCallerHandler-- .
>--. /
(--/ 0
)--0 1
;--1 2
}.. 
void00 
Start00	 
(00 
)00 
{11 
didWin33 
=33 
false33 
;33 
	isStarted44 
=44 
false44 
;44 
fillBar55 
.55 

fillAmount55 
=55 
$num55 
;55 
fillText66 
.66 
text66 
=66 
$str66 
;66 
gameOverText77 
.77 
text77 
=77 
$str77 
;77 

missedText88 
.88 
text88 
=88 
$str88  
;88  !
	startTime99 
=99 
Time99 
.99 
time99 
;99 
}:: 
void>> 
Update>>	 
(>> 
)>> 
{?? 
handleUIAA 
(AA 
)AA 
;AA 
ifCC 

(CC 
platformCC 
==CC 
RuntimePlatformCC '
.CC' (
AndroidCC( /
||CC0 2
platformCC3 ;
==CC< >
RuntimePlatformCC? N
.CCN O
IPhonePlayerCCO [
)CC[ \
{DD 	
ifEE 
(EE 
InputEE 
.EE 

touchCountEE  
>EE! "
$numEE# $
)EE$ %
{FF 
ifGG 
(GG 
InputGG 
.GG 
GetTouchGG "
(GG" #
$numGG# $
)GG$ %
.GG% &
phaseGG& +
==GG, .

TouchPhaseGG/ 9
.GG9 :
BeganGG: ?
)GG? @
{HH 

checkTouchII 
(II 
InputII $
.II$ %
GetTouchII% -
(II- .
$numII. /
)II/ 0
.II0 1
positionII1 9
)II9 :
;II: ;
}JJ 
}KK 
}LL 	
elseMM 
ifMM 
(MM 
platformMM 
==MM 
RuntimePlatformMM ,
.MM, -
WindowsEditorMM- :
)MM: ;
{NN 	
ifOO 
(OO 
InputOO 
.OO 
GetMouseButtonUpOO &
(OO& '
$numOO' (
)OO( )
)OO) *
{PP 

checkTouchQQ 
(QQ 
InputQQ  
.QQ  !
mousePositionQQ! .
)QQ. /
;QQ/ 0
}RR 
}SS 	
ifVV 

(VV 
	startTimeVV 
+VV 
refireVV 
<=VV !
TimeVV" &
.VV& '
timeVV' +
)VV+ ,
{WW 	
tempXX 
=XX 
InstantiateXX 
(XX 
grapeXX $
)XX$ %
;XX% &
tempYY 
.YY 
	transformYY 
.YY 
	SetParentYY $
(YY$ %

gameObjectYY% /
.YY/ 0
	transformYY0 9
)YY9 :
;YY: ;
tempZZ 
.ZZ 
	transformZZ 
.ZZ 
positionZZ #
=ZZ$ %

spawnpointZZ& 0
[ZZ0 1
RandomZZ1 7
.ZZ7 8
RangeZZ8 =
(ZZ= >
$numZZ> ?
,ZZ? @

spawnpointZZA K
.ZZK L
LengthZZL R
)ZZR S
]ZZS T
.ZZT U
	transformZZU ^
.ZZ^ _
positionZZ_ g
;ZZg h
	startTime[[ 
=[[ 
Time[[ 
.[[ 
time[[ !
;[[! "
}\\ 	
if__ 

(__ 
fillBar__ 
.__ 

fillAmount__ 
==__ !
$num__" #
)__# $
{`` 	
didWinaa 
=aa 
trueaa 
;aa 
gameOverTextbb 
.bb 
textbb 
=bb 
$strbb  +
;bb+ ,
gameOverTextcc 
.cc 
textcc 
+=cc  
$strcc! @
;cc@ A
gameOverdd 
(dd 
)dd 
;dd 
}ee 	
elseff 
ifff 
(ff 
missedGrapesff 
==ff  
maxMissedGrapesff! 0
)ff0 1
{gg 	
didWinhh 
=hh 
falsehh 
;hh 
gameOverTextii 
.ii 
textii 
=ii 
$strii  7
;ii7 8
gameOverjj 
(jj 
)jj 
;jj 
}kk 	
}ll 
voidoo 

checkTouchoo	 
(oo 
Vector2oo 
posoo 
)oo  
{pp 
ifqq 

(qq 
	layerMaskqq 
.qq 
valueqq 
==qq 
$numqq #
)qq# $
{rr 	
Vector3ss 
wpss 
=ss 
Camerass 
.ss  
mainss  $
.ss$ %
ScreenToWorldPointss% 7
(ss7 8
posss8 ;
)ss; <
;ss< =
Vector2uu 
touchPosuu 
=uu 
newuu "
Vector2uu# *
(uu* +
wpuu+ -
.uu- .
xuu. /
,uu/ 0
wpuu1 3
.uu3 4
yuu4 5
)uu5 6
;uu6 7

Collider2Dww 
hitww 
=ww 
	Physics2Dww &
.ww& '
OverlapPointww' 3
(ww3 4
touchPosww4 <
,ww< =
	layerMaskww> G
)wwG H
;wwH I
ifyy 
(yy 
hityy 
&&yy 
hityy 
.yy 
tagyy 
==yy !
$stryy" )
)yy) *
{zz 
Destroy{{ 
({{ 
hit{{ 
.{{ 

gameObject{{ &
){{& '
;{{' (
Instantiate|| 
(|| 
grapeSplash|| '
,||' (
touchPos||) 1
,||1 2

Quaternion||3 =
.||= >
identity||> F
)||F G
;||G H

grapeScore}} 
++}} 
;}} 
}~~ 
} 	
}
�� 
void
�� 
handleUI
��	 
(
�� 
)
�� 
{
�� 
fillText
�� 
.
�� 
text
�� 
=
�� 
Mathf
�� 
.
�� 

FloorToInt
�� (
(
��( )

grapeScore
��) 3
*
��4 5
$num
��6 :
)
��: ;
+
��< =
$str
��> A
;
��A B
fillBar
�� 
.
�� 

fillAmount
�� 
=
�� 
(
�� 

grapeScore
�� (
*
��) *
$num
��+ /
)
��/ 0
/
��1 2
$num
��3 6
;
��6 7

missedText
�� 
.
�� 
text
�� 
=
�� 
missedGrapes
�� &
+
��' (
$str
��) ,
+
��- .
maxMissedGrapes
��/ >
;
��> ?
}
�� 
void
�� 
gameOver
��	 
(
�� 
)
�� 
{
�� 

GameObject
�� 
[
�� 
]
�� 

grapesLeft
�� 
=
��  !

GameObject
��" ,
.
��, -$
FindGameObjectsWithTag
��- C
(
��C D
$str
��D K
)
��K L
;
��L M

GameObject
�� 
[
�� 
]
�� 
grapeSplashLeft
�� $
=
��% &

GameObject
��' 1
.
��1 2$
FindGameObjectsWithTag
��2 H
(
��H I
$str
��I V
)
��V W
;
��W X
foreach
�� 
(
�� 

GameObject
�� 
grapes
�� "
in
��# %

grapesLeft
��& 0
)
��0 1
{
�� 	
Destroy
�� 
(
�� 
grapes
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 

GameObject
�� 
splash
��  &
in
��' )
grapeSplashLeft
��* 9
)
��9 :
{
�� 
Destroy
�� 
(
�� 
splash
�� 
)
�� 
;
��  
}
�� 
}
�� 	
gameOverText
�� 
.
�� 
GetComponent
�� !
<
��! "
Animator
��" *
>
��* +
(
��+ ,
)
��, -
.
��- .
SetBool
��. 5
(
��5 6
$str
��6 @
,
��@ A
true
��B F
)
��F G
;
��G H
if
�� 

(
�� 
!
�� 
	isStarted
�� 
)
�� 
{
�� 	
	isStarted
�� 
=
�� 
true
�� 
;
�� 
StartCoroutine
�� 
(
�� 
$str
�� !
)
��! "
;
��" #
}
�� 	
}
�� 
IEnumerator
�� 
Wait
�� 
(
�� 
)
�� 
{
�� 
didWin
�� 
=
�� 
false
�� 
;
�� 

GameObject
�� 
canvas
�� 
=
�� 

GameObject
�� &
.
��& '
Find
��' +
(
��+ ,
$str
��, 4
)
��4 5
;
��5 6
yield
�� 
return
�� 
new
�� 
WaitForSeconds
�� '
(
��' (
$num
��( )
)
��) *
;
��* +
mch
�� 
.
�� 

CallMethod
�� 
(
�� 
)
�� 
;
�� 
yield
�� 
return
�� 
new
�� 
WaitForSeconds
�� '
(
��' (
$num
��( )
)
��) *
;
��* +
canvas
�� 
.
�� 
	SetActive
�� 
(
�� 
false
�� 
)
�� 
;
��  

gameObject
�� 
.
�� 
GetComponent
�� 
<
��  
CrushScript
��  +
>
��+ ,
(
��, -
)
��- .
.
��. /
enabled
��/ 6
=
��7 8
false
��9 >
;
��> ?
yield
�� 
return
�� 
new
�� 
WaitForSeconds
�� '
(
��' (
$num
��( )
)
��) *
;
��* +
Destroy
�� 
(
�� 

gameObject
�� 
)
�� 
;
�� 

GameObject
�� 
.
�� 
Find
�� 
(
�� 
$str
�� %
)
��% &
.
��& '
GetComponent
��' 3
<
��3 4

GameMaster
��4 >
>
��> ?
(
��? @
)
��@ A
.
��A B
CrushisActive
��B O
=
��P Q
false
��R W
;
��W X
}
�� 
}�� �
QC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\DestroySplash.cs
public 
class 
DestroySplash 
: 
MonoBehaviour *
{ 
public 

float 
delay 
= 
- 
$num 
; 
void		 
Start			 
(		 
)		 
{

 
Destroy 
( 

gameObject 
, 

gameObject &
.& '
GetComponent' 3
<3 4
Animator4 <
>< =
(= >
)> ?
.? @'
GetCurrentAnimatorStateInfo@ [
([ \
$num\ ]
)] ^
.^ _
length_ e
+f g
delayh m
)m n
;n o
} 
void 
Update	 
( 
) 
{ 
} 
} �'
SC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\FermentorScript.cs
public 
class 
FermentorScript 
: 
MonoBehaviour ,
{ 
public

 

List

 
<

 
Sprite

 
>

 
Sprites

 
=

  !
new

" %
List

& *
<

* +
Sprite

+ 1
>

1 2
(

2 3
)

3 4
;

4 5
public 


GameMaster 
. 
FermentationState '
FermentationState( 9
;9 :
public 


GameMaster 
. 
Winetype 
WineType '
;' (
public 

bool 
isFermenting 
; 
public 

string 
	grapeName 
; 
private 
float 
timer 
; 
public 

string 
niceTime 
; 
private 
int 
fermentTimeMinutes "
;" #
private 
int 
fermentTimeSeconds "
;" #
private 

GameMaster 

gameMaster !
;! "
private 

SlotScript 

slotScript !
;! "
private 
bool 
	isStarted 
; 
private 
void 
Awake 
( 
) 
{ 

gameMaster 
= 

GameObject 
.  
Find  $
($ %
$str% 2
)2 3
.3 4
GetComponent4 @
<@ A

GameMasterA K
>K L
(L M
)M N
;N O

slotScript 
= 

GameObject 
.  
Find  $
($ %
$str% 2
)2 3
.3 4
GetComponent4 @
<@ A

SlotScriptA K
>K L
(L M
)M N
;N O
	isStarted 
= 
false 
; 
} 
public   

float   
Timer   
{!! 
get"" 
{## 	
return$$ 
timer$$ 
;$$ 
}%% 	
set&& 
{'' 	
timer(( 
=(( 
value(( 
;(( 
})) 	
}** 
void.. 
Update..	 
(.. 
).. 
{// 
if00 

(00 

gameMaster00 
.00 
CrushisActive00 $
)00$ %
{11 	
if22 
(22 
	isStarted22 
==22 
false22 "
)22" #
{33 
	isStarted44 
=44 
true44  
;44  !
}55 
if77 
(77 
CrushScript77 
.77 
didWin77 "
)77" #
{88 

slotScript99 
.99 
Ferment99 "
(99" #
)99# $
;99$ %
}:: 
};; 	
if== 

(== 
FermentationState== 
!===  

GameMaster==! +
.==+ ,
FermentationState==, =
.=== >
NotFermentating==> M
&&==N P
FermentationState==Q b
!===c e

GameMaster==f p
.==p q
FermentationState	==q �
.
==� �
	Fermented
==� �
)
==� �
{>> 	
if?? 
(?? 
timer?? 
>=?? 
$num?? 
)?? 
{@@ 
timerAA 
-=AA 
TimeAA 
.AA 
	deltaTimeAA '
;AA' (
fermentTimeMinutesBB "
=BB# $
MathfBB% *
.BB* +

FloorToIntBB+ 5
(BB5 6
timerBB6 ;
/BB< =
$numBB> A
)BBA B
;BBB C
fermentTimeSecondsCC "
=CC# $
MathfCC% *
.CC* +

FloorToIntCC+ 5
(CC5 6
timerCC6 ;
-CC< =
fermentTimeMinutesCC> P
*CCQ R
$numCCS U
)CCU V
;CCV W
niceTimeDD 
=DD 
stringDD !
.DD! "
FormatDD" (
(DD( )
$strDD) 7
,DD7 8
fermentTimeMinutesDD9 K
,DDK L
fermentTimeSecondsDDM _
)DD_ `
;DD` a
}EE 
ifGG 
(GG 
timerGG 
<=GG 
$numGG 
)GG 
{HH 
FermentationStateII !
=II" #

GameMasterII$ .
.II. /
FermentationStateII/ @
.II@ A
	FermentedIIA J
;IIJ K
}JJ 
}KK 	
elseLL 
niceTimeMM 
=MM 
stringMM 
.MM 
FormatMM $
(MM$ %
$strMM% +
)MM+ ,
;MM, -
}NN 
}OO �
MC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\GUIScript.cs
public		 
class		 
	GUIScript		 
:		 
MonoBehaviour		 &
{

 
public 

CanvasGroup 
	inventory  
;  !
public 

CanvasGroup 
	infoPanel  
;  !
public 

Text 
infoPanelText 
; 
public 

Text 
infoPanelTimer 
; 
public 

Button 
harvestButton 
;  
public 

Button 
plantButton 
; 
private 
Animator 
animator 
; 
private 
string 
button 
; 
private 

GameObject 
[ 
] 
temp 
; 
private 

SlotScript 

slotScript !
;! "
private 
PlantGround 
groundScript $
;$ %
private 

GameObject 
parent 
; 
private 
Image 
infoPanelSprite !
;! "
private 
string 
timer 
; 
private 

GameObject 
gameManager "
;" #
private 
FermentorScript 
fermentorScript +
;+ ,
private 

GameMaster 

gameMaster !
;! "
private 
ClarificationScript 
clarificationScript  3
;3 4
private 
BottlingScript 
bottlingScript )
;) *
void## 
Awake##	 
(## 
)## 
{$$ 
gameManager&& 
=&& 

GameObject&&  
.&&  !!
FindGameObjectWithTag&&! 6
(&&6 7
$str&&7 D
)&&D E
;&&E F

gameMaster'' 
='' 
gameManager''  
.''  !
GetComponent''! -
<''- .

GameMaster''. 8
>''8 9
(''9 :
)'': ;
;''; <
infoPanelSprite(( 
=(( 
	infoPanel(( #
.((# $
	transform(($ -
.((- .
Find((. 2
(((2 3
$str((3 A
)((A B
.((B C
GetComponent((C O
<((O P
Image((P U
>((U V
(((V W
)((W X
;((X Y
temp)) 
=)) 

GameObject)) 
.)) "
FindGameObjectsWithTag)) 0
())0 1
$str))1 7
)))7 8
;))8 9

slotScript** 
=** 
gameManager**  
.**  !
GetComponent**! -
<**- .

SlotScript**. 8
>**8 9
(**9 :
)**: ;
;**; <
animator++ 
=++ 
GetComponent++ 
<++  
Animator++  (
>++( )
(++) *
)++* +
;+++ ,
},, 
void// 
Update//	 
(// 
)// 
{00 
if22 

(22 
	infoPanel22 
.22 
alpha22 
==22 
$num22  
)22  !
{33 	
if44 
(44 
parent44 
.44 
tag44 
==44 
$str44 '
)44' (
{55 
timer66 
=66 
groundScript66 $
.66$ %
niceTime66% -
;66- .
infoPanelTimer77 
.77 
text77 #
=77$ %
timer77& +
;77+ ,
if88 
(88 
groundScript88  
.88  !
Timer88! &
<=88' )
$num88* +
)88+ ,
{99 
infoPanelTimer:: "
.::" #
text::# '
=::( )
$str::* 2
;::2 3
};; 
}<< 
else== 
if== 
(== 
parent== 
.== 
tag== 
====  "
$str==# /
)==/ 0
{>> 
timer?? 
=?? 
fermentorScript?? '
.??' (
niceTime??( 0
;??0 1
infoPanelTimer@@ 
.@@ 
text@@ #
=@@$ %
timer@@& +
;@@+ ,
ifAA 
(AA 
fermentorScriptAA #
.AA# $
TimerAA$ )
<=AA* ,
$numAA- .
)AA. /
{BB 
infoPanelTimerCC "
.CC" #
textCC# '
=CC( )
$strCC* 2
;CC2 3
}DD 
}EE 
elseFF 
ifFF 
(FF 
parentFF 
.FF 
tagFF 
==FF  "
$strFF# 2
)FF2 3
{GG 
timerHH 
=HH 
clarificationScriptHH +
.HH+ ,
niceTimeHH, 4
;HH4 5
infoPanelTimerII 
.II 
textII #
=II$ %
timerII& +
;II+ ,
ifJJ 
(JJ 
clarificationScriptJJ '
.JJ' (
TimerJJ( -
<=JJ. 0
$numJJ1 2
)JJ2 3
{KK 
infoPanelTimerLL "
.LL" #
textLL# '
=LL( )
$strLL* 2
;LL2 3
}MM 
}NN 
elseOO 
ifOO 
(OO 
parentOO 
.OO 
tagOO 
==OO  "
$strOO# -
)OO- .
{PP 
timerQQ 
=QQ 
bottlingScriptQQ &
.QQ& '
niceTimeQQ' /
;QQ/ 0
infoPanelTimerRR 
.RR 
textRR #
=RR$ %
timerRR& +
;RR+ ,
ifSS 
(SS 
bottlingScriptSS "
.SS" #
TimerSS# (
<=SS) +
$numSS, -
)SS- .
{TT 
infoPanelTimerUU "
.UU" #
textUU# '
=UU( )
$strUU* 2
;UU2 3
}VV 
}WW 
}XX 	
}YY 
public\\ 

void\\ 
initializeInfoPanel\\ #
(\\# $
string\\$ *
name\\+ /
)\\/ 0
{]] 
if^^ 

(^^ 
parent^^ 
.^^ 
tag^^ 
==^^ 
$str^^ #
)^^# $
{__ 	
infoPanelText`` 
.`` 
text`` 
=``  
name``! %
+``& '
$str``( 6
;``6 7
infoPanelSpriteaa 
.aa 
spriteaa "
=aa# $
	Resourcesaa% .
.aa. /
Loadaa/ 3
<aa3 4
Spriteaa4 :
>aa: ;
(aa; <
$straa< >
+aa? @
nameaaA E
)aaE F
;aaF G
}bb 	
elsedd 
ifdd 
(dd 
parentdd 
.dd 
tagdd 
==dd 
$strdd +
)dd+ ,
{ee 	
infoPanelTextff 
.ff 
textff 
=ff  
nameff! %
+ff& '
$strff( 8
;ff8 9
infoPanelSpritegg 
.gg 
spritegg "
=gg# $
	Resourcesgg% .
.gg. /
Loadgg/ 3
<gg3 4
Spritegg4 :
>gg: ;
(gg; <
$strgg< >
+gg? @
nameggA E
)ggE F
;ggF G
}hh 	
elseii 
ifii 
(ii 
parentii 
.ii 
tagii 
==ii 
$strii .
)ii. /
{jj 	
infoPanelTextkk 
.kk 
textkk 
=kk  
namekk! %
+kk& '
$strkk( @
;kk@ A
infoPanelSpritell 
.ll 
spritell "
=ll# $
	Resourcesll% .
.ll. /
Loadll/ 3
<ll3 4
Spritell4 :
>ll: ;
(ll; <
$strll< >
+ll? @
namellA E
)llE F
;llF G
}mm 	
elsenn 
ifnn 
(nn 
parentnn 
.nn 
tagnn 
==nn 
$strnn )
)nn) *
{oo 	
infoPanelTextpp 
.pp 
textpp 
=pp  
namepp! %
+pp& '
$strpp( ;
;pp; <
infoPanelSpriteqq 
.qq 
spriteqq "
=qq# $
	Resourcesqq% .
.qq. /
Loadqq/ 3
<qq3 4
Spriteqq4 :
>qq: ;
(qq; <
$strqq< >
+qq? @
nameqqA E
)qqE F
;qqF G
}rr 	
}ss 
publicvv 

voidvv 
ButtonClickedvv 
(vv 
)vv 
{ww 
ifxx 

(xx 
gameManagerxx 
.xx 
GetComponentxx $
<xx$ %

GameMasterxx% /
>xx/ 0
(xx0 1
)xx1 2
.xx2 3
IsInventoryOpenxx3 B
==xxC E
truexxF J
)xxJ K
{yy 	
buttonzz 
=zz 
EventSystemzz  
.zz  !
currentzz! (
.zz( )%
currentSelectedGameObjectzz) B
.zzB C
namezzC G
;zzG H
switch{{ 
({{ 
button{{ 
){{ 
{|| 
case}} 
$str}} 
:}} 
	infoPanel~~ 
.~~ 
alpha~~ #
=~~$ %
$num~~& '
;~~' (
animator 
. 
SetBool $
($ %
$str% 4
,4 5
false6 ;
); <
;< =
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 

slotScript
�� 
.
�� 
Plant
�� $
(
��$ %
)
��% &
;
��& '
if
�� 
(
�� 

SlotScript
�� "
.
��" #
didPlant
��# +
)
��+ ,
{
�� 
animator
��  
.
��  !
SetBool
��! (
(
��( )
$str
��) 8
,
��8 9
false
��: ?
)
��? @
;
��@ A
}
�� 
else
�� 
return
�� 
;
�� 
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
if
�� 
(
�� 
groundScript
�� $
.
��$ %
Timer
��% *
<=
��+ -
$num
��. /
)
��/ 0
{
�� 

slotScript
�� "
.
��" #
Harvest
��# *
(
��* +
)
��+ ,
;
��, -
	infoPanel
�� !
.
��! "
alpha
��" '
=
��( )
$num
��* +
;
��+ ,
}
�� 
else
�� 
return
�� 
;
�� 
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 

slotScript
�� 
.
�� 
selectGrape
�� *
(
��* +
)
��+ ,
;
��, -
if
�� 
(
�� 

SlotScript
�� "
.
��" #
didPlant
��# +
)
��+ ,
{
�� 
animator
��  
.
��  !
SetBool
��! (
(
��( )
$str
��) 8
,
��8 9
false
��: ?
)
��? @
;
��@ A
}
�� 
else
�� 
return
�� 
;
�� 
break
�� 
;
�� 
case
�� 
$str
�� "
:
��" #

slotScript
�� 
.
�� 
Clarificate
�� *
(
��* +
)
��+ ,
;
��, -
if
�� 
(
�� 

SlotScript
�� "
.
��" #
didPlant
��# +
)
��+ ,
{
�� 
animator
��  
.
��  !
SetBool
��! (
(
��( )
$str
��) 8
,
��8 9
false
��: ?
)
��? @
;
��@ A
}
�� 
else
�� 
return
�� 
;
�� 
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 

slotScript
�� 
.
�� 
Bottling
�� '
(
��' (
)
��( )
;
��) *
if
�� 
(
�� 

SlotScript
�� "
.
��" #
didPlant
��# +
)
��+ ,
{
�� 
animator
��  
.
��  !
SetBool
��! (
(
��( )
$str
��) 8
,
��8 9
false
��: ?
)
��? @
;
��@ A
}
�� 
else
�� 
return
�� 
;
�� 
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
if
�� 
(
�� 
(
�� 
parent
�� 
.
��  
tag
��  #
==
��$ &
$str
��' 3
&&
��4 6
fermentorScript
��7 F
.
��F G
Timer
��G L
<=
��M O
$num
��P Q
)
��Q R
||
��S U
(
��V W
parent
��W ]
.
��] ^
tag
��^ a
==
��b d
$str
��e t
&&
��u w"
clarificationScript��x �
.��� �
Timer��� �
<=��� �
$num��� �
)��� �
||��� �
(��� �
parent��� �
.��� �
tag��� �
==��� �
$str��� �
&&��� �
bottlingScript��� �
.��� �
Timer��� �
<=��� �
$num��� �
)��� �
)��� �
{
�� 

slotScript
�� "
.
��" #
Collect
��# *
(
��* +
)
��+ ,
;
��, -
	infoPanel
�� !
.
��! "
alpha
��" '
=
��( )
$num
��* +
;
��+ ,
}
�� 
else
�� 
return
�� 
;
�� 
break
�� 
;
�� 
}
�� 
plantButton
�� 
.
�� 
name
�� 
=
�� 
$str
�� &
;
��& '
plantButton
�� 
.
�� $
GetComponentInChildren
�� .
<
��. /
Text
��/ 3
>
��3 4
(
��4 5
)
��5 6
.
��6 7
text
��7 ;
=
��< =
$str
��> E
;
��E F
harvestButton
�� 
.
�� 
name
�� 
=
��  
$str
��! *
;
��* +
harvestButton
�� 
.
�� $
GetComponentInChildren
�� 0
<
��0 1
Text
��1 5
>
��5 6
(
��6 7
)
��7 8
.
��8 9
text
��9 =
=
��> ?
$str
��@ I
;
��I J

GameObject
�� 
.
�� #
FindGameObjectWithTag
�� ,
(
��, -
$str
��- :
)
��: ;
.
��; <
GetComponent
��< H
<
��H I

GameMaster
��I S
>
��S T
(
��T U
)
��U V
.
��V W
IsInventoryOpen
��W f
=
��g h
false
��i n
;
��n o
}
�� 	
}
�� 
public
�� 

void
�� 
showInventory
�� 
(
�� 
)
�� 
{
�� 
parent
�� 
=
�� 
ColliderHandler
��  
.
��  !
parentGameObject
��! 1
;
��1 2
groundScript
�� 
=
�� 
parent
�� 
.
�� 
GetComponent
�� *
<
��* +
PlantGround
��+ 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
fermentorScript
�� 
=
�� 
parent
��  
.
��  !
GetComponent
��! -
<
��- .
FermentorScript
��. =
>
��= >
(
��> ?
)
��? @
;
��@ A!
clarificationScript
�� 
=
�� 
parent
�� $
.
��$ %
GetComponent
��% 1
<
��1 2!
ClarificationScript
��2 E
>
��E F
(
��F G
)
��G H
;
��H I
bottlingScript
�� 
=
�� 
parent
�� 
.
��  
GetComponent
��  ,
<
��, -
BottlingScript
��- ;
>
��; <
(
��< =
)
��= >
;
��> ?
switch
�� 
(
�� 
parent
�� 
.
�� 
tag
�� 
)
�� 
{
�� 	
case
�� 
$str
�� 
:
�� 
	inventory
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $
animator
�� 
.
�� 
SetBool
��  
(
��  !
$str
��! 0
,
��0 1
true
��2 6
)
��6 7
;
��7 8
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
	infoPanel
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $!
initializeInfoPanel
�� #
(
��# $
groundScript
��$ 0
.
��0 1
	plantName
��1 :
)
��: ;
;
��; <
break
�� 
;
�� 
case
�� 
$str
��  
:
��  !
	inventory
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $
animator
�� 
.
�� 
SetBool
��  
(
��  !
$str
��! 0
,
��0 1
true
��2 6
)
��6 7
;
��7 8
plantButton
�� 
.
�� 
name
��  
=
��! "
$str
��# *
;
��* +
plantButton
�� 
.
�� $
GetComponentInChildren
�� 2
<
��2 3
Text
��3 7
>
��7 8
(
��8 9
)
��9 :
.
��: ;
text
��; ?
=
��@ A
$str
��B I
;
��I J
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
	infoPanel
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $!
initializeInfoPanel
�� #
(
��# $

gameMaster
��$ .
.
��. /
GetDescription
��/ =
(
��= >
fermentorScript
��> M
.
��M N
WineType
��N V
)
��V W
)
��W X
;
��X Y
harvestButton
�� 
.
�� 
name
�� "
=
��# $
$str
��% .
;
��. /
harvestButton
�� 
.
�� $
GetComponentInChildren
�� 4
<
��4 5
Text
��5 9
>
��9 :
(
��: ;
)
��; <
.
��< =
text
��= A
=
��B C
$str
��D M
;
��M N
break
�� 
;
�� 
case
�� 
$str
�� #
:
��# $
	inventory
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $
animator
�� 
.
�� 
SetBool
��  
(
��  !
$str
��! 0
,
��0 1
true
��2 6
)
��6 7
;
��7 8
plantButton
�� 
.
�� 
name
��  
=
��! "
$str
��# 0
;
��0 1
plantButton
�� 
.
�� $
GetComponentInChildren
�� 2
<
��2 3
Text
��3 7
>
��7 8
(
��8 9
)
��9 :
.
��: ;
text
��; ?
=
��@ A
$str
��B O
;
��O P
break
�� 
;
�� 
case
�� 
$str
��  
:
��  !
	infoPanel
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $!
initializeInfoPanel
�� #
(
��# $!
clarificationScript
��$ 7
.
��7 8
wineName
��8 @
)
��@ A
;
��A B
harvestButton
�� 
.
�� 
name
�� "
=
��# $
$str
��% .
;
��. /
harvestButton
�� 
.
�� $
GetComponentInChildren
�� 4
<
��4 5
Text
��5 9
>
��9 :
(
��: ;
)
��; <
.
��< =
text
��= A
=
��B C
$str
��D M
;
��M N
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
	inventory
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $
animator
�� 
.
�� 
SetBool
��  
(
��  !
$str
��! 0
,
��0 1
true
��2 6
)
��6 7
;
��7 8
plantButton
�� 
.
�� 
name
��  
=
��! "
$str
��# +
;
��+ ,
plantButton
�� 
.
�� $
GetComponentInChildren
�� 2
<
��2 3
Text
��3 7
>
��7 8
(
��8 9
)
��9 :
.
��: ;
text
��; ?
=
��@ A
$str
��B J
;
��J K
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
	infoPanel
�� 
.
�� 
alpha
�� 
=
��  !
$num
��" #
;
��# $!
initializeInfoPanel
�� #
(
��# $
bottlingScript
��$ 2
.
��2 3
wineName
��3 ;
)
��; <
;
��< =
harvestButton
�� 
.
�� 
name
�� "
=
��# $
$str
��% .
;
��. /
harvestButton
�� 
.
�� $
GetComponentInChildren
�� 4
<
��4 5
Text
��5 9
>
��9 :
(
��: ;
)
��; <
.
��< =
text
��= A
=
��B C
$str
��D M
;
��M N
break
�� 
;
�� 
}
�� 	
}
�� 
}�� �[
NC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\GameMaster.cs
public 
class 

GameMaster 
: 
MonoBehaviour '
{		 
public 


GameObject 

townCamera  
,  !

farmCamera" ,
,, -
breweryCamera. ;
;; <
public 

Camera 

grapeCrush 
; 
public 


GameObject 
playGrapeCrush $
;$ %
public 

bool 
CrushisActive 
; 
private 

GameObject 
guiTemp 
; 
private 
	GUIScript 
	guiScript 
;  
private 
CurtainControls 
curtainControls +
;+ ,
public 

	GameState 
State 
= 
	GameState &
.& '
Farm' +
;+ ,
public 

enum 
	GameState 
{ 
Farm 
, 
Town   
,   
Brewery!! 
,!! 

GrapeCrush"" 
}## 
;## 
public%% 

enum%% 

PlantState%% 
{&& 

NotPlanted'' 
,'' 
JustPlanted(( 
,(( 

Overgrowth)) 
,)) 
Trimmed** 
,** 
Grapes++ 
},, 
;,, 
public.. 

enum.. 
FermentationState.. !
{// 
NotFermentating00 
,00 

Fermenting11 
,11 
	Fermented22 
}33 
public55 

enum55 
ClarificationState55 "
{66 
NotClarificating77 
,77 
Clarificating88 
,88 
Clarificated99 
}:: 
public<< 

enum<< 
Winetype<< 
{== 
[>> 	
Description>>	 
(>> 
$str>> !
)>>! "
]>>" #
	WhiteWine?? 
,?? 
[@@ 	
Description@@	 
(@@ 
$str@@  
)@@  !
]@@! "
RoseWineAA 
,AA 
[BB 	
DescriptionBB	 
(BB 
$strBB 
)BB  
]BB  !
RedWineCC 
,CC 
}DD 
publicFF 

enumFF 
BottlingStateFF 
{GG 
NotBottlingHH 
,HH 
BottlingII 
,II 
BottledJJ 
}KK 
publicOO 

boolOO 
IsInventoryOpenOO 
=OO  !
falseOO" '
;OO' (
voidQQ 
AwakeQQ	 
(QQ 
)QQ 
{RR 
curtainControlsSS 
=SS 

GameObjectSS $
.SS$ %!
FindGameObjectWithTagSS% :
(SS: ;
$strSS; D
)SSD E
.SSE F
GetComponentSSF R
<SSR S
CurtainControlsSSS b
>SSb c
(SSc d
)SSd e
;SSe f
guiTempTT 
=TT 

GameObjectTT 
.TT !
FindGameObjectWithTagTT 2
(TT2 3
$strTT3 D
)TTD E
;TTE F
	guiScriptUU 
=UU 
guiTempUU 
.UU 
GetComponentUU (
<UU( )
	GUIScriptUU) 2
>UU2 3
(UU3 4
)UU4 5
;UU5 6
playGrapeCrushVV 
.VV 
	SetActiveVV  
(VV  !
falseVV! &
)VV& '
;VV' (
CrushisActiveWW 
=WW 
falseWW 
;WW 
}XX 
voidYY 
GoToTownYY	 
(YY 
)YY 
{ZZ 
curtainControls[[ 
.[[ 
FadeToBlack[[ #
([[# $
Camera[[$ *
.[[* +
main[[+ /
,[[/ 0

townCamera[[1 ;
.[[; <
	transform[[< E
.[[E F
Find[[F J
([[J K
$str[[K T
)[[T U
.[[U V
GetComponent[[V b
<[[b c
Camera[[c i
>[[i j
([[j k
)[[k l
)[[l m
;[[m n
State\\ 
=\\ 
	GameState\\ 
.\\ 
Town\\ 
;\\ 
}]] 
void^^ 
GoToFarm^^	 
(^^ 
)^^ 
{__ 
curtainControls`` 
.`` 
FadeToBlack`` #
(``# $
Camera``$ *
.``* +
main``+ /
,``/ 0

farmCamera``1 ;
.``; <
	transform``< E
.``E F
Find``F J
(``J K
$str``K T
)``T U
.``U V
GetComponent``V b
<``b c
Camera``c i
>``i j
(``j k
)``k l
)``l m
;``m n
Stateaa 
=aa 
	GameStateaa 
.aa 
Farmaa 
;aa 
}bb 
voidcc 
GoToBrewerycc	 
(cc 
)cc 
{dd 
curtainControlsee 
.ee 
FadeToBlackee #
(ee# $
Cameraee$ *
.ee* +
mainee+ /
,ee/ 0
breweryCameraee1 >
.ee> ?
	transformee? H
.eeH I
FindeeI M
(eeM N
$streeN W
)eeW X
.eeX Y
GetComponenteeY e
<eee f
Cameraeef l
>eel m
(eem n
)een o
)eeo p
;eep q
Stateff 
=ff 
	GameStateff 
.ff 
Breweryff !
;ff! "
}gg 
voidii 
PlayGrapeCrushii	 
(ii 
)ii 
{jj 
curtainControlskk 
.kk 
FadeToBlackkk #
(kk# $
Camerakk$ *
.kk* +
mainkk+ /
,kk/ 0

grapeCrushkk1 ;
)kk; <
;kk< =
Statell 
=ll 
	GameStatell 
.ll 

GrapeCrushll $
;ll$ %
StartCoroutinemm 
(mm 
$strmm 
,mm 
$nummm #
)mm# $
;mm$ %
}nn 
voidpp 
ViewInventorypp	 
(pp 

GameObjectpp !
gopp" $
)pp$ %
{qq 
	guiScriptrr 
.rr 
showInventoryrr 
(rr  
)rr  !
;rr! "
IsInventoryOpenss 
=ss 
truess 
;ss 
}tt 
IEnumeratorvv 
Waitvv 
(vv 
floatvv 
timevv 
)vv  
{ww 
yieldxx 
returnxx 
newxx 
WaitForSecondsxx '
(xx' (
timexx( ,
)xx, -
;xx- .

GameObjectyy 
objyy 
=yy 
Instantiateyy $
(yy$ %
playGrapeCrushyy% 3
)yy3 4
;yy4 5
Statezz 
=zz 
	GameStatezz 
.zz 

GrapeCrushzz $
;zz$ %
obj{{ 
.{{ 
	SetActive{{ 
({{ 
true{{ 
){{ 
;{{ 
CrushisActive|| 
=|| 
true|| 
;|| 
}~~ 
public
�� 

string
�� 
GetDescription
��  
(
��  !
Enum
��! %
value
��& +
)
��+ ,
{
�� 
	FieldInfo
�� 
field
�� 
=
�� 
value
�� 
.
��  
GetType
��  '
(
��' (
)
��( )
.
��) *
GetField
��* 2
(
��2 3
value
��3 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
)
��C D
;
��D E"
DescriptionAttribute
�� 
	attribute
�� &
=
�� 
	Attribute
�� 
.
��  
GetCustomAttribute
�� .
(
��. /
field
��/ 4
,
��4 5
typeof
��6 <
(
��< ="
DescriptionAttribute
��= Q
)
��Q R
)
��R S
as
�� "
DescriptionAttribute
�� +
;
��+ ,
return
�� 
	attribute
�� 
==
�� 
null
��  
?
��! "
value
��# (
.
��( )
ToString
��) 1
(
��1 2
)
��2 3
:
��4 5
	attribute
��6 ?
.
��? @
Description
��@ K
;
��K L
}
�� 
public
�� 


GameObject
�� 
CurrentClient
�� #
;
��# $
public
�� 


GameObject
�� 
CustomerSystem
�� $
;
��$ %
void
�� 
ClientClick
��	 
(
�� 

GameObject
�� 
go
��  "
)
��" #
{
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
go
�� 
.
�� 
ToString
�� 
(
�� 
)
�� 
)
��  
;
��  !
CustomerSystem
�� 
.
�� 
GetComponent
�� #
<
��# $
CustomerPanel
��$ 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5
clientSender
��5 A
=
��B C
go
��D F
.
��F G
GetComponent
��G S
<
��S T
Client
��T Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
CustomerSystem
�� 
.
�� 
GetComponent
�� #
<
��# $
CustomerPanel
��$ 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5
ActivatePanel
��5 B
(
��B C
)
��C D
;
��D E
CustomerSystem
�� 
.
�� 
GetComponent
�� #
<
��# $
CustomerPanel
��$ 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5%
ScaleExplanationContent
��5 L
(
��L M
)
��M N
;
��N O
}
�� 
public
�� 

enum
�� 

ClientType
�� 
{
�� 
Farmer
�� 
,
�� 

Restaurant
�� 
}
�� 
;
�� 
public
�� 

void
�� "
FarmCameraTransition
�� $
(
��$ %
)
��% &
{
�� 

farmCamera
�� 
.
�� 
GetComponent
�� 
<
��   
MainAltCamControls
��  2
>
��2 3
(
��3 4
)
��4 5
.
��5 6

transition
��6 @
=
��A B
true
��C G
;
��G H
}
�� 
public
�� 

void
�� "
TownCameraTransition
�� $
(
��$ %
)
��% &
{
�� 

townCamera
�� 
.
�� 
GetComponent
�� 
<
��   
MainAltCamControls
��  2
>
��2 3
(
��3 4
)
��4 5
.
��5 6

transition
��6 @
=
��A B
true
��C G
;
��G H
}
�� 
public
�� 

void
�� %
BreweryCameraTransition
�� '
(
��' (
)
��( )
{
�� 
breweryCamera
�� 
.
�� 
GetComponent
�� "
<
��" # 
MainAltCamControls
��# 5
>
��5 6
(
��6 7
)
��7 8
.
��8 9

transition
��9 C
=
��D E
true
��F J
;
��J K
}
�� 
void
�� 
DebugMethod
��	 
(
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� 
)
�� 
;
��  
}
�� 
}�� �E
MC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\Inventory.cs
public 
class 
	Inventory 
: 
MonoBehaviour &
{		 
public 

List 
< 

GameObject 
> 
slots !
=" #
new$ '
List( ,
<, -

GameObject- 7
>7 8
(8 9
)9 :
;: ;
public 


SortedList 
< 
string 
, 
Item "
>" #
items$ )
=* +
new, /

SortedList0 :
<: ;
string; A
,A B
ItemC G
>G H
(H I
)I J
;J K
public 

Canvas 
canvas 
; 
public 


GameObject 
slot 
; 
private 
const 
int 
maxRows 
= 
$num  !
;! "
private 
const 
int 

maxColumns  
=! "
$num# $
;$ %
private 

GameObject 
InventoryGO "
;" #
void 
Awake	 
( 
) 
{ 
InventoryGO 
= 
canvas 
. 
	transform &
.& '
Find' +
(+ ,
$str, 7
)7 8
.8 9

gameObject9 C
;C D
} 
void 
Start	 
( 
) 
{ 
items 
. 
Add 
( 
$str $
,$ %
new& )
Item* .
(. /
$str/ A
,A B
$numC D
,D E
$strF X
,X Y
ItemZ ^
.^ _
ItemType_ g
.g h
VINEh l
)l m
)m n
;n o
items 
. 
Add 
( 
$str $
,$ %
new& )
Item* .
(. /
$str/ A
,A B
$numC D
,D E
$strF X
,X Y
ItemZ ^
.^ _
ItemType_ g
.g h
VINEh l
)l m
)m n
;n o
items   
.   
Add   
(   
$str   
,    
new  ! $
Item  % )
(  ) *
$str  * 7
,  7 8
$num  9 :
,  : ;
$str  < S
,  S T
Item  U Y
.  Y Z
ItemType  Z b
.  b c
GRAPE  c h
)  h i
)  i j
;  j k
items!! 
.!! 
Add!! 
(!! 
$str!! 
,!!  
new!!! $
Item!!% )
(!!) *
$str!!* 7
,!!7 8
$num!!9 :
,!!: ;
$str!!< S
,!!S T
Item!!U Y
.!!Y Z
ItemType!!Z b
.!!b c
GRAPE!!c h
)!!h i
)!!i j
;!!j k
items"" 
."" 
Add"" 
("" 
$str"" 
,"" 
new""  #
Item""$ (
(""( )
$str"") 5
,""5 6
$num""7 8
,""8 9
$str"": N
,""N O
Item""P T
.""T U
ItemType""U ]
.""] ^
WINE""^ b
)""b c
)""c d
;""d e
items## 
.## 
Add## 
(## 
$str## 
,## 
new## !
Item##" &
(##& '
$str##' 1
,##1 2
$num##3 4
,##4 5
$str##6 H
,##H I
Item##J N
.##N O
ItemType##O W
.##W X
WINE##X \
)##\ ]
)##] ^
;##^ _
items$$ 
.$$ 
Add$$ 
($$ 
$str$$ 
,$$ 
new$$ "
Item$$# '
($$' (
$str$$( 3
,$$3 4
$num$$5 6
,$$6 7
$str$$8 K
,$$K L
Item$$M Q
.$$Q R
ItemType$$R Z
.$$Z [
WINE$$[ _
)$$_ `
)$$` a
;$$a b
items%% 
.%% 
Add%% 
(%% 
$str%% 
,%% 
new%% 
Item%%  $
(%%$ %
$str%%% -
,%%- .
$num%%/ 0
,%%0 1
$str%%2 D
,%%D E
Item%%F J
.%%J K
ItemType%%K S
.%%S T
BOTTLE%%T Z
)%%Z [
)%%[ \
;%%\ ]
for(( 
((( 
int(( 
i(( 
=(( 
$num(( 
;(( 
i(( 
<(( 
items(( !
.((! "
Count((" '
;((' (
i(() *
++((* ,
)((, -
{)) 	

GameObject++ 
temp++ 
=++ 
Instantiate++ )
(++) *
slot++* .
)++. /
;++/ 0
temp,, 
.,, 
	transform,, 
.,, 
	SetParent,, $
(,,$ %
InventoryGO,,% 0
.,,0 1
	transform,,1 :
),,: ;
;,,; <
temp-- 
.-- 
GetComponent-- 
<-- 
Slot-- "
>--" #
(--# $
)--$ %
.--% &

uiItemName--& 0
.--0 1
text--1 5
=--6 7
items--8 =
[--= >
items--> C
.--C D
Keys--D H
[--H I
i--I J
]--J K
]--K L
.--L M

returnName--M W
(--W X
)--X Y
;--Y Z
slots.. 
... 
Add.. 
(.. 
temp.. 
).. 
;.. 
}// 	
for22 
(22 
int22 
i22 
=22 
$num22 
,22 
y22 
=22 
$num22 
;22 
i22  
<22! "
maxRows22# *
;22* +
y22, -
++22- /
)22/ 0
{33 	
for44 
(44 
int44 
x44 
=44 
$num44 
;44 
x44 
<44 

maxColumns44  *
;44* +
x44, -
++44- /
,44/ 0
i441 2
++442 4
)444 5
{55 
if66 
(66 
slots66 
[66 
i66 
]66 
!=66 
null66  $
)66$ %
{77 
slots88 
[88 
i88 
]88 
.88 
	transform88 &
.88& '
localPosition88' 4
=885 6
new887 :
Vector388; B
(88B C
$num88C F
+88G H
$num88I M
/88N O
$num88P Q
*88R S
-88T U
$num88U V
+88W X
$num88Y \
*88] ^
x88_ `
,88` a
(88b c
$num88c f
/88g h
$num88i j
-88k l
$num88m o
)88o p
-88q r
$num88s v
*88w x
y88y z
)88z {
;88{ |
}99 
}:: 
};; 	
}<< 
void?? 
OnGUI??	 
(?? 
)?? 
{@@ 
	GUILayoutAA 
.AA 
	BeginAreaAA 
(AA 
newAA 
RectAA  $
(AA$ %
$numAA% '
,AA' (
$numAA) +
,AA+ ,
$numAA- 0
,AA0 1
$numAA2 5
)AA5 6
)AA6 7
;AA7 8
ifBB 

(BB 
	GUILayoutBB 
.BB 
ButtonBB 
(BB 
$strBB *
)BB* +
)BB+ ,
{CC 	
itemsDD 
[DD 
$strDD $
]DD$ %
.DD% &
AddItemDD& -
(DD- .
)DD. /
;DD/ 0
}EE 	
	GUILayoutFF 
.FF 
EndAreaFF 
(FF 
)FF 
;FF 
	GUILayoutGG 
.GG 
	BeginAreaGG 
(GG 
newGG 
RectGG  $
(GG$ %
$numGG% '
,GG' (
$numGG) +
,GG+ ,
$numGG- 0
,GG0 1
$numGG2 5
)GG5 6
)GG6 7
;GG7 8
ifHH 

(HH 
	GUILayoutHH 
.HH 
ButtonHH 
(HH 
$strHH *
)HH* +
)HH+ ,
{II 	
itemsJJ 
[JJ 
$strJJ $
]JJ$ %
.JJ% &
AddItemJJ& -
(JJ- .
)JJ. /
;JJ/ 0
}KK 	
	GUILayoutLL 
.LL 
EndAreaLL 
(LL 
)LL 
;LL 
}MM 
}NN �
HC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\Item.cs
public 
class 
Item 
{ 
private 
string 
itemDesc 
; 
private		 
string		 
itemName		 
;		 
private

 
int

 
itemID

 
;

 
private 
Sprite 

itemSprite 
; 
private 
ItemType 
itemType 
; 
private 
int 
	itemValue 
; 
public 

enum 
ItemType 
{ 
GRAPE 
, 
VINE 
, 
WINE 
, 
BOTTLE 
, 
} 
public 

string 
ItemDesc 
{ 
get 
{ 
return 
itemDesc 
; 
}  
} 
public   

ItemType   
iType   
{!! 
get"" 
{"" 
return"" 
itemType"" 
;"" 
}""  
}## 
public%% 

Sprite%% 

ItemSprite%% 
{&& 
get'' 
{'' 
return'' 

itemSprite'' 
;''  
}''! "
}(( 
public** 

int** 
	itemCount** 
{++ 
get,, 
{-- 	
return.. 
	itemValue.. 
;.. 
}// 	
private00 
set00 
{11 	
if22 
(22 
value22 
<22 
$num22 
)22 
{33 
if44 
(44 
	itemValue44 
-44 
value44  %
<44& '
$num44( )
)44) *
	itemValue55 
=55 
$num55  !
;55! "
else66 
	itemValue77 
-=77  
value77! &
;77& '
}88 
else99 
{:: 
	itemValue;; 
=;; 
value;; !
;;;! "
}<< 
}== 	
}>> 
public@@ 

int@@ 
returnID@@ 
(@@ 
)@@ 
{AA 
returnBB 
itemIDBB 
;BB 
}CC 
publicEE 

ItemEE 
.EE 
ItemTypeEE 
returnItemTypeEE '
(EE' (
)EE( )
{FF 
returnGG 
itemTypeGG 
;GG 
}HH 
publicLL 

voidLL 
PopItemLL 
(LL 
)LL 
{MM 
	itemCountNN 
--NN 
;NN 
}OO 
publicQQ 

voidQQ 
AddItemQQ 
(QQ 
)QQ 
{RR 
	itemCountSS 
++SS 
;SS 
}TT 
publicVV 

stringVV 

returnNameVV 
(VV 
)VV 
{WW 
returnXX 
itemNameXX 
;XX 
}YY 
public]] 

Item]] 
(]] 
string]] 
name]] 
,]] 
int]]  
id]]! #
,]]# $
string]]% +
desc]], 0
,]]0 1
ItemType]]2 :
type]]; ?
)]]? @
{^^ 
itemName__ 
=__ 
name__ 
;__ 
itemID`` 
=`` 
id`` 
;`` 
itemDescaa 
=aa 
descaa 
;aa 
itemTypebb 
=bb 
typebb 
;bb 

itemSpritecc 
=cc 
	Resourcescc 
.cc 
Loadcc #
<cc# $
Spritecc$ *
>cc* +
(cc+ ,
$strcc, .
+cc/ 0
namecc1 5
)cc5 6
;cc6 7
}dd 
}ff �
WC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\MethodCallerHandler.cs
public 
class 
MethodCallerHandler  
:! "
MonoBehaviour# 0
{ 
private 

GameMaster 
gm 
; 
public 

string 

MethodName 
; 
void 
Awake	 
( 
) 
{ 
gm 

= 

GameObject 
. !
FindGameObjectWithTag -
(- .
$str. ;
); <
.< =
GetComponent= I
<I J

GameMasterJ T
>T U
(U V
)V W
;W X
} 
public 

void 

CallMethod 
( 
) 
{ 
gm 

.
 
SendMessage 
( 

MethodName !
,! "

gameObject# -
)- .
;. /
} 
} �$
OC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\PlantGround.cs
public 
class 
PlantGround 
: 
MonoBehaviour (
{ 
public		 

List		 
<		 
Sprite		 
>		 
Sprites		 
=		  !
new		" %
List		& *
<		* +
Sprite		+ 1
>		1 2
(		2 3
)		3 4
;		4 5
public

 


GameMaster

 
.

 

PlantState

  

plantState

! +
=

, -

GameMaster

. 8
.

8 9

PlantState

9 C
.

C D

NotPlanted

D N
;

N O
public 

bool 
	isPlanted 
; 
public 

string 
	plantName 
; 
public 

Sprite 
plantSprite 
; 
public 

string 
niceTime 
; 
private 
float 
timer 
= 
$num 
; 
private 
int 
harvestTimeMinutes "
;" #
private 
int 
harvestTimeSeconds "
;" #
public 

float 
Timer 
{ 
get 
{ 	
return 
timer 
; 
} 	
} 
void 
Update	 
( 
) 
{ 
if   

(   

plantState   
!=   

GameMaster   $
.  $ %

PlantState  % /
.  / 0

NotPlanted  0 :
&&  ; =

plantState  > H
!=  I K

GameMaster  L V
.  V W

PlantState  W a
.  a b
Grapes  b h
)  h i
{!! 	
if"" 
("" 
timer"" 
>="" 
$num"" 
)"" 
{## 
timer$$ 
-=$$ 
Time$$ 
.$$ 
	deltaTime$$ '
;$$' (
harvestTimeMinutes%% "
=%%# $
Mathf%%% *
.%%* +

FloorToInt%%+ 5
(%%5 6
timer%%6 ;
/%%< =
$num%%> A
)%%A B
;%%B C
harvestTimeSeconds&& "
=&&# $
Mathf&&% *
.&&* +

FloorToInt&&+ 5
(&&5 6
timer&&6 ;
-&&< =
harvestTimeMinutes&&> P
*&&Q R
$num&&S U
)&&U V
;&&V W
niceTime'' 
='' 
string'' !
.''! "
Format''" (
(''( )
$str'') 7
,''7 8
harvestTimeMinutes''9 K
,''K L
harvestTimeSeconds''M _
)''_ `
;''` a
}(( 
if++ 
(++ 
timer++ 
<=++ 
$num++ 
)++ 
{,, 

plantState.. 
=.. 

GameMaster.. '
...' (

PlantState..( 2
...2 3
Grapes..3 9
;..9 :
}// 
else00 
if00 
(00 
timer00 
<00 
$num00 
)00  
{11 

plantState33 
=33 

GameMaster33 '
.33' (

PlantState33( 2
.332 3
Trimmed333 :
;33: ;
}44 
else55 
if55 
(55 
timer55 
<55 
$num55  
)55  !
{66 

plantState88 
=88 

GameMaster88 '
.88' (

PlantState88( 2
.882 3

Overgrowth883 =
;88= >
}99 
else:: 
if:: 
(:: 
timer:: 
<:: 
$num::  
)::  !
{;; 
GetComponent<< 
<<< 
SpriteRenderer<< +
><<+ ,
(<<, -
)<<- .
.<<. /
sprite<</ 5
=<<6 7
Sprites<<8 ?
[<<? @
$num<<@ A
]<<A B
;<<B C

plantState== 
=== 

GameMaster== '
.==' (

PlantState==( 2
.==2 3
JustPlanted==3 >
;==> ?
}>> 
}?? 	
else@@ 
niceTimeAA 
=AA 
stringAA 
.AA 
FormatAA $
(AA$ %
$strAA% +
)AA+ ,
;AA, -
}BB 
publicDD 

voidDD 

resetTimerDD 
(DD 
)DD 
{EE 
timerFF 
=FF 
$numFF 
;FF 
}GG 
}HH �
HC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\Slot.cs
public 
class 
Slot 
: 
MonoBehaviour !
,! " 
IPointerClickHandler# 7
{ 
public

 

Text

 
uiItemCount

 
;

 
public 

Text 

uiItemName 
; 
public 

Image 
	itemImage 
; 
private 
int 
	itemCount 
; 
private 
	Inventory 
	inventory 
;  
void 
Start	 
( 
) 
{ 
	inventory 
= 

GameObject 
. !
FindGameObjectWithTag 4
(4 5
$str5 B
)B C
.C D
GetComponentD P
<P Q
	InventoryQ Z
>Z [
([ \
)\ ]
;] ^
} 
void 
Update	 
( 
) 
{ 
	itemCount 
= 
	inventory 
. 
items #
[# $

uiItemName$ .
.. /
text/ 3
]3 4
.4 5
	itemCount5 >
;> ?
uiItemCount 
. 
text 
= 
	inventory $
.$ %
items% *
[* +

uiItemName+ 5
.5 6
text6 :
]: ;
.; <
	itemCount< E
.E F
ToStringF N
(N O
)O P
;P Q
	itemImage 
. 
sprite 
= 
	inventory $
.$ %
items% *
[* +

uiItemName+ 5
.5 6
text6 :
]: ;
.; <

ItemSprite< F
;F G
} 
void   
clearHighlight  	 
(   
)   
{!! 
foreach"" 
("" 

GameObject"" 
asd"" 
in""  "
	inventory""# ,
."", -
slots""- 2
)""2 3
{## 	
asd$$ 
.$$ 
GetComponent$$ 
<$$ 
Image$$ "
>$$" #
($$# $
)$$$ %
.$$% &
sprite$$& ,
=$$- .
	Resources$$/ 8
.$$8 9
Load$$9 =
<$$= >
Sprite$$> D
>$$D E
($$E F
$str$$F _
)$$_ `
;$$` a
}%% 	
}&& 
public)) 

void)) 
OnPointerClick)) 
()) 
PointerEventData)) /
data))0 4
)))4 5
{** 
clearHighlight++ 
(++ 
)++ 
;++ 
if,, 

(,, 
	inventory,, 
.,, 
items,, 
[,, 

uiItemName,, &
.,,& '
text,,' +
],,+ ,
!=,,- /
null,,0 4
),,4 5
{-- 	

gameObject.. 
... 
GetComponent.. #
<..# $
Image..$ )
>..) *
(..* +
)..+ ,
..., -
sprite..- 3
=..4 5
	Resources..6 ?
...? @
Load..@ D
<..D E
Sprite..E K
>..K L
(..L M
$str..M h
)..h i
;..i j

GameObject// 
.// !
FindGameObjectWithTag// ,
(//, -
$str//- :
)//: ;
.//; <
GetComponent//< H
<//H I

SlotScript//I S
>//S T
(//T U
)//U V
.//V W
seedName//W _
=//` a

uiItemName//b l
.//l m
text//m q
;//q r
}00 	
}11 
}22 ��
NC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\SlotScript.cs
public		 
class		 

SlotScript		 
:		 
MonoBehaviour		 '
{

 
public 

static 
bool 
didPlant 
;  
public 

string 
seedName 
; 
public 

string !
currentlySelectedName '
;' (
private 
	Inventory 
	inventory 
;  
private 

GameObject 
guiTemp 
; 
private 
	GUIScript 
	guiScript 
;  

GameObject 
parent 
; 
PlantGround 
groundScript 
; 
FermentorScript 
fermentorScript #
;# $
ClarificationScript 
clarificationScript +
;+ ,
BottlingScript 
bottlingScript !
;! "
List 
< 	

GameObject	 
> 
vinePositions "
=# $
new% (
List) -
<- .

GameObject. 8
>8 9
(9 :
): ;
;; <

GameMaster 

gameMaster 
; 
void 
Awake	 
( 
) 
{   
guiTemp!! 
=!! 

GameObject!! 
.!! !
FindGameObjectWithTag!! 2
(!!2 3
$str!!3 D
)!!D E
;!!E F
	guiScript"" 
="" 
guiTemp"" 
."" 
GetComponent"" (
<""( )
	GUIScript"") 2
>""2 3
(""3 4
)""4 5
;""5 6
	inventory## 
=## 

GameObject## 
.## !
FindGameObjectWithTag## 4
(##4 5
$str##5 B
)##B C
.##C D
GetComponent##D P
<##P Q
	Inventory##Q Z
>##Z [
(##[ \
)##\ ]
;##] ^

gameMaster$$ 
=$$ 

GameObject$$ 
.$$  !
FindGameObjectWithTag$$  5
($$5 6
$str$$6 C
)$$C D
.$$D E
GetComponent$$E Q
<$$Q R

GameMaster$$R \
>$$\ ]
($$] ^
)$$^ _
;$$_ `
}%% 
public(( 

void(( 
Plant(( 
((( 
)(( 
{)) 
didPlant** 
=** 
false** 
;** 
parent,, 
=,, 
ColliderHandler,,  
.,,  !
parentGameObject,,! 1
;,,1 2
groundScript.. 
=.. 
parent.. 
... 
GetComponent.. *
<..* +
PlantGround..+ 6
>..6 7
(..7 8
)..8 9
;..9 :
if11 

(11 
	inventory11 
.11 
items11 
[11 
seedName11 $
]11$ %
.11% &
	itemCount11& /
>110 1
$num112 3
)113 4
{22 	
if44 
(44 
	inventory44 
.44 
items44 
[44  
seedName44  (
]44( )
.44) *
returnItemType44* 8
(448 9
)449 :
==44; =
Item44> B
.44B C
ItemType44C K
.44K L
VINE44L P
)44P Q
{55 
parent77 
.77 
tag77 
=77 
$str77 &
;77& '
groundScript88 
.88 

plantState88 '
=88( )

GameMaster88* 4
.884 5

PlantState885 ?
.88? @
JustPlanted88@ K
;88K L
groundScript99 
.99 
	plantName99 &
=99' (
	inventory99) 2
.992 3
items993 8
[998 9
seedName999 A
]99A B
.99B C

returnName99C M
(99M N
)99N O
;99O P
	guiScript:: 
.:: 
initializeInfoPanel:: -
(::- .
groundScript::. :
.::: ;
	plantName::; D
)::D E
;::E F
	inventory;; 
.;; 
items;; 
[;;  
seedName;;  (
];;( )
.;;) *
PopItem;;* 1
(;;1 2
);;2 3
;;;3 4
didPlant<< 
=<< 
true<< 
;<<  
}>> 
else?? 
{@@ 
DebugAA 
.AA 
LogAA 
(AA 
$strAA &
)AA& '
;AA' (
}BB 
}CC 	
elseDD 
{EE 	
DebugFF 
.FF 
LogFF 
(FF 
$strFF (
)FF( )
;FF) *
}GG 	
}HH 
publicKK 

voidKK 
HarvestKK 
(KK 
)KK 
{LL 
parentMM 
=MM 
ColliderHandlerMM  
.MM  !
parentGameObjectMM! 1
;MM1 2
groundScriptNN 
=NN 
parentNN 
.NN 
GetComponentNN *
<NN* +
PlantGroundNN+ 6
>NN6 7
(NN7 8
)NN8 9
;NN9 :
parentPP 
.PP 
tagPP 
=PP 
$strPP !
;PP! "
groundScriptQQ 
.QQ 

plantStateQQ 
=QQ  !

GameMasterQQ" ,
.QQ, -

PlantStateQQ- 7
.QQ7 8

NotPlantedQQ8 B
;QQB C!
currentlySelectedNameRR 
=RR 
groundScriptRR  ,
.RR, -
	plantNameRR- 6
;RR6 7
stringSS 
selectedGrapeSS 
=SS !
currentlySelectedNameSS 4
.SS4 5
SplitSS5 :
(SS: ;
$charSS; >
)SS> ?
[SS? @
$numSS@ A
]SSA B
+SSC D
$strSSE H
+SSI J!
currentlySelectedNameSSK `
.SS` a
SplitSSa f
(SSf g
$charSSg j
)SSj k
[SSk l
$numSSl m
]SSm n
;SSn o!
currentlySelectedNameTT 
=TT 
selectedGrapeTT  -
;TT- .
groundScriptUU 
.UU 
	plantNameUU 
=UU  
nullUU! %
;UU% &
	inventoryVV 
.VV 
itemsVV 
[VV !
currentlySelectedNameVV -
]VV- .
.VV. /
AddItemVV/ 6
(VV6 7
)VV7 8
;VV8 9
groundScriptWW 
.WW 

resetTimerWW 
(WW  
)WW  !
;WW! "
}XX 
public[[ 

void[[ 
selectGrape[[ 
([[ 
)[[ 
{\\ 
if]] 

(]] 
	inventory]] 
.]] 
items]] 
[]] 
seedName]] $
]]]$ %
.]]% &
	itemCount]]& /
>]]0 1
$num]]2 3
)]]3 4
{^^ 	
if__ 
(__ 
	inventory__ 
.__ 
items__ 
[__  
seedName__  (
]__( )
.__) *
iType__* /
==__0 2
Item__3 7
.__7 8
ItemType__8 @
.__@ A
GRAPE__A F
)__F G
{`` 
parentaa 
=aa 
ColliderHandleraa (
.aa( )
parentGameObjectaa) 9
;aa9 :!
currentlySelectedNamecc %
=cc& '
	inventorycc( 1
.cc1 2
itemscc2 7
[cc7 8
seedNamecc8 @
]cc@ A
.ccA B

returnNameccB L
(ccL M
)ccM N
;ccN O
	inventorydd 
.dd 
itemsdd 
[dd  !
currentlySelectedNamedd  5
]dd5 6
.dd6 7
PopItemdd7 >
(dd> ?
)dd? @
;dd@ A

GameObjectee 
grapeee  
=ee! "
	Resourcesee# ,
.ee, -
Loadee- 1
<ee1 2

GameObjectee2 <
>ee< =
(ee= >
$stree> E
)eeE F
;eeF G
grapeff 
.ff 
GetComponentff "
<ff" #
SpriteRendererff# 1
>ff1 2
(ff2 3
)ff3 4
.ff4 5
spriteff5 ;
=ff< =
	Resourcesff> G
.ffG H
LoadffH L
<ffL M
SpriteffM S
>ffS T
(ffT U!
currentlySelectedNameffU j
)ffj k
;ffk l
stringgg 
methodgg 
=gg 
parentgg  &
.gg& '

gameObjectgg' 1
.gg1 2
GetComponentgg2 >
<gg> ?
MethodCallerHandlergg? R
>ggR S
(ggS T
)ggT U
.ggU V

MethodNameggV `
=gga b
$strggc s
;ggs t
parenthh 
.hh 

gameObjecthh !
.hh! "
GetComponenthh" .
<hh. /
MethodCallerHandlerhh/ B
>hhB C
(hhC D
)hhD E
.hhE F

CallMethodhhF P
(hhP Q
)hhQ R
;hhR S
didPlantii 
=ii 
trueii 
;ii  
methodjj 
=jj 
parentjj 
.jj  

gameObjectjj  *
.jj* +
GetComponentjj+ 7
<jj7 8
MethodCallerHandlerjj8 K
>jjK L
(jjL M
)jjM N
.jjN O

MethodNamejjO Y
=jjZ [
$strjj\ k
;jjk l
}kk 
elsell 
{mm 
didPlantnn 
=nn 
falsenn  
;nn  !
Debugoo 
.oo 
Logoo 
(oo 
$stroo %
)oo% &
;oo& '
}pp 
}qq 	
elserr 
{ss 	
didPlanttt 
=tt 
falsett 
;tt 
Debuguu 
.uu 
Loguu 
(uu 
$struu "
)uu" #
;uu# $
}vv 	
}xx 
public{{ 

void{{ 
Ferment{{ 
({{ 
){{ 
{|| 
parent}} 
=}} 
ColliderHandler}}  
.}}  !
parentGameObject}}! 1
;}}1 2
fermentorScript~~ 
=~~ 
parent~~  
.~~  !
GetComponent~~! -
<~~- .
FermentorScript~~. =
>~~= >
(~~> ?
)~~? @
;~~@ A
parent 
. 
tag 
= 
$str !
;! "
fermentorScript
�� 
.
�� 
	grapeName
�� !
=
��" ##
currentlySelectedName
��$ 9
;
��9 :
string
�� 
selectedGrape
�� 
=
�� #
currentlySelectedName
�� 4
.
��4 5
Split
��5 :
(
��: ;
$char
��; >
)
��> ?
[
��? @
$num
��@ A
]
��A B
+
��C D
$str
��E H
+
��I J#
currentlySelectedName
��K `
.
��` a
Split
��a f
(
��f g
$char
��g j
)
��j k
[
��k l
$num
��l m
]
��m n
;
��n o#
currentlySelectedName
�� 
=
�� 
selectedGrape
��  -
;
��- .
if
�� 

(
�� #
currentlySelectedName
�� !
==
��" $
$str
��% 2
)
��2 3
{
�� 	
fermentorScript
�� 
.
�� 
WineType
�� $
=
��% &

GameMaster
��' 1
.
��1 2
Winetype
��2 :
.
��: ;
	WhiteWine
��; D
;
��D E
}
�� 	
else
�� 
fermentorScript
�� 
.
�� 
WineType
�� $
=
��% &

GameMaster
��' 1
.
��1 2
Winetype
��2 :
.
��: ;
RedWine
��; B
;
��B C
fermentorScript
�� 
.
�� 
FermentationState
�� )
=
��* +

GameMaster
��, 6
.
��6 7
FermentationState
��7 H
.
��H I

Fermenting
��I S
;
��S T
fermentorScript
�� 
.
�� 
Timer
�� 
=
�� 
$num
��  !
;
��! "
fermentorScript
�� 
.
�� 
isFermenting
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
public
�� 

void
�� 
Collect
�� 
(
�� 
)
�� 
{
�� 
parent
�� 
=
�� 
ColliderHandler
��  
.
��  !
parentGameObject
��! 1
;
��1 2
if
�� 

(
�� 
parent
�� 
.
�� 
tag
�� 
==
�� 
$str
�� &
)
��& '
{
�� 	
fermentorScript
�� 
=
�� 
parent
�� $
.
��$ %
GetComponent
��% 1
<
��1 2
FermentorScript
��2 A
>
��A B
(
��B C
)
��C D
;
��D E
parent
�� 
.
�� 
tag
�� 
=
�� 
$str
�� (
;
��( )
	inventory
�� 
.
�� 
items
�� 
[
�� 

gameMaster
�� &
.
��& '
GetDescription
��' 5
(
��5 6
fermentorScript
��6 E
.
��E F
WineType
��F N
)
��N O
]
��O P
.
��P Q
AddItem
��Q X
(
��X Y
)
��Y Z
;
��Z [
fermentorScript
�� 
.
�� 
FermentationState
�� -
=
��. /

GameMaster
��0 :
.
��: ;
FermentationState
��; L
.
��L M
NotFermentating
��M \
;
��\ ]
fermentorScript
�� 
.
�� 
isFermenting
�� (
=
��) *
false
��+ 0
;
��0 1
fermentorScript
�� 
.
�� 
	grapeName
�� %
=
��& '
null
��( ,
;
��, -
fermentorScript
�� 
.
�� 
Timer
�� !
=
��" #
$num
��$ %
;
��% &
}
�� 	
else
�� 
if
�� 
(
�� 
parent
�� 
.
�� 
tag
�� 
==
�� 
$str
�� .
)
��. /
{
�� 	!
clarificationScript
�� 
=
��  !
parent
��" (
.
��( )
GetComponent
��) 5
<
��5 6!
ClarificationScript
��6 I
>
��I J
(
��J K
)
��K L
;
��L M
parent
�� 
.
�� 
tag
�� 
=
�� 
$str
�� +
;
��+ ,!
clarificationScript
�� 
.
��   
clarificationState
��  2
=
��3 4

GameMaster
��5 ?
.
��? @ 
ClarificationState
��@ R
.
��R S
NotClarificating
��S c
;
��c d
	inventory
�� 
.
�� 
items
�� 
[
�� !
clarificationScript
�� /
.
��/ 0
wineName
��0 8
]
��8 9
.
��9 :
AddItem
��: A
(
��A B
)
��B C
;
��C D!
clarificationScript
�� 
.
��  
wineName
��  (
=
��) *
null
��+ /
;
��/ 0!
clarificationScript
�� 
.
��  
Timer
��  %
=
��& '
$num
��( )
;
��) *
}
�� 	
else
�� 
if
�� 
(
�� 
parent
�� 
.
�� 
tag
�� 
==
�� 
$str
�� )
)
��) *
{
�� 	
bottlingScript
�� 
=
�� 
parent
�� #
.
��# $
GetComponent
��$ 0
<
��0 1
BottlingScript
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
parent
�� 
.
�� 
tag
�� 
=
�� 
$str
�� &
;
��& '
bottlingScript
�� 
.
�� 
bottlingState
�� (
=
��) *

GameMaster
��+ 5
.
��5 6
BottlingState
��6 C
.
��C D
NotBottling
��D O
;
��O P
	inventory
�� 
.
�� 
items
�� 
[
�� 
$str
�� $
]
��$ %
.
��% &
AddItem
��& -
(
��- .
)
��. /
;
��/ 0
bottlingScript
�� 
.
�� 
wineName
�� #
=
��$ %
null
��& *
;
��* +
bottlingScript
�� 
.
�� 
Timer
��  
=
��! "
$num
��# $
;
��$ %
}
�� 	
}
�� 
public
�� 

void
�� 
Clarificate
�� 
(
�� 
)
�� 
{
�� 
parent
�� 
=
�� 
ColliderHandler
��  
.
��  !
parentGameObject
��! 1
;
��1 2!
clarificationScript
�� 
=
�� 
parent
�� $
.
��$ %
GetComponent
��% 1
<
��1 2!
ClarificationScript
��2 E
>
��E F
(
��F G
)
��G H
;
��H I
if
�� 

(
�� 
	inventory
�� 
.
�� 
items
�� 
[
�� 
seedName
�� $
]
��$ %
.
��% &
	itemCount
��& /
>
��0 1
$num
��2 3
)
��3 4
{
�� 	
if
�� 
(
�� 
	inventory
�� 
.
�� 
items
�� 
[
��  
seedName
��  (
]
��( )
.
��) *
iType
��* /
==
��0 2
Item
��3 7
.
��7 8
ItemType
��8 @
.
��@ A
WINE
��A E
)
��E F
{
�� 
parent
�� 
.
�� 
tag
�� 
=
�� 
$str
�� ,
;
��, -#
currentlySelectedName
�� %
=
��& '
	inventory
��( 1
.
��1 2
items
��2 7
[
��7 8
seedName
��8 @
]
��@ A
.
��A B

returnName
��B L
(
��L M
)
��M N
;
��N O!
clarificationScript
�� #
.
��# $
wineName
��$ ,
=
��- .#
currentlySelectedName
��/ D
;
��D E
	inventory
�� 
.
�� 
items
�� 
[
��  #
currentlySelectedName
��  5
]
��5 6
.
��6 7
PopItem
��7 >
(
��> ?
)
��? @
;
��@ A
	guiScript
�� 
.
�� !
initializeInfoPanel
�� -
(
��- .!
clarificationScript
��. A
.
��A B
wineName
��B J
)
��J K
;
��K L!
clarificationScript
�� #
.
��# $ 
clarificationState
��$ 6
=
��7 8

GameMaster
��9 C
.
��C D 
ClarificationState
��D V
.
��V W
Clarificating
��W d
;
��d e!
clarificationScript
�� #
.
��# $
Timer
��$ )
=
��* +
$num
��, .
;
��. /
didPlant
�� 
=
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
didPlant
�� 
=
�� 
false
��  
;
��  !
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� $
)
��$ %
;
��% &
}
�� 
}
�� 	
else
�� 
{
�� 	
didPlant
�� 
=
�� 
false
�� 
;
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
public
�� 

void
�� 
Bottling
�� 
(
�� 
)
�� 
{
�� 
parent
�� 
=
�� 
ColliderHandler
��  
.
��  !
parentGameObject
��! 1
;
��1 2
bottlingScript
�� 
=
�� 
parent
�� 
.
��  
GetComponent
��  ,
<
��, -
BottlingScript
��- ;
>
��; <
(
��< =
)
��= >
;
��> ?
if
�� 

(
�� 
	inventory
�� 
.
�� 
items
�� 
[
�� 
seedName
�� $
]
��$ %
.
��% &
	itemCount
��& /
>
��0 1
$num
��2 3
)
��3 4
{
�� 	
if
�� 
(
�� 
	inventory
�� 
.
�� 
items
�� 
[
��  
seedName
��  (
]
��( )
.
��) *
iType
��* /
==
��0 2
Item
��3 7
.
��7 8
ItemType
��8 @
.
��@ A
WINE
��A E
)
��E F
{
�� 
parent
�� 
.
�� 
tag
�� 
=
�� 
$str
�� '
;
��' (#
currentlySelectedName
�� %
=
��& '
	inventory
��( 1
.
��1 2
items
��2 7
[
��7 8
seedName
��8 @
]
��@ A
.
��A B

returnName
��B L
(
��L M
)
��M N
;
��N O
bottlingScript
�� 
.
�� 
wineName
�� '
=
��( )#
currentlySelectedName
��* ?
;
��? @
	inventory
�� 
.
�� 
items
�� 
[
��  #
currentlySelectedName
��  5
]
��5 6
.
��6 7
PopItem
��7 >
(
��> ?
)
��? @
;
��@ A
	guiScript
�� 
.
�� !
initializeInfoPanel
�� -
(
��- .
bottlingScript
��. <
.
��< =
wineName
��= E
)
��E F
;
��F G
bottlingScript
�� 
.
�� 
bottlingState
�� ,
=
��- .

GameMaster
��/ 9
.
��9 :
BottlingState
��: G
.
��G H
Bottling
��H P
;
��P Q
bottlingScript
�� 
.
�� 
Timer
�� $
=
��% &
$num
��' )
;
��) *
didPlant
�� 
=
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
didPlant
�� 
=
�� 
false
��  
;
��  !
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� $
)
��$ %
;
��% &
}
�� 
}
�� 	
else
�� 
{
�� 	
didPlant
�� 
=
�� 
false
�� 
;
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �
OC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\Scripts\grapeScript.cs
public 
class 
grapeScript 
: 
MonoBehaviour (
{		 
private

 

GameObject

 
temp

 
;

 
private 
CrushScript 
crushScript #
;# $
private 
void 
Awake 
( 
) 
{ 
temp 
= 

GameObject 
. 
Find 
( 
$str 1
)1 2
;2 3
} 
private 
void 
Update 
( 
) 
{ 
crushScript 
= 
temp 
. 
GetComponent '
<' (
CrushScript( 3
>3 4
(4 5
)5 6
;6 7
} 
private 
void 
OnCollisionEnter2D #
(# $
Collision2D$ /
	collision0 9
)9 :
{ 
if 

( 
	collision 
. 

gameObject  
.  !
tag! $
==% '
$str( 4
)4 5
{ 	
crushScript 
. 
missedGrapes $
++$ &
;& '
Destroy 
( 

gameObject 
) 
;  
} 	
} 
} �
FC:\Users\Administrator\Desktop\git_wine\wine-game\Assets\testscript.cs
public 
class 

testscript 
: 
MonoBehaviour '
{( )
void		 
Start			 
(		 
)		 
{

 
float 
targetaspect 
= 
$num !
/" #
$num$ (
;( )
float 
windowaspect 
= 
( 
float #
)# $
Screen$ *
.* +
width+ 0
/1 2
(3 4
float4 9
)9 :
Screen: @
.@ A
heightA G
;G H
float 
scaleheight 
= 
windowaspect (
/) *
targetaspect+ 7
;7 8
Camera 
camera 
= 
GetComponent $
<$ %
Camera% +
>+ ,
(, -
)- .
;. /
if 

( 
scaleheight 
< 
$num 
) 
{ 	
Rect 
rect 
= 
camera 
. 
rect #
;# $
rect 
. 
width 
= 
$num 
; 
rect 
. 
height 
= 
scaleheight %
;% &
rect   
.   
x   
=   
$num   
;   
rect!! 
.!! 
y!! 
=!! 
(!! 
$num!! 
-!! 
scaleheight!! (
)!!( )
/!!* +
$num!!, 0
;!!0 1
camera## 
.## 
rect## 
=## 
rect## 
;## 
}$$ 	
else%% 
{&& 	
float'' 

scalewidth'' 
='' 
$num'' #
/''$ %
scaleheight''& 1
;''1 2
Rect)) 
rect)) 
=)) 
camera)) 
.)) 
rect)) #
;))# $
rect++ 
.++ 
width++ 
=++ 

scalewidth++ #
;++# $
rect,, 
.,, 
height,, 
=,, 
$num,, 
;,, 
rect-- 
.-- 
x-- 
=-- 
(-- 
$num-- 
--- 

scalewidth-- '
)--' (
/--) *
$num--+ /
;--/ 0
rect.. 
... 
y.. 
=.. 
$num.. 
;.. 
camera00 
.00 
rect00 
=00 
rect00 
;00 
}11 	
}22 
}33 