�
ZC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\Client.cs
public 
class 
Client
: 

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
aC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\CustomerPanel.cs
public 
class 

: 

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
{ 

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
} 
else 
{ 

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
} 

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
... 

gameObject..
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
wineCC
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
}KK �H
_C:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\TestWineOne.cs
public 
class 
TestWineOne
: 

{) *
Wine 
wineTest	 
; 
void 
Start	 
( 
) 
{ 
wineTest 
= 
new 
Wine 
( 
) 
; 
wineTest 
. 
AClarity 
= 
Wine  
.  !
AppearanceClarity! 2
.2 3
Clear3 8
;8 9
wineTest 
. 

AIntensity 
= 
Wine "
." #
AppearanceIntensity# 6
.6 7
Deep7 ;
;; <
wineTest 
. 
Color 
( 
Wine 
. %
AppearanceColorGategories 5
.5 6

,C D
(E F
intF I
)I J
WineJ N
.N O"
AppearanceRedWineColorO e
.e f
Purplef l
)l m
;m n
wineTest 
. 

NCondition 
= 
Wine "
." #

.0 1
Clean1 6
;6 7
wineTest 
. 

NIntensity 
= 
Wine "
." #

.0 1
Deep1 5
;5 6
wineTest 
. 
Aromas 
[ 
$num 
] 
= 
wineTest %
.% &
Aroma& +
(+ ,
(, -
int- 0
)0 1
Wine1 5
.5 6
MainGategories6 D
.D E
NoseE I
,I J
(K L
intL O
)O P
WineP T
.T U
NoseGategoriesU c
.c d
Aromad i
,i j
(k l
intl o
)o p
Winep t
.t u&
AromaAndFlavourGategories	u �
.
� �
FloralFruit
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �#
FloralFruitGategories
� �
.
� �
CitrusFruit
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �(
AromaAndFlavourCitrusFruit
� �
.
� �

Grapefruit
� �
)
� �
;
� �
wineTest 
. 
Aromas 
[ 
$num 
] 
= 
wineTest %
.% &
Aroma& +
(+ ,
(, -
int- 0
)0 1
Wine1 5
.5 6
MainGategories6 D
.D E
NoseE I
,I J
(K L
intL O
)O P
WineP T
.T U
NoseGategoriesU c
.c d
Aromad i
,i j
(k l
intl o
)o p
Winep t
.t u&
AromaAndFlavourGategories	u �
.
� �
OakOther
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� � 
OakOtherGategories
� �
.
� �
Kernel
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �#
AromaAndFlavourKernel
� �
.
� �
Almond
� �
)
� �
;
� �
wineTest 
. 
Aromas 
[ 
$num 
] 
= 
wineTest %
.% &
Aroma& +
(+ ,
(, -
int- 0
)0 1
Wine1 5
.5 6
MainGategories6 D
.D E
NoseE I
,I J
(K L
intL O
)O P
WineP T
.T U
NoseGategoriesU c
.c d
Aromad i
,i j
(k l
intl o
)o p
Winep t
.t u&
AromaAndFlavourGategories	u �
.
� �
SpiceVegetable
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �&
SpiceVegetableGategories
� �
.
� �
PungentSpice
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �)
AromaAndFlavourPungentSpice
� �
.
� �
BlackPepper
� �
)
� �
;
� �
wineTest 
. 

PSweetness 
= 
Wine "
." #
PalateSweetness# 2
.2 3
Dry3 6
;6 7
wineTest 
. 
PAcidity 
= 
Wine  
.  !

.. /
Medium/ 5
;5 6
wineTest 
. 
PTannin 
= 
Wine 
.  
PalateTannin  ,
., -
Low- 0
;0 1
wineTest 
. 
PBody 
= 
Wine 
. 

PalateBody (
.( )
Full) -
;- .
wineTest 
. 
Flavours 
[ 
$num 
] 
= 
wineTest '
.' (
Aroma( -
(- .
(. /
int/ 2
)2 3
Wine3 7
.7 8
MainGategories8 F
.F G
PalateG M
,M N
(O P
intP S
)S T
WineT X
.X Y
PalateGategoriesY i
.i j#
FlavourCharasteristics	j �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �'
AromaAndFlavourGategories
� �
.
� �
FloralFruit
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �#
FloralFruitGategories
� �
.
� �
CitrusFruit
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �(
AromaAndFlavourCitrusFruit
� �
.
� �

Grapefruit
� �
)
� �
;
� �
wineTest   
.   
Flavours   
[   
$num   
]   
=   
wineTest   '
.  ' (
Aroma  ( -
(  - .
(  . /
int  / 2
)  2 3
Wine  3 7
.  7 8
MainGategories  8 F
.  F G
Palate  G M
,  M N
(  O P
int  P S
)  S T
Wine  T X
.  X Y
PalateGategories  Y i
.  i j#
FlavourCharasteristics	  j �
,
  � �
(
  � �
int
  � �
)
  � �
Wine
  � �
.
  � �'
AromaAndFlavourGategories
  � �
.
  � �
OakOther
  � �
,
  � �
(
  � �
int
  � �
)
  � �
Wine
  � �
.
  � � 
OakOtherGategories
  � �
.
  � �
Maturity
  � �
,
  � �
(
  � �
int
  � �
)
  � �
Wine
  � �
.
  � �%
AromaAndFlavourMaturity
  � �
.
  � �
Cedar
  � �
)
  � �
;
  � �
wineTest!! 
.!! 
Flavours!! 
[!! 
$num!! 
]!! 
=!! 
wineTest!! '
.!!' (
Aroma!!( -
(!!- .
(!!. /
int!!/ 2
)!!2 3
Wine!!3 7
.!!7 8
MainGategories!!8 F
.!!F G
Palate!!G M
,!!M N
(!!O P
int!!P S
)!!S T
Wine!!T X
.!!X Y
PalateGategories!!Y i
.!!i j#
FlavourCharasteristics	!!j �
,
!!� �
(
!!� �
int
!!� �
)
!!� �
Wine
!!� �
.
!!� �'
AromaAndFlavourGategories
!!� �
.
!!� �
SpiceVegetable
!!� �
,
!!� �
(
!!� �
int
!!� �
)
!!� �
Wine
!!� �
.
!!� �&
SpiceVegetableGategories
!!� �
.
!!� �
Herbal
!!� �
,
!!� �
(
!!� �
int
!!� �
)
!!� �
Wine
!!� �
.
!!� �#
AromaAndFlavourHerbal
!!� �
.
!!� �
Dill
!!� �
)
!!� �
;
!!� �
wineTest## 
.## 
PFinish## 
=## 
Wine## 
.##  
PalateFinish##  ,
.##, -
Medium##- 3
;##3 4
wineTest%% 
.%% 
WineQuality%% 
=%% 
Wine%% #
.%%# $
Quality%%$ +
.%%+ ,

Acceptable%%, 6
;%%6 7
}&& 
}'' �H
_C:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\TestWineTwo.cs
public 
class 
TestWineTwo
: 

{ 
Wine 
wineTest	 
; 
void 
Start	 
( 
) 
{ 
wineTest
=
new
Wine
(
)
;
wineTest 
. 
AClarity 
= 
Wine  
.  !
AppearanceClarity! 2
.2 3
Clear3 8
;8 9
wineTest 
. 

AIntensity 
= 
Wine "
." #
AppearanceIntensity# 6
.6 7
Pale7 ;
;; <
wineTest 
. 
Color 
( 
Wine 
. %
AppearanceColorGategories 5
.5 6
WhiteWineColour6 E
,E F
(G H
intH K
)K L
WineL P
.P Q$
AppearanceWhiteWineColorQ i
.i j
Amberj o
)o p
;p q
wineTest 
. 

NCondition 
= 
Wine "
." #

.0 1
Clean1 6
;6 7
wineTest 
. 

NIntensity 
= 
Wine "
." #

.0 1
Light1 6
;6 7
wineTest 
. 
Aromas 
[ 
$num 
] 
= 
wineTest %
.% &
Aroma& +
(+ ,
(, -
int- 0
)0 1
Wine1 5
.5 6
MainGategories6 D
.D E
NoseE I
,I J
(K L
intL O
)O P
WineP T
.T U
NoseGategoriesU c
.c d
Aromad i
,i j
(k l
intl o
)o p
Winep t
.t u&
AromaAndFlavourGategories	u �
.
� �
FloralFruit
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �#
FloralFruitGategories
� �
.
� �

GreenFruit
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �'
AromaAndFlavourGreenFruit
� �
.
� �

GreenApple
� �
)
� �
;
� �
wineTest 
. 
Aromas 
[ 
$num 
] 
= 
wineTest %
.% &
Aroma& +
(+ ,
(, -
int- 0
)0 1
Wine1 5
.5 6
MainGategories6 D
.D E
NoseE I
,I J
(K L
intL O
)O P
WineP T
.T U
NoseGategoriesU c
.c d
Aromad i
,i j
(k l
intl o
)o p
Winep t
.t u&
AromaAndFlavourGategories	u �
.
� �
OakOther
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� � 
OakOtherGategories
� �
.
� �
Oak
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� � 
AromaAndFlavourOak
� �
.
� �
Vanilla
� �
)
� �
;
� �
wineTest 
. 
Aromas 
[ 
$num 
] 
= 
wineTest %
.% &
Aroma& +
(+ ,
(, -
int- 0
)0 1
Wine1 5
.5 6
MainGategories6 D
.D E
NoseE I
,I J
(K L
intL O
)O P
WineP T
.T U
NoseGategoriesU c
.c d
Aromad i
,i j
(k l
intl o
)o p
Winep t
.t u&
AromaAndFlavourGategories	u �
.
� �
FloralFruit
� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �#
FloralFruitGategories
� �
.
� �

� �
,
� �
(
� �
int
� �
)
� �
Wine
� �
.
� �*
AromaAndFlavourTropicalFruit
� �
.
� �
Banana
� �
)
� �
;
� �
wineTest 
. 

PSweetness 
= 
Wine "
." #
PalateSweetness# 2
.2 3
Sweet3 8
;8 9
wineTest 
. 
PAcidity 
= 
Wine  
.  !

.. /
Low/ 2
;2 3
wineTest 
. 
PTannin 
= 
Wine 
.  
PalateTannin  ,
., -
Low- 0
;0 1
wineTest   
.   
PBody   
=   
Wine   
.   

PalateBody   (
.  ( )
Light  ) .
;  . /
wineTest"" 
."" 
Flavours"" 
["" 
$num"" 
]"" 
="" 
wineTest"" '
.""' (
Aroma""( -
(""- .
("". /
int""/ 2
)""2 3
Wine""3 7
.""7 8
MainGategories""8 F
.""F G
Palate""G M
,""M N
(""O P
int""P S
)""S T
Wine""T X
.""X Y
PalateGategories""Y i
.""i j#
FlavourCharasteristics	""j �
,
""� �
(
""� �
int
""� �
)
""� �
Wine
""� �
.
""� �'
AromaAndFlavourGategories
""� �
.
""� �
FloralFruit
""� �
,
""� �
(
""� �
int
""� �
)
""� �
Wine
""� �
.
""� �#
FloralFruitGategories
""� �
.
""� �

GreenFruit
""� �
,
""� �
(
""� �
int
""� �
)
""� �
Wine
""� �
.
""� �'
AromaAndFlavourGreenFruit
""� �
.
""� �

GreenApple
""� �
)
""� �
;
""� �
wineTest## 
.## 
Flavours## 
[## 
$num## 
]## 
=## 
wineTest## '
.##' (
Aroma##( -
(##- .
(##. /
int##/ 2
)##2 3
Wine##3 7
.##7 8
MainGategories##8 F
.##F G
Palate##G M
,##M N
(##O P
int##P S
)##S T
Wine##T X
.##X Y
PalateGategories##Y i
.##i j#
FlavourCharasteristics	##j �
,
##� �
(
##� �
int
##� �
)
##� �
Wine
##� �
.
##� �'
AromaAndFlavourGategories
##� �
.
##� �
FloralFruit
##� �
,
##� �
(
##� �
int
##� �
)
##� �
Wine
##� �
.
##� �#
FloralFruitGategories
##� �
.
##� �

DriedFruit
##� �
,
##� �
(
##� �
int
##� �
)
##� �
Wine
##� �
.
##� �'
AromaAndFlavourDriedFruit
##� �
.
##� �
Baked
##� �
)
##� �
;
##� �
wineTest$$ 
.$$ 
Flavours$$ 
[$$ 
$num$$ 
]$$ 
=$$ 
wineTest$$ '
.$$' (
Aroma$$( -
($$- .
($$. /
int$$/ 2
)$$2 3
Wine$$3 7
.$$7 8
MainGategories$$8 F
.$$F G
Palate$$G M
,$$M N
($$O P
int$$P S
)$$S T
Wine$$T X
.$$X Y
PalateGategories$$Y i
.$$i j#
FlavourCharasteristics	$$j �
,
$$� �
(
$$� �
int
$$� �
)
$$� �
Wine
$$� �
.
$$� �'
AromaAndFlavourGategories
$$� �
.
$$� �
OakOther
$$� �
,
$$� �
(
$$� �
int
$$� �
)
$$� �
Wine
$$� �
.
$$� � 
OakOtherGategories
$$� �
.
$$� �
Oak
$$� �
,
$$� �
(
$$� �
int
$$� �
)
$$� �
Wine
$$� �
.
$$� � 
AromaAndFlavourOak
$$� �
.
$$� �
Vanilla
$$� �
)
$$� �
;
$$� �
wineTest&& 
.&& 
PFinish&& 
=&& 
Wine&& 
.&&  
PalateFinish&&  ,
.&&, -
Short&&- 2
;&&2 3
wineTest(( 
.(( 
WineQuality(( 
=(( 
Wine(( #
.((# $
Quality(($ +
.((+ ,
Outstanding((, 7
;((7 8
})) 
}** ��
XC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\Wine.cs
public 
class 
Wine
{		 
public 

static 
int "
MaximumTastesAndScents ,
=- .
$num/ 0
;0 1
public

int
[
]
[
]
Aromas
=
new
int
[
MaximumTastesAndScents
]
[
]
;
public 

int 
[ 
] 
[ 
] 
Flavours 
= 
new !
int" %
[% &"
MaximumTastesAndScents& <
]< =
[= >
]> ?
;? @
private 
AppearanceClarity 
aClarity &
;& '
public 

AppearanceClarity 
AClarity %
{ 
get 
{ 
return 
aClarity 
; 
}  
set 
{ 
aClarity 
= 
value 
; 
}  !
} 
private 
AppearanceIntensity 

aIntensity  *
;* +
public 

AppearanceIntensity 

AIntensity )
{ 
get 
{ 
return 

aIntensity 
;  
}! "
set 
{ 

aIntensity 
= 
value  
;  !
}" #
} 
private&& %
AppearanceColorGategories&& %
aColorGategory&&& 4
;&&4 5
public'' 
%
AppearanceColorGategories'' $
AColorGategory''% 3
{(( 
get)) 
{)) 
return)) 
aColorGategory)) #
;))# $
}))% &
set** 
{** 
aColorGategory** 
=** 
value** $
;**$ %
}**& '
}++ 
private,, $
AppearanceWhiteWineColor,, $
aWhiteWineColor,,% 4
;,,4 5
public-- 
$
AppearanceWhiteWineColor-- #
AWhiteWineColor--$ 3
{.. 
get// 
{// 
return// 
aWhiteWineColor// $
;//$ %
}//& '
set00 
{00 
aWhiteWineColor00 
=00 
value00  %
;00% &
}00' (
}11 
private22 #
AppearanceRoseWineColor22 #
aRoseWineColor22$ 2
;222 3
public33 
#
AppearanceRoseWineColor33 "
ARoseWineColor33# 1
{44 
get55 
{55 
return55 
aRoseWineColor55 #
;55# $
}55% &
set66 
{66 
aRoseWineColor66 
=66 
value66 $
;66$ %
}66& '
}77 
private88 "
AppearanceRedWineColor88 "

;880 1
public99 
"
AppearanceRedWineColor99 !

{:: 
get;; 
{;; 
return;; 

;;;" #
};;$ %
set<< 
{<< 

=<< 
value<< #
;<<# $
}<<% &
}== 
private?? 


nCondition?? $
;??$ %
public@@ 



NCondition@@ #
{AA 
getBB 
{BB 
returnBB 

nConditionBB 
;BB  
}BB! "
setCC 
{CC 

nConditionCC 
=CC 
valueCC  
;CC  !
}CC" #
}DD 
privateFF 


nIntensityFF $
;FF$ %
publicGG 



NIntensityGG #
{HH 
getII 
{II 
returnII 

nIntensityII 
;II  
}II! "
setJJ 
{JJ 

nIntensityJJ 
=JJ 
valueJJ  
;JJ  !
}JJ" #
}KK 
privateNN %
AromaAndFlavourGategoriesNN %
[NN% &
]NN& '

=NN6 7
newNN8 ;%
AromaAndFlavourGategoriesNN< U
[NNU V"
MaximumTastesAndScentsNNV l
]NNl m
;NNm n
publicOO 
%
AromaAndFlavourGategoriesOO $
[OO$ %
]OO% &

{PP 
getQQ 
{QQ 
returnQQ 

;QQ" #
}QQ$ %
setRR 
{RR 

=RR 
valueRR #
;RR# $
}RR% &
}SS 
privateUU %
AromaAndFlavourGategoriesUU %
[UU% &
]UU& '
flavourGategoryUU( 7
=UU8 9
newUU: =%
AromaAndFlavourGategoriesUU> W
[UUW X"
MaximumTastesAndScentsUUX n
]UUn o
;UUo p
publicVV 
%
AromaAndFlavourGategoriesVV $
[VV$ %
]VV% &
FlavourGategoryVV' 6
{WW 
getXX 
{XX 
returnXX 
flavourGategoryXX $
;XX$ %
}XX& '
setYY 
{YY 
flavourGategoryYY 
=YY 
valueYY  %
;YY% &
}YY' (
}ZZ 
private]] !
FloralFruitGategories]] !
[]]! "
]]]" #
aromaFloralGategory]]$ 7
=]]8 9
new]]: =!
FloralFruitGategories]]> S
[]]S T"
MaximumTastesAndScents]]T j
]]]j k
;]]k l
public^^ 
!
FloralFruitGategories^^  
[^^  !
]^^! "
AromaFloralGategory^^# 6
{__ 
get`` 
{`` 
return`` 
aromaFloralGategory`` (
;``( )
}``* +
setaa 
{aa 
aromaFloralGategoryaa !
=aa" #
valueaa$ )
;aa) *
}aa+ ,
}bb 
privateee !
AromaAndFlavourFloralee !
[ee! "
]ee" #
aromaFloralee$ /
=ee0 1
newee2 5!
AromaAndFlavourFloralee6 K
[eeK L"
MaximumTastesAndScentseeL b
]eeb c
;eec d
publicff 
!
AromaAndFlavourFloralff  
[ff  !
]ff! "
AromaFloralff# .
{gg 
gethh 
{hh 
returnhh 
aromaFloralhh  
;hh  !
}hh" #
setii 
{ii 
aromaFloralii 
=ii 
valueii !
;ii! "
}ii# $
}jj 
privatell %
AromaAndFlavourGreenFruitll %
[ll% &
]ll& '
aromaGreenFruitll( 7
=ll8 9
newll: =%
AromaAndFlavourGreenFruitll> W
[llW X"
MaximumTastesAndScentsllX n
]lln o
;llo p
publicmm 
%
AromaAndFlavourGreenFruitmm $
[mm$ %
]mm% &
AromaGreenFruitmm' 6
{nn 
getoo 
{oo 
returnoo 
aromaGreenFruitoo $
;oo$ %
}oo& '
setpp 
{pp 
aromaGreenFruitpp 
=pp 
valuepp  %
;pp% &
}pp' (
}qq 
privatess &
AromaAndFlavourCitrusFruitss &
[ss& '
]ss' (
aromaCitrusFruitss) 9
=ss: ;
newss< ?&
AromaAndFlavourCitrusFruitss@ Z
[ssZ ["
MaximumTastesAndScentsss[ q
]ssq r
;ssr s
publictt 
&
AromaAndFlavourCitrusFruittt %
[tt% &
]tt& '
AromaCitrusFruittt( 8
{uu 
getvv 
{vv 
returnvv 
aromaCitrusFruitvv %
;vv% &
}vv' (
setww 
{ww 
aromaCitrusFruitww 
=ww  
valueww! &
;ww& '
}ww( )
}xx 
privatezz %
AromaAndFlavourStoneFruitzz %
[zz% &
]zz& '
aromaStoneFruitzz( 7
=zz8 9
newzz: =%
AromaAndFlavourStoneFruitzz> W
[zzW X"
MaximumTastesAndScentszzX n
]zzn o
;zzo p
public{{ 
%
AromaAndFlavourStoneFruit{{ $
[{{$ %
]{{% &
AromaStoneFruit{{' 6
{|| 
get}} 
{}} 
return}} 
aromaStoneFruit}} $
;}}$ %
}}}& '
set~~ 
{~~ 
aromaStoneFruit~~ 
=~~ 
value~~  %
;~~% &
}~~' (
} 
private
�� *
AromaAndFlavourTropicalFruit
�� (
[
��( )
]
��) * 
aromaTropicalFruit
��+ =
=
��> ?
new
��@ C*
AromaAndFlavourTropicalFruit
��D `
[
��` a$
MaximumTastesAndScents
��a w
]
��w x
;
��x y
public
�� 
*
AromaAndFlavourTropicalFruit
�� '
[
��' (
]
��( ) 
AromaTropicalFruit
��* <
{
�� 
get
�� 
{
�� 
return
��  
aromaTropicalFruit
�� '
;
��' (
}
��) *
set
�� 
{
�� 
aromaTropicalFruit
��  
=
��! "
value
��# (
;
��( )
}
��* +
}
�� 
private
�� %
AromaAndFlavourRedFruit
�� #
[
��# $
]
��$ %

��& 3
=
��4 5
new
��6 9%
AromaAndFlavourRedFruit
��: Q
[
��Q R$
MaximumTastesAndScents
��R h
]
��h i
;
��i j
public
�� 
%
AromaAndFlavourRedFruit
�� "
[
��" #
]
��# $

��% 2
{
�� 
get
�� 
{
�� 
return
�� 

�� "
;
��" #
}
��$ %
set
�� 
{
�� 

�� 
=
�� 
value
�� #
;
��# $
}
��% &
}
�� 
private
�� '
AromaAndFlavourBlackFruit
�� %
[
��% &
]
��& '
aromaBlackFruit
��( 7
=
��8 9
new
��: ='
AromaAndFlavourBlackFruit
��> W
[
��W X$
MaximumTastesAndScents
��X n
]
��n o
;
��o p
public
�� 
'
AromaAndFlavourBlackFruit
�� $
[
��$ %
]
��% &
AromaBlackFruit
��' 6
{
�� 
get
�� 
{
�� 
return
�� 
aromaBlackFruit
�� $
;
��$ %
}
��& '
set
�� 
{
�� 
aromaBlackFruit
�� 
=
�� 
value
��  %
;
��% &
}
��' (
}
�� 
private
�� '
AromaAndFlavourDriedFruit
�� %
[
��% &
]
��& '
aromaDriedFruit
��( 7
=
��8 9
new
��: ='
AromaAndFlavourDriedFruit
��> W
[
��W X$
MaximumTastesAndScents
��X n
]
��n o
;
��o p
public
�� 
'
AromaAndFlavourDriedFruit
�� $
[
��$ %
]
��% &
AromaDriedFruit
��' 6
{
�� 
get
�� 
{
�� 
return
�� 
aromaDriedFruit
�� $
;
��$ %
}
��& '
set
�� 
{
�� 
aromaDriedFruit
�� 
=
�� 
value
��  %
;
��% &
}
��' (
}
�� 
private
�� &
SpiceVegetableGategories
�� $
[
��$ %
]
��% &)
aromaSpiceVegetableGategory
��' B
=
��C D
new
��E H&
SpiceVegetableGategories
��I a
[
��a b$
MaximumTastesAndScents
��b x
]
��x y
;
��y z
public
�� 
&
SpiceVegetableGategories
�� #
[
��# $
]
��$ %)
AromaSpiceVegetableGategory
��& A
{
�� 
get
�� 
{
�� 
return
�� )
aromaSpiceVegetableGategory
�� 0
;
��0 1
}
��2 3
set
�� 
{
�� 
aromaSpiceVegetableGategory
�� )
=
��* +
value
��, 1
;
��1 2
}
��3 4
}
�� 
private
�� *
AromaAndFlavourUnderripeness
�� (
[
��( )
]
��) * 
aromaUnderripeness
��+ =
=
��> ?
new
��@ C*
AromaAndFlavourUnderripeness
��D `
[
��` a$
MaximumTastesAndScents
��a w
]
��w x
;
��x y
public
�� 
*
AromaAndFlavourUnderripeness
�� '
[
��' (
]
��( ) 
AromaUnderripeness
��* <
{
�� 
get
�� 
{
�� 
return
��  
aromaUnderripeness
�� '
;
��' (
}
��) *
set
�� 
{
�� 
aromaUnderripeness
��  
=
��! "
value
��# (
;
��( )
}
��* +
}
�� 
private
�� '
AromaAndFlavourHerbaceous
�� %
[
��% &
]
��& '
aromaHerbaceous
��( 7
=
��8 9
new
��: ='
AromaAndFlavourHerbaceous
��> W
[
��W X$
MaximumTastesAndScents
��X n
]
��n o
;
��o p
public
�� 
'
AromaAndFlavourHerbaceous
�� $
[
��$ %
]
��% &
AromaHerbaceous
��' 6
{
�� 
get
�� 
{
�� 
return
�� 
aromaHerbaceous
�� $
;
��$ %
}
��& '
set
�� 
{
�� 
aromaHerbaceous
�� 
=
�� 
value
��  %
;
��% &
}
��' (
}
�� 
private
�� #
AromaAndFlavourHerbal
�� !
[
��! "
]
��" #
aromaHerbal
��$ /
=
��0 1
new
��2 5#
AromaAndFlavourHerbal
��6 K
[
��K L$
MaximumTastesAndScents
��L b
]
��b c
;
��c d
public
�� 
#
AromaAndFlavourHerbal
��  
[
��  !
]
��! "
AromaHerbal
��# .
{
�� 
get
�� 
{
�� 
return
�� 
aromaHerbal
��  
;
��  !
}
��" #
set
�� 
{
�� 
aromaHerbal
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 
private
�� &
AromaAndFlavourVegetable
�� $
[
��$ %
]
��% &
aromaVegetable
��' 5
=
��6 7
new
��8 ;&
AromaAndFlavourVegetable
��< T
[
��T U$
MaximumTastesAndScents
��U k
]
��k l
;
��l m
public
�� 
&
AromaAndFlavourVegetable
�� #
[
��# $
]
��$ %
AromaVegetable
��& 4
{
�� 
get
�� 
{
�� 
return
�� 
aromaVegetable
�� #
;
��# $
}
��% &
set
�� 
{
�� 
aromaVegetable
�� 
=
�� 
value
�� $
;
��$ %
}
��& '
}
�� 
private
�� '
AromaAndFlavourSweetSpice
�� %
[
��% &
]
��& '
aromaSweetSpice
��( 7
=
��8 9
new
��: ='
AromaAndFlavourSweetSpice
��> W
[
��W X$
MaximumTastesAndScents
��X n
]
��n o
;
��o p
public
�� 
'
AromaAndFlavourSweetSpice
�� $
[
��$ %
]
��% &
AromaSweetSpice
��' 6
{
�� 
get
�� 
{
�� 
return
�� 
aromaSweetSpice
�� $
;
��$ %
}
��& '
set
�� 
{
�� 
aromaSweetSpice
�� 
=
�� 
value
��  %
;
��% &
}
��' (
}
�� 
private
�� &
SpiceVegetableGategories
�� $
[
��$ %
]
��% &
aromaPungentSpice
��' 8
=
��9 :
new
��; >&
SpiceVegetableGategories
��? W
[
��W X$
MaximumTastesAndScents
��X n
]
��n o
;
��o p
public
�� 
&
SpiceVegetableGategories
�� #
[
��# $
]
��$ %
AromaPungentSpice
��& 7
{
�� 
get
�� 
{
�� 
return
�� 
aromaPungentSpice
�� &
;
��& '
}
��( )
set
�� 
{
�� 
aromaPungentSpice
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 
private
��  
OakOtherGategories
�� 
[
�� 
]
��  #
aromaOakOtherGategory
��! 6
=
��7 8
new
��9 < 
OakOtherGategories
��= O
[
��O P$
MaximumTastesAndScents
��P f
]
��f g
;
��g h
public
�� 
 
OakOtherGategories
�� 
[
�� 
]
�� #
AromaOakOtherGategory
��  5
{
�� 
get
�� 
{
�� 
return
�� #
aromaOakOtherGategory
�� *
;
��* +
}
��, -
set
�� 
{
�� 
aromaOakOtherGategory
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 
private
�� 1
#AromaAndFlavourSimplicityNeutrality
�� /
[
��/ 0
]
��0 1'
aromaSimplicityNeutrality
��2 K
=
��L M
new
��N Q1
#AromaAndFlavourSimplicityNeutrality
��R u
[
��u v%
MaximumTastesAndScents��v �
]��� �
;��� �
public
�� 
1
#AromaAndFlavourSimplicityNeutrality
�� .
[
��. /
]
��/ 0'
AromaSimplicityNeutrality
��1 J
{
�� 
get
�� 
{
�� 
return
�� '
aromaSimplicityNeutrality
�� .
;
��. /
}
��0 1
set
�� 
{
�� 
aromaSimplicityNeutrality
�� '
=
��( )
value
��* /
;
��/ 0
}
��1 2
}
�� 
private
�� &
AromaAndFlavourAutolytic
�� $
[
��$ %
]
��% &
aromaAutolytic
��' 5
=
��6 7
new
��8 ;&
AromaAndFlavourAutolytic
��< T
[
��T U$
MaximumTastesAndScents
��U k
]
��k l
;
��l m
public
�� 
&
AromaAndFlavourAutolytic
�� #
[
��# $
]
��$ %
AromaAutolytic
��& 4
{
�� 
get
�� 
{
�� 
return
�� 
aromaAutolytic
�� #
;
��# $
}
��% &
set
�� 
{
�� 
aromaAutolytic
�� 
=
�� 
value
�� $
;
��$ %
}
��& '
}
�� 
private
�� "
AromaAndFlavourDairy
��  
[
��  !
]
��! "

aromaDairy
��# -
=
��. /
new
��0 3"
AromaAndFlavourDairy
��4 H
[
��H I$
MaximumTastesAndScents
��I _
]
��_ `
;
��` a
public
�� 
"
AromaAndFlavourDairy
�� 
[
��  
]
��  !

AromaDairy
��" ,
{
�� 
get
�� 
{
�� 
return
�� 

aromaDairy
�� 
;
��  
}
��! "
set
�� 
{
�� 

aromaDairy
�� 
=
�� 
value
��  
;
��  !
}
��" #
}
�� 
private
��  
AromaAndFlavourOak
�� 
[
�� 
]
��  
aromaOak
��! )
=
��* +
new
��, / 
AromaAndFlavourOak
��0 B
[
��B C$
MaximumTastesAndScents
��C Y
]
��Y Z
;
��Z [
public
�� 
 
AromaAndFlavourOak
�� 
[
�� 
]
�� 
AromaOak
��  (
{
�� 
get
�� 
{
�� 
return
�� 
aromaOak
�� 
;
�� 
}
��  
set
�� 
{
�� 
aromaOak
�� 
=
�� 
value
�� 
;
�� 
}
��  !
}
�� 
private
�� #
AromaAndFlavourKernel
�� !
[
��! "
]
��" #
aromaKernel
��$ /
=
��0 1
new
��2 5#
AromaAndFlavourKernel
��6 K
[
��K L$
MaximumTastesAndScents
��L b
]
��b c
;
��c d
public
�� 
#
AromaAndFlavourKernel
��  
[
��  !
]
��! "
AromaKernel
��# .
{
�� 
get
�� 
{
�� 
return
�� 
aromaKernel
��  
;
��  !
}
��" #
set
�� 
{
�� 
aromaKernel
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 
private
�� #
AromaAndFlavourAnimal
�� !
[
��! "
]
��" #
aromaAnimal
��$ /
=
��0 1
new
��2 5#
AromaAndFlavourAnimal
��6 K
[
��K L$
MaximumTastesAndScents
��L b
]
��b c
;
��c d
public
�� 
#
AromaAndFlavourAnimal
��  
[
��  !
]
��! "
AromaAnimal
��# .
{
�� 
get
�� 
{
�� 
return
�� 
aromaAnimal
��  
;
��  !
}
��" #
set
�� 
{
�� 
aromaAnimal
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 
private
�� %
AromaAndFlavourMaturity
�� #
[
��# $
]
��$ %

��& 3
=
��4 5
new
��6 9%
AromaAndFlavourMaturity
��: Q
[
��Q R$
MaximumTastesAndScents
��R h
]
��h i
;
��i j
public
�� 
%
AromaAndFlavourMaturity
�� "
[
��" #
]
��# $

��% 2
{
�� 
get
�� 
{
�� 
return
�� 

�� "
;
��" #
}
��$ %
set
�� 
{
�� 

�� 
=
�� 
value
�� #
;
��# $
}
��% &
}
�� 
private
�� $
AromaAndFlavourMineral
�� "
[
��" #
]
��# $
aromaMineral
��% 1
=
��2 3
new
��4 7$
AromaAndFlavourMineral
��8 N
[
��N O$
MaximumTastesAndScents
��O e
]
��e f
;
��f g
public
�� 
$
AromaAndFlavourMineral
�� !
[
��! "
]
��" #
AromaMineral
��$ 0
{
�� 
get
�� 
{
�� 
return
�� 
aromaMineral
�� !
;
��! "
}
��# $
set
�� 
{
�� 
aromaMineral
�� 
=
�� 
value
�� "
;
��" #
}
��$ %
}
�� 
private
�� 
PalateSweetness
�� 

pSweetness
�� &
;
��& '
public
�� 

PalateSweetness
�� 

PSweetness
�� %
{
�� 
get
�� 
{
�� 
return
�� 

pSweetness
�� 
;
��  
}
��! "
set
�� 
{
�� 

pSweetness
�� 
=
�� 
value
��  
;
��  !
}
��" #
}
�� 
private
�� 

�� 
pAcidity
�� "
;
��" #
public
�� 


�� 
PAcidity
�� !
{
�� 
get
�� 
{
�� 
return
�� 
pAcidity
�� 
;
�� 
}
��  
set
�� 
{
�� 
pAcidity
�� 
=
�� 
value
�� 
;
�� 
}
��  !
}
�� 
private
�� 
PalateTannin
�� 
pTannin
��  
;
��  !
public
�� 

PalateTannin
�� 
PTannin
�� 
{
�� 
get
�� 
{
�� 
return
�� 
pTannin
�� 
;
�� 
}
�� 
set
�� 
{
�� 
pTannin
�� 
=
�� 
value
�� 
;
�� 
}
��  
}
�� 
private
�� 

PalateBody
�� 
pBody
�� 
;
�� 
public
�� 


PalateBody
�� 
PBody
�� 
{
�� 
get
�� 
{
�� 
return
�� 
pBody
�� 
;
�� 
}
�� 
set
�� 
{
�� 
pBody
�� 
=
�� 
value
�� 
;
�� 
}
�� 
}
�� 
private
�� 
PalateFinish
�� 
pFinish
��  
;
��  !
public
�� 

PalateFinish
�� 
PFinish
�� 
{
�� 
get
�� 
{
�� 
return
�� 
pFinish
�� 
;
�� 
}
�� 
set
�� 
{
�� 
pFinish
�� 
=
�� 
value
�� 
;
�� 
}
��  
}
�� 
private
�� 
Quality
�� 
wineQuality
�� 
;
��  
public
�� 

Quality
�� 
WineQuality
�� 
{
�� 
get
�� 
{
�� 
return
�� 
wineQuality
��  
;
��  !
}
��" #
set
�� 
{
�� 
wineQuality
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 
public
�� 

enum
�� 
MainGategories
�� 
{
�� 

Appearance
�� 
,
�� 
Nose
�� 
,
�� 
Palate
�� 
,
�� 
Conclusions
�� 
}
�� 
;
�� 
public
�� 

enum
�� "
AppearanceGategories
�� $
{
�� 
Clarity
�� 
,
�� 
	Intensity
�� 
,
�� 
Color
�� 
}
�� 
public
�� 

enum
�� 
AppearanceClarity
�� !
{
�� 
Clear
�� 
,
��
Hazy
�� 
}
�� 
;
�� 
public
�� 

enum
�� !
AppearanceIntensity
�� #
{
�� 
Pale
�� 
,
�� 
Medium
�� 
,
�� 
Deep
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AppearanceColorGategories
�� )
{
�� 
WhiteWineColour
�� 
,
�� 
RoseWineColour
�� 
,
�� 

�� 
}
�� 
;
�� 
public
�� 

enum
�� &
AppearanceWhiteWineColor
�� (
{
�� 
Lemon
�� 
,
��
Gold
�� 
,
�� 
Amber
�� 
}
�� 
;
�� 
public
�� 

enum
�� %
AppearanceRoseWineColor
�� '
{
�� 
Pink
�� 
,
�� 
Salmon
�� 
,
�� 
Orange
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
AppearanceRedWineColor
�� &
{
�� 
Purple
�� 
,
�� 
Ruby
�� 
,
�� 
Garnet
�� 
,
�� 
Tawny
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
NoseGategories
�� 
{
�� 
	Condition
�� 
,
�� 
	Intensity
�� 
,
�� 
Aroma
�� 
}
�� 
;
�� 
public
�� 

enum
�� 

�� 
{
�� 
Clean
�� 
,
��
Unclean
�� 
}
�� 
;
�� 
public
�� 

enum
�� 

�� 
{
�� 
Light
�� 
,
��
Medium
�� 
,
�� 
Deep
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourGategories
�� )
{
�� 
FloralFruit
�� 
,
�� 
SpiceVegetable
�� 
,
�� 
OakOther
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
FloralFruitGategories
�� %
{
�� 
Floral
�� 
,
�� 

GreenFruit
�� 
,
�� 
CitrusFruit
�� 
,
�� 

StoneFruit
�� 
,
�� 

�� 
,
�� 
RedFruit
�� 
,
�� 

BlackFruit
�� 
,
�� 

DriedFruit
�� 
}
�� 
;
�� 
public
�� 

enum
�� &
SpiceVegetableGategories
�� (
{
�� 

�� 
,
�� 

Herbaceous
�� 
,
�� 
Herbal
�� 
,
�� 
	Vegetable
�� 
,
�� 

SweetSpice
�� 
,
�� 
PungentSpice
�� 
}
�� 
;
�� 
public
�� 

enum
��  
OakOtherGategories
�� "
{
�� "
SimplicityNeutrality
�� 
,
�� 
	Autolytic
�� 
,
�� 
Dairy
�� 
,
��
Oak
�� 
,
�� 
Kernel
�� 
,
�� 
Animal
�� 
,
�� 
Maturity
�� 
,
�� 
Mineral
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourFloral
�� %
{
�� 
Blossom
�� 
,
�� 
Rose
�� 
,
�� 
Violet
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourGreenFruit
�� )
{
�� 

GreenApple
�� 
,
�� 
RedApple
�� 
,
�� 

Gooseberry
�� 
,
�� 
Pear
�� 
,
�� 
Grape
�� 
}
�� 
;
�� 
public
�� 

enum
�� (
AromaAndFlavourCitrusFruit
�� *
{
�� 

Grapefruit
�� 
,
�� 
Lemon
�� 
,
��
	LimeJuice
�� 
,
�� 
LimeZest
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourStoneFruit
�� )
{
�� 
Peach
�� 
,
��
Apricot
�� 
,
�� 
	Nectarine
�� 
}
�� 
;
�� 
public
�� 

enum
�� *
AromaAndFlavourTropicalFruit
�� ,
{
�� 
Banana
�� 
,
�� 
Lychee
�� 
,
�� 
Mango
�� 
,
��
Melon
�� 
,
��
PassionFruit
�� 
,
�� 
	Pineapple
�� 
}
�� 
;
�� 
public
�� 

enum
�� %
AromaAndFlavourRedFruit
�� '
{
�� 

Redcurrant
�� 
,
�� 
	Cranberry
�� 
,
�� 
	Raspberry
�� 
,
�� 

Strawberry
�� 
,
�� 
	RedCherry
�� 
,
�� 
Plum
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourBlackFruit
�� )
{
�� 
Blackcurrant
�� 
,
�� 

Blackberry
�� 
,
�� 
	Blueberry
�� 
,
�� 
BlackCherry
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourDriedFruit
�� )
{
�� 
Fig
�� 
,
�� 
Prune
�� 
,
��
Raisin
�� 
,
�� 
Sultana
�� 
,
�� 
Kirsch
�� 
,
�� 
	Jamminess
�� 
,
�� 
Cooked
�� 
,
�� 
Baked
�� 
,
��
StewedFruits
�� 
,
�� 
PreservedFruits
�� 
}
�� 
;
�� 
public
�� 

enum
�� *
AromaAndFlavourUnderripeness
�� ,
{
�� 
GreenBellPepper
�� 
,
�� 
Grass
�� 
,
��
WhitePepper
�� 
,
�� 
	Leafiness
�� 
,
�� 
Tomato
�� 
,
�� 
Potato
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourHerbaceous
�� )
{
�� 
Grass
�� 
,
��
	Asparagus
�� 
,
�� 
BlackcurrantLeaf
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourHerbal
�� %
{
�� 

Eucalyptus
�� 
,
�� 
Mint
�� 
,
�� 
	Medicinal
�� 
,
�� 
Lavender
�� 
,
�� 
Fennel
�� 
,
�� 
Dill
�� 
}
�� 
;
�� 
public
�� 

enum
�� &
AromaAndFlavourVegetable
�� (
{
�� 
Cabbage
�� 
,
�� 
Peas
�� 
,
�� 
Beans
�� 
,
��

BlackOlive
�� 
,
�� 

GreenOlive
�� 
}
�� 
;
�� 
public
�� 

enum
�� '
AromaAndFlavourSweetSpice
�� )
{
�� 
Cinnamon
�� 
,
�� 
Cloves
�� 
,
�� 
Ginger
�� 
,
�� 
Nutmeg
�� 
,
�� 
Vanilla
�� 
}
�� 
;
�� 
public
�� 

enum
�� )
AromaAndFlavourPungentSpice
�� +
{
�� 
BlackPepper
�� 
,
�� 
WhitePepper
�� 
,
�� 
	Liquorice
�� 
,
�� 
Juniper
�� 
}
�� 
;
�� 
public
�� 

enum
�� 1
#AromaAndFlavourSimplicityNeutrality
�� 3
{
�� 
Simple
�� 
,
�� 
Neutral
�� 
,
�� 

Indistinct
�� 
}
�� 
;
�� 
public
�� 

enum
�� &
AromaAndFlavourAutolytic
�� (
{
�� 
Yeast
�� 
,
��
Biscuit
�� 
,
�� 
Bread
�� 
,
��
Toast
�� 
,
��
Pastry
�� 
,
�� 
Lees
�� 
}
�� 
;
�� 
public
�� 

enum
�� "
AromaAndFlavourDairy
�� $
{
�� 
Butter
�� 
,
�� 
Cheese
�� 
,
�� 
Cream
�� 
,
��
Yoghurt
�� 
}
�� 
;
�� 
public
�� 

enum
��  
AromaAndFlavourOak
�� "
{
�� 
Vanilla
�� 
,
�� 
Toast
�� 
,
��
Cedar
�� 
,
��
CharredWood
�� 
,
�� 
Smoke
�� 
,
��
Resinous
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourKernel
�� %
{
�� 
Almond
�� 
,
�� 
Coconut
�� 
,
�� 
HazelNut
�� 
,
�� 
Walnut
�� 
,
�� 

Chocholate
�� 
,
�� 
Coffee
�� 
}
�� 
;
�� 
public
�� 

enum
�� #
AromaAndFlavourAnimal
�� %
{
�� 
Leather
�� 
,
�� 
Meaty
�� 
,
��
Farmyard
�� 
}
�� 
;
�� 
public
�� 

enum
�� %
AromaAndFlavourMaturity
�� '
{
�� 
Vegetal
�� 
,
�� 
Mushroom
�� 
,
�� 
Hay
�� 
,
�� 
	WetLeaves
�� 
,
�� 
ForestFloot
�� 
,
�� 
Game
�� 
,
�� 
Savory
�� 
,
�� 
Tobacco
�� 
,
�� 
Cedar
�� 
,
��
Honey
�� 
,
��
Cereal
�� 
}
�� 
;
�� 
public
�� 

enum
�� $
AromaAndFlavourMineral
�� &
{
�� 
Earth
�� 
,
��
Petrol
�� 
,
�� 
Rubber
�� 
,
�� 
Tar
�� 
,
�� 
Stony
�� 
,
��
Steely
�� 
,
�� 
WetWool
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateGategories
��  
{
�� 
	Sweetness
�� 
,
�� 
Acidity
�� 
,
�� 
Tannin
�� 
,
�� 
Body
�� 
,
�� 
FlavourCharasteristics
�� 
,
�� 
Finish
�� 
,
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateSweetness
�� 
{
�� 
Dry
�� 
,
�� 
OffDry
�� 
,
�� 
Medium
�� 
,
�� 
Sweet
�� 
}
�� 
;
�� 
public
�� 

enum
�� 

�� 
{
�� 
Low
�� 
,
�� 
Medium
�� 
,
�� 
High
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateTannin
�� 
{
�� 
Low
�� 
,
�� 
Medium
�� 
,
�� 
High
�� 
}
�� 
;
�� 
public
�� 

enum
�� 

PalateBody
�� 
{
�� 
Light
�� 
,
��
Medium
�� 
,
�� 
Full
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
PalateFinish
�� 
{
�� 
Short
�� 
,
��
Medium
�� 
,
�� 
Long
�� 
}
�� 
;
�� 
public
�� 

enum
�� 
Quality
�� 
{
�� 
Faulty
�� 
,
�� 
Poor
�� 
,
�� 

Acceptable
�� 
,
�� 
Good
�� 
,
�� 
VeryGood
�� 
,
�� 
Outstanding
�� 
}
�� 
;
�� 
public
�� 

int
�� 
[
�� 
]
�� 
[
�� 
]
�� 
GetMatrixes
�� 
(
��  
)
��  !
{
�� 
int
�� 
[
�� 
]
�� 
[
��
]
�� 
ComparisonMatrix
��  
=
��! "
new
��# &
int
��' *
[
��* +
$num
��+ -
]
��- .
[
��. /
]
��/ 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5

Appearance
��5 ?
;
��? @
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &"
AppearanceGategories
��& :
.
��: ;
Clarity
��; B
;
��B C
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
AClarity
��& .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5

Appearance
��5 ?
;
��? @
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &"
AppearanceGategories
��& :
.
��: ;
	Intensity
��; D
;
��D E
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

AIntensity
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
switch
�� 
(
�� 
AColorGategory
�� 
)
�� 
{
�� 	
case
�� '
AppearanceColorGategories
�� *
.
��* +
WhiteWineColour
��+ :
:
��: ;
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
MainGategories
��. <
.
��< =

Appearance
��= G
;
��G H
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- ."
AppearanceGategories
��. B
.
��B C
Color
��C H
;
��H I
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .'
AppearanceColorGategories
��. G
.
��G H
WhiteWineColour
��H W
;
��W X
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
AWhiteWineColor
��. =
;
��= >
break
�� 
;
�� 
case
�� '
AppearanceColorGategories
�� *
.
��* +
RoseWineColour
��+ 9
:
��9 :
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
MainGategories
��. <
.
��< =

Appearance
��= G
;
��G H
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- ."
AppearanceGategories
��. B
.
��B C
Color
��C H
;
��H I
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .'
AppearanceColorGategories
��. G
.
��G H
RoseWineColour
��H V
;
��V W
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
ARoseWineColor
��. <
;
��< =
break
�� 
;
�� 
case
�� '
AppearanceColorGategories
�� *
.
��* +

��+ 8
:
��8 9
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .
MainGategories
��. <
.
��< =

Appearance
��= G
;
��G H
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- ."
AppearanceGategories
��. B
.
��B C
Color
��C H
;
��H I
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .'
AppearanceColorGategories
��. G
.
��G H

��H U
;
��U V
ComparisonMatrix
��  
[
��  !
$num
��! "
]
��" #
[
��# $
$num
��$ %
]
��% &
=
��' (
(
��) *
int
��* -
)
��- .

��. ;
;
��; <
break
�� 
;
�� 
}
�� 	
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Nose
��5 9
;
��9 :
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
NoseGategories
��& 4
.
��4 5
	Condition
��5 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

NCondition
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Nose
��5 9
;
��9 :
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
NoseGategories
��& 4
.
��4 5
	Intensity
��5 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

NIntensity
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Aromas
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Aromas
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Aromas
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Palate
��5 ;
;
��; <
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
PalateGategories
��& 6
.
��6 7
	Sweetness
��7 @
;
��@ A
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &

PSweetness
��& 0
;
��0 1
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� !
int
��" %
[
��% &
$num
��& '
]
��' (
;
��( )
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
MainGategories
��& 4
.
��4 5
Palate
��5 ;
;
��; <
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
PalateGategories
��& 6
.
��6 7
Acidity
��7 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  
(
��! "
int
��" %
)
��% &
PAcidity
��& .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Palate
��6 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PalateGategories
��' 7
.
��7 8
Tannin
��8 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PTannin
��' .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Palate
��6 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PalateGategories
��' 7
.
��7 8
Body
��8 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PBody
��' ,
;
��, -
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Flavours
�� '
[
��' (
$num
��( )
]
��) *
;
��* +
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Flavours
�� '
[
��' (
$num
��( )
]
��) *
;
��* +
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Flavours
�� '
[
��' (
$num
��( )
]
��) *
;
��* +
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Palate
��6 <
;
��< =
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PalateGategories
��' 7
.
��7 8
Finish
��8 >
;
��> ?
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
PFinish
��' .
;
��. /
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� "
int
��# &
[
��& '
$num
��' (
]
��( )
;
��) *
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
MainGategories
��' 5
.
��5 6
Conclusions
��6 A
;
��A B
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
$num
��" #
;
��# $
ComparisonMatrix
�� 
[
�� 
$num
�� 
]
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
(
��" #
int
��# &
)
��& '
WineQuality
��' 2
;
��2 3
return
�� 
ComparisonMatrix
�� 
;
��  
}
�� 
public
�� 

int
�� 
[
�� 
]
�� 
Aroma
�� 
(
�� 
int
�� 
MainGategory
�� (
,
��( )
int
��* -
SecondaryGategory
��. ?
,
��? @
int
��A D!
AromaFlavorGategory
��E X
,
��X Y
int
��Z ]$
AromaFlavorSubGategory
��^ t
,
��t u
int
��v y

FinalValue��z �
)��� �
{
�� 
int
�� 
[
�� 
]
�� 
temp
�� 
=
�� 
new
�� 
int
�� 
[
�� 
$num
�� 
]
�� 
;
��  
if
�� 

(
�� 
MainGategory
�� 
==
�� 
(
�� 
int
��  
)
��  !
MainGategories
��! /
.
��/ 0
Nose
��0 4
||
��5 7
MainGategory
��8 D
==
��E G
(
��H I
int
��I L
)
��L M
MainGategories
��M [
.
��[ \
Palate
��\ b
)
��b c
temp
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
MainGategory
�� "
;
��" #
if
�� 

(
�� 
SecondaryGategory
�� 
==
��  
(
��! "
int
��" %
)
��% &
NoseGategories
��& 4
.
��4 5
Aroma
��5 :
||
��; =
SecondaryGategory
��> O
==
��P R
(
��S T
int
��T W
)
��W X
PalateGategories
��X h
.
��h i$
FlavourCharasteristics
��i 
)�� �
temp
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
SecondaryGategory
�� '
;
��' (
if
�� 

(
�� 
Enum
�� 
.
�� 
	GetValues
�� 
(
�� 
typeof
�� !
(
��! "'
AromaAndFlavourGategories
��" ;
)
��; <
)
��< =
.
��= >
Length
��> D
>
��E F!
AromaFlavorGategory
��G Z
)
��Z [
temp
�� 
[
�� 
$num
�� 
]
�� 
=
�� !
AromaFlavorGategory
�� )
;
��) *
switch
�� 
(
�� 
temp
�� 
[
�� 
$num
�� 
]
�� 
)
�� 
{
�� 	
case
�� 
(
�� 
int
�� 
)
�� '
AromaAndFlavourGategories
�� /
.
��/ 0
FloralFruit
��0 ;
:
��; <
if
�� 
(
�� 
Enum
�� 
.
�� 
	GetValues
�� "
(
��" #
typeof
��# )
(
��) *#
FloralFruitGategories
��* ?
)
��? @
)
��@ A
.
��A B
Length
��B H
>
��I J$
AromaFlavorSubGategory
��K a
)
��a b
temp
�� 
[
�� 
$num
�� 
]
�� 
=
�� $
AromaFlavorSubGategory
�� 4
;
��4 5
switch
�� 
(
�� 
temp
�� 
[
�� 
$num
�� 
]
�� 
)
��  
{
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4
Floral
��4 :
:
��: ;
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2#
AromaAndFlavourFloral
��2 G
)
��G H
)
��H I
.
��I J
Length
��J P
>
��Q R

FinalValue
��S ]
)
��] ^
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4

GreenFruit
��4 >
:
��> ?
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2'
AromaAndFlavourGreenFruit
��2 K
)
��K L
)
��L M
.
��M N
Length
��N T
>
��U V

FinalValue
��W a
)
��a b
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4
CitrusFruit
��4 ?
:
��? @
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2(
AromaAndFlavourCitrusFruit
��2 L
)
��L M
)
��M N
.
��N O
Length
��O U
>
��V W

FinalValue
��X b
)
��b c
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4

StoneFruit
��4 >
:
��> ?
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2'
AromaAndFlavourStoneFruit
��2 K
)
��K L
)
��L M
.
��M N
Length
��N T
>
��U V

FinalValue
��W a
)
��a b
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4

��4 A
:
��A B
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2*
AromaAndFlavourTropicalFruit
��2 N
)
��N O
)
��O P
.
��P Q
Length
��Q W
>
��X Y

FinalValue
��Z d
)
��d e
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4
RedFruit
��4 <
:
��< =
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2%
AromaAndFlavourRedFruit
��2 I
)
��I J
)
��J K
.
��K L
Length
��L R
>
��S T

FinalValue
��U _
)
��_ `
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4

BlackFruit
��4 >
:
��> ?
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2'
AromaAndFlavourBlackFruit
��2 K
)
��K L
)
��L M
.
��M N
Length
��N T
>
��U V

FinalValue
��W a
)
��a b
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� #
FloralFruitGategories
�� 3
.
��3 4

DriedFruit
��4 >
:
��> ?
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2'
AromaAndFlavourDriedFruit
��2 K
)
��K L
)
��L M
.
��M N
Length
��N T
>
��U V

FinalValue
��W a
)
��a b
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
}
�� 
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� '
AromaAndFlavourGategories
�� /
.
��/ 0
SpiceVegetable
��0 >
:
��> ?
if
�� 
(
�� 
Enum
�� 
.
�� 
	GetValues
�� "
(
��" #
typeof
��# )
(
��) *&
SpiceVegetableGategories
��* B
)
��B C
)
��C D
.
��D E
Length
��E K
>
��L M$
AromaFlavorSubGategory
��N d
)
��d e
temp
�� 
[
�� 
$num
�� 
]
�� 
=
�� $
AromaFlavorSubGategory
�� 4
;
��4 5
switch
�� 
(
�� 
temp
�� 
[
�� 
$num
�� 
]
�� 
)
��  
{
�� 
case
�� 
(
�� 
int
�� 
)
�� &
SpiceVegetableGategories
�� 6
.
��6 7

��7 D
:
��D E
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2*
AromaAndFlavourUnderripeness
��2 N
)
��N O
)
��O P
.
��P Q
Length
��Q W
>
��X Y

FinalValue
��Z d
)
��d e
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� &
SpiceVegetableGategories
�� 6
.
��6 7

Herbaceous
��7 A
:
��A B
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2'
AromaAndFlavourHerbaceous
��2 K
)
��K L
)
��L M
.
��M N
Length
��N T
>
��U V

FinalValue
��W a
)
��a b
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� &
SpiceVegetableGategories
�� 6
.
��6 7
Herbal
��7 =
:
��= >
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2#
AromaAndFlavourHerbal
��2 G
)
��G H
)
��H I
.
��I J
Length
��J P
>
��Q R

FinalValue
��S ]
)
��] ^
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� &
SpiceVegetableGategories
�� 6
.
��6 7
	Vegetable
��7 @
:
��@ A
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2&
AromaAndFlavourVegetable
��2 J
)
��J K
)
��K L
.
��L M
Length
��M S
>
��T U

FinalValue
��V `
)
��` a
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� &
SpiceVegetableGategories
�� 6
.
��6 7

SweetSpice
��7 A
:
��A B
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2'
AromaAndFlavourSweetSpice
��2 K
)
��K L
)
��L M
.
��M N
Length
��N T
>
��U V

FinalValue
��W a
)
��a b
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� &
SpiceVegetableGategories
�� 6
.
��6 7
PungentSpice
��7 C
:
��C D
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2)
AromaAndFlavourPungentSpice
��2 M
)
��M N
)
��N O
.
��O P
Length
��P V
>
��W X

FinalValue
��Y c
)
��c d
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
}
�� 
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� '
AromaAndFlavourGategories
�� /
.
��/ 0
OakOther
��0 8
:
��8 9
if
�� 
(
�� 
Enum
�� 
.
�� 
	GetValues
�� "
(
��" #
typeof
��# )
(
��) * 
OakOtherGategories
��* <
)
��< =
)
��= >
.
��> ?
Length
��? E
>
��F G$
AromaFlavorSubGategory
��H ^
)
��^ _
temp
�� 
[
�� 
$num
�� 
]
�� 
=
�� $
AromaFlavorSubGategory
�� 4
;
��4 5
switch
�� 
(
�� 
temp
�� 
[
�� 
$num
�� 
]
�� 
)
��  
{
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1"
SimplicityNeutrality
��1 E
:
��E F
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 21
#AromaAndFlavourSimplicityNeutrality
��2 U
)
��U V
)
��V W
.
��W X
Length
��X ^
>
��_ `

FinalValue
��a k
)
��k l
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1
	Autolytic
��1 :
:
��: ;
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2&
AromaAndFlavourAutolytic
��2 J
)
��J K
)
��K L
.
��L M
Length
��M S
>
��T U

FinalValue
��V `
)
��` a
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1
Dairy
��1 6
:
��6 7
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2"
AromaAndFlavourDairy
��2 F
)
��F G
)
��G H
.
��H I
Length
��I O
>
��P Q

FinalValue
��R \
)
��\ ]
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1
Oak
��1 4
:
��4 5
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2 
AromaAndFlavourOak
��2 D
)
��D E
)
��E F
.
��F G
Length
��G M
>
��N O

FinalValue
��P Z
)
��Z [
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1
Kernel
��1 7
:
��7 8
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2#
AromaAndFlavourKernel
��2 G
)
��G H
)
��H I
.
��I J
Length
��J P
>
��Q R

FinalValue
��S ]
)
��] ^
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1
Animal
��1 7
:
��7 8
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2#
AromaAndFlavourAnimal
��2 G
)
��G H
)
��H I
.
��I J
Length
��J P
>
��Q R

FinalValue
��S ]
)
��] ^
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1
Maturity
��1 9
:
��9 :
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2%
AromaAndFlavourMaturity
��2 I
)
��I J
)
��J K
.
��K L
Length
��L R
>
��S T

FinalValue
��U _
)
��_ `
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
��  
OakOtherGategories
�� 0
.
��0 1
Mineral
��1 8
:
��8 9
if
�� 
(
�� 
Enum
��  
.
��  !
	GetValues
��! *
(
��* +
typeof
��+ 1
(
��1 2$
AromaAndFlavourMineral
��2 H
)
��H I
)
��I J
.
��J K
Length
��K Q
>
��R S

FinalValue
��T ^
)
��^ _
temp
��  
[
��  !
$num
��! "
]
��" #
=
��$ %

FinalValue
��& 0
;
��0 1
break
�� 
;
�� 
}
�� 
break
�� 
;
�� 
}
�� 	
return
�� 
temp
�� 
;
�� 
}
�� 
public
�� 

void
�� 
Color
�� 
(
�� '
AppearanceColorGategories
�� 0
acg
��1 4
,
��4 5
int
��6 9%
ColorGatecoryColorAsInt
��: Q
)
��Q R
{
�� 
AColorGategory
�� 
=
�� 
acg
�� 
;
�� 
switch
�� 
(
�� 
acg
�� 
)
�� 
{
�� 	
case
�� '
AppearanceColorGategories
�� *
.
��* +
WhiteWineColour
��+ :
:
��: ;
if
�� 
(
�� 
Enum
�� 
.
�� 
	GetValues
�� "
(
��" #
typeof
��# )
(
��) *&
AppearanceWhiteWineColor
��* B
)
��B C
)
��C D
.
��D E
Length
��E K
>
��L M%
ColorGatecoryColorAsInt
��N e
)
��e f
AWhiteWineColor
�� #
=
��$ %
(
��& '&
AppearanceWhiteWineColor
��' ?
)
��? @%
ColorGatecoryColorAsInt
��@ W
;
��W X
break
�� 
;
�� 
case
�� '
AppearanceColorGategories
�� *
.
��* +
RoseWineColour
��+ 9
:
��9 :
if
�� 
(
�� 
Enum
�� 
.
�� 
	GetValues
�� "
(
��" #
typeof
��# )
(
��) *%
AppearanceRoseWineColor
��* A
)
��A B
)
��B C
.
��C D
Length
��D J
>
��K L%
ColorGatecoryColorAsInt
��M d
)
��d e
ARoseWineColor
�� "
=
��# $
(
��% &%
AppearanceRoseWineColor
��& =
)
��= >%
ColorGatecoryColorAsInt
��> U
;
��U V
break
�� 
;
�� 
case
�� '
AppearanceColorGategories
�� *
.
��* +

��+ 8
:
��8 9
if
�� 
(
�� 
Enum
�� 
.
�� 
	GetValues
�� "
(
��" #
typeof
��# )
(
��) *$
AppearanceRedWineColor
��* @
)
��@ A
)
��A B
.
��B C
Length
��C I
>
��J K%
ColorGatecoryColorAsInt
��L c
)
��c d

�� !
=
��" #
(
��$ %$
AppearanceRedWineColor
��% ;
)
��; <%
ColorGatecoryColorAsInt
��< S
;
��S T
break
�� 
;
�� 
}
�� 	
}
�� 
public
�� 

void
�� 
CompareWines
�� 
(
�� 
Wine
�� !
wine
��" &
)
��& '
{
�� 
}
�� 
}�� �
`C:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\cpExitButton.cs
public 
class 
cpExitButton
: 

,) * 
IPointerClickHandler+ ?
{ 

cp 
; 
void 
Start	 
( 
) 
{
cp 

= 

gameObject
. 
	transform !
.! "
parent" (
.( )
GetComponent) 5
<5 6

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
`C:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\cpFarmButton.cs
public 
class 
cpFarmButton
: 

,) * 
IPointerClickHandler+ ?
{ 

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

gameObject
. 
	transform !
.! "
parent" (
.( )
parent) /
./ 0
GetComponent0 <
<< =

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
fC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\cpRestaurantButton.cs
public 
class 
cpRestaurantButton
:  !

,/ 0 
IPointerClickHandler1 E
{ 

cp 
; 
void 
Start	 
( 
) 
{
cp 

= 

gameObject
. 
	transform !
.! "
parent" (
.( )
parent) /
./ 0
GetComponent0 <
<< =

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
]C:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\CustomerSystem\tempTouch.cs
public 
class 
	tempTouch
: 

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
{
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
{ 
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
} 
} 	
else 
if
( 
platform 
== 
RuntimePlatform ,
., -

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
{ 

checkTouch 
( 
Input  
.  !

). /
;/ 0
} 
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
qC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\Scene transitionit ja kamera\CurtainControls.cs
public 
class 
CurtainControls
: 

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
Color
curtainColor
 
;
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
{ZZ 
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
}aa 
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
qC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\Scene transitionit ja kamera\kameracontrolli.cs
public 
class 
kameracontrolli
: 

{- .
public 

Camera 

farmCamera 
, 

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
go

=

GameObject
.
FindGameObjectWithTag
(
$str
)
;
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
TC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\ShopSystem\Shop.cs
public		 
class		 
Shop		
:		 

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
items 
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
( 
int
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
=,, 
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
float55 
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
.aa 
	SetActiveaa
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
.jj 
	SetActivejj
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
XC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\ShopSystem\ShopExit.cs
public 
class 
ShopExit
: 

,% & 
IPointerClickHandler' ;
{ 
Shop 
shop	 
;
void		 
Start			 
(		 
)		 
{

 
shop 
=

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
. 
	CloseShop
( 
) 
; 
} 
} �

XC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\ShopSystem\ShopSlot.cs
public 
class 
ShopSlot
: 

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
=

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
YC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\ShopSystem\buyButton.cs
public 
class 
	buyButton
: 

,& ' 
IPointerClickHandler( <
{ 
Shop 
shop	 
;
void
Start
(
)
{ 
shop 
=

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
. 
BuyItem
( 
) 
; 
} 
} �"
hC:\Users\Public\Documents\Unity Projects\wine-game\Assets\AA_Rami\testi scriptejä\MainAltCamControls.cs
public

 
class

 
MainAltCamControls


:

  !

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
public

	Transform
CamPos1
,
CamPos2
;
private 
bool 

transition 
= 
false #
,# $
cam1% )
=* +
false, 1
;1 2
private 
void 
Start 
( 
) 
{ 
Camera 
. 
	transform 
. 
position !
=" #
CamPos1$ +
.+ ,
position, 4
;4 5
} 
public 

void 
Update 
( 
) 
{ 
if 

( 

transition 
== 
true 
) 
{ 	
	ChangePos 
( 
) 
; 
} 	
} 
public   

void   
	ChangePos   
(   
)   
{!! 
if"" 

("" 
cam1"" 
!="" 
true"" 
)"" 
{## 	
Camera$$ 
.$$ 
	transform$$ 
.$$ 
position$$ %
=$$& '
new$$( +
Vector3$$, 3
($$3 4
Mathf$$4 9
.$$9 :
Lerp$$: >
($$> ?
Camera$$? E
.$$E F
	transform$$F O
.$$O P
position$$P X
.$$X Y
x$$Y Z
,$$Z [
CamPos1$$\ c
.$$c d
position$$d l
.$$l m
x$$m n
,$$n o
$num$$p t
)$$t u
,$$u v
Camera$$w }
.$$} ~
	transform	$$~ �
.
$$� �
position
$$� �
.
$$� �
y
$$� �
,
$$� �
Camera
$$� �
.
$$� �
	transform
$$� �
.
$$� �
position
$$� �
.
$$� �
z
$$� �
)
$$� �
;
$$� �
if&& 
(&& 
(&& 
int&& 
)&& 
Camera&& 
.&& 
	transform&& %
.&&% &
position&&& .
.&&. /
x&&/ 0
<=&&1 3
(&&4 5
int&&5 8
)&&8 9
CamPos1&&9 @
.&&@ A
	transform&&A J
.&&J K
position&&K S
.&&S T
x&&T U
)&&U V
{'' 

transition(( 
=(( 
false(( "
;((" #
cam1)) 
=)) 
true)) 
;)) 
}** 
}++ 	
else,, 
{-- 	
Camera.. 
... 
	transform.. 
... 
position.. %
=..& '
new..( +
Vector3.., 3
(..3 4
Mathf..4 9
...9 :
Lerp..: >
(..> ?
Camera..? E
...E F
	transform..F O
...O P
position..P X
...X Y
x..Y Z
,..Z [
CamPos2..\ c
...c d
position..d l
...l m
x..m n
,..n o
$num..p t
)..t u
,..u v
Camera..w }
...} ~
	transform	..~ �
.
..� �
position
..� �
.
..� �
y
..� �
,
..� �
Camera
..� �
.
..� �
	transform
..� �
.
..� �
position
..� �
.
..� �
z
..� �
)
..� �
;
..� �
if00 
(00 
(00 
int00 
)00 
Camera00 
.00 
	transform00 %
.00% &
position00& .
.00. /
x00/ 0
+001 2
$num003 4
>=005 7
(008 9
int009 <
)00< =
CamPos200= D
.00D E
	transform00E N
.00N O
position00O W
.00W X
x00X Y
)00Y Z
{11 

transition22 
=22 
false22 "
;22" #
cam133 
=33 
false33 
;33 
}44 
}55 	
}66 
}77 �
SC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\BottlingScript.cs
public 
class 
BottlingScript
: 

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


 #

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
public

string
wineName
;
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

!=## 

GameMaster## '
.##' (

.##5 6
NotBottling##6 A
&&##B D

!=##S U

GameMaster##V `
.##` a

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
{&& 
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
}++ 
if-- 
(-- 
timer-- 
<=-- 
$num-- 
)-- 
{.. 

=// 

GameMaster//  *
.//* +

.//8 9
Bottled//9 @
;//@ A
}00 
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
XC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\ClarificationScript.cs
public 
class 
ClarificationScript
:! "

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
private
int
clarificationTimeMinutes
;
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
{&& 
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
}++ 
if.. 
(.. 
timer.. 
<=.. 
$num.. 
).. 
{// 
clarificationState00 "
=00# $

GameMaster00% /
.00/ 0
ClarificationState000 B
.00B C
Clarificated00C O
;00O P
}11 
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
TC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\ColliderHandler.cs
public 
class 
ColliderHandler
: 

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
private

GameMaster
gm
;
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

gameMaster
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
{ 
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
}"" 
}## 	
else$$ 
if$$
($$ 
platform$$ 
==$$ 
RuntimePlatform$$ ,
.$$, -

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
{'' 

checkTouch(( 
((( 
Input((  
.((  !

)((. /
;((/ 0
})) 
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
if..
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
if22
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
if66
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
if::
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
PC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\CrushScript.cs
public

 
class

 
CrushScript


:

 


 (
{ 
public 

Camera 

farmCamera 
; 
public


GameObject
grape
;
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
=(( 
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
=-- 
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
{FF 
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
}KK 
}LL 	
elseMM 
ifMM
(MM 
platformMM 
==MM 
RuntimePlatformMM ,
.MM, -

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
{PP 

checkTouchQQ 
(QQ 
InputQQ  
.QQ  !

)QQ. /
;QQ/ 0
}RR 
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
ifff
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
{zz 
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
}~~ 
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
;
��0 1

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
�� 
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
�� 
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
�� 
	isStarted
��
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
�� 
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
�� 
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
�� 
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
RC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\DestroySplash.cs
public 
class 

: 

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
TC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\FermentorScript.cs
public 
class 
FermentorScript
: 

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
public

bool
isFermenting
;
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

)00$ %
{11 	
if22 
(22 
	isStarted22 
==22 
false22 "
)22" #
{33 
	isStarted44 
=44 
true44  
;44  !
}55 
if77 
(77 
CrushScript77 
.77 
didWin77 "
)77" #
{88 

slotScript99 
.99 
Ferment99 "
(99" #
)99# $
;99$ %
}:: 
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
{@@ 
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
}EE 
ifGG 
(GG 
timerGG 
<=GG 
$numGG 
)GG 
{HH 
FermentationStateII !
=II" #

GameMasterII$ .
.II. /
FermentationStateII/ @
.II@ A
	FermentedIIA J
;IIJ K
}JJ 
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
NC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\GUIScript.cs
public		 
class		 
	GUIScript		
:		 

{

 
public 

CanvasGroup 
	inventory  
;  !
public

CanvasGroup
	infoPanel
;
public 

Text 

; 
public 

Text 
infoPanelTimer 
; 
public 

Button 

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
=))

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
{55 
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
}<< 
else== 
if== 
(== 
parent== 
.== 
tag== 
====  "
$str==# /
)==/ 0
{>> 
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
}EE 
elseFF 
ifFF 
(FF 
parentFF 
.FF 
tagFF 
==FF  "
$strFF# 2
)FF2 3
{GG 
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
}NN 
elseOO 
ifOO 
(OO 
parentOO 
.OO 
tagOO 
==OO  "
$strOO# -
)OO- .
{PP 
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
}WW 
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
ifdd
(dd 
parentdd 
.dd 
tagdd 
==dd 
$strdd +
)dd+ ,
{ee 	

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
ifii
(ii 
parentii 
.ii 
tagii 
==ii 
$strii .
)ii. /
{jj 	

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
ifnn
(nn 
parentnn 
.nn 
tagnn 
==nn 
$strnn )
)nn) *
{oo 	

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
{|| 
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
�� 
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
}�� �Q
OC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\GameMaster.cs
public 
class 

GameMaster
: 

{		 
public 


GameObject 

townCamera  
,  !

farmCamera" ,
,, -

;; <
public

Camera

grapeCrush
;
public 


GameObject 
playGrapeCrush $
;$ %
public 

bool 

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
, 
Town   
,   
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
State\\ 
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
Stateaa 
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
Stateff 
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
Statell 
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

(pp 

GameObjectpp !
gopp" $
)pp$ %
{qq 
	guiScriptrr 
.rr 

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
yieldxx 
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
Statezz 
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
�� 
.
��
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

��$ 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5

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
�� 
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
�� 
.
��
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
NC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\Inventory.cs
public 
class 
	Inventory
: 

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
public

Canvas
canvas
;
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
items 
.
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
items 
.
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
items   
.  
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
items!! 
.!!
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
items"" 
.""
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
items## 
.##
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
items$$ 
.$$
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
items%% 
.%%
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
((( 
int((
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
(22 
int22
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
{55 
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
}:: 
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
IC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\Item.cs
public 
class 
Item
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
private
int
	itemValue
;
public 

enum 
ItemType 
{ 
GRAPE 
,
VINE 
, 
WINE 
, 
BOTTLE 
, 
} 
public 

string 
ItemDesc 
{ 
get 
{ 
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
{"" 
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
{'' 
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
{33 
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
}88 
else99 
{:: 
	itemValue;; 
=;; 
value;; !
;;;! "
}<< 
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
XC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\MethodCallerHandler.cs
public 
class 
MethodCallerHandler
:! "

{
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

GameObject
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
PC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\PlantGround.cs
public 
class 
PlantGround
: 

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
public

Sprite
plantSprite
;
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
{## 
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
}(( 
if++ 
(++ 
timer++ 
<=++ 
$num++ 
)++ 
{,, 

plantState.. 
=.. 

GameMaster.. '
...' (

PlantState..( 2
...2 3
Grapes..3 9
;..9 :
}// 
else00 
if00 
(00 
timer00 
<00 
$num00 
)00  
{11 

plantState33 
=33 

GameMaster33 '
.33' (

PlantState33( 2
.332 3
Trimmed333 :
;33: ;
}44 
else55 
if55 
(55 
timer55 
<55 
$num55  
)55  !
{66 

plantState88 
=88 

GameMaster88 '
.88' (

PlantState88( 2
.882 3

Overgrowth883 =
;88= >
}99 
else:: 
if:: 
(:: 
timer:: 
<:: 
$num::  
)::  !
{;; 
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
}>> 
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
timerFF 
=FF 
$numFF 
;FF 
}GG 
}HH �
IC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\Slot.cs
public 
class 
Slot
: 

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
OC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\SlotScript.cs
public		 
class		 

SlotScript		
:		 

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
public

string
currentlySelectedName
;
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
{55 
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
}>> 
else?? 
{@@ 
DebugAA 
.AA 
LogAA 
(AA 
$strAA &
)AA& '
;AA' (
}BB 
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
{`` 
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
}kk 
elsell 
{mm 
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
}pp 
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
��
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
��
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

�� (
=
��) *

GameMaster
��+ 5
.
��5 6

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
�� 
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
�� 
else
�� 
{
�� 
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
�� 
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
�� 
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

�� ,
=
��- .

GameMaster
��/ 9
.
��9 :

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
�� 
else
�� 
{
�� 
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
�� 
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
PC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Scripts\grapeScript.cs
public 
class 
grapeScript
: 

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
private
void
Awake
(
)
{ 
temp 
=

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
} �
tC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\CustomTiledImporterAttribute.cs
	namespace		 	
Tiled2Unity		
 
{

 
[ 
AttributeUsage 
( 
System 
. 
AttributeTargets +
.+ ,
Class, 1
,1 2

=A B
falseC H
)H I
]I J
public 

class (
CustomTiledImporterAttribute -
:. /
System0 6
.6 7
	Attribute7 @
{
public 
int 
Order 
{ 
get 
; 
set  #
;# $
}% &
} 
} �
lC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ICustomTiledImporter.cs
	namespace 	
Tiled2Unity
 
{		 
public

 

	interface

  
ICustomTiledImporter

 )
{ 
void "
HandleCustomProperties
(# $

GameObject$ .

gameObject/ 9
,9 :
IDictionary; F
<F G
stringG M
,M N
stringO U
>U V
customPropertiesW g
)g h
;h i
void 
CustomizePrefab
( 

GameObject '
prefab( .
). /
;/ 0
} 
} �u
rC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ImportTiled2Unity.Material.cs
	namespace 	
Tiled2Unity
 
{ 
partial 
class 
ImportTiled2Unity #
{ 
public 
void 
MaterialImported $
($ %
string% +
materialPath, 8
)8 9
{ 	
string 
asset 
= 
System !
.! "
IO" $
.$ %
Path% )
.) *
GetFileName* 5
(5 6
materialPath6 B
)B C
;C D
foreach 
( 
var 
importComponent (
in) +
ImportBehaviour, ;
.; <6
*EnumerateImportBehaviors_ByWaitingMaterial< f
(f g
assetg l
)l m
)m n
{ 
if 
( 
! 
importComponent $
.$ %$
ImportComplete_Materials% =
.= >
Contains> F
(F G
assetG L
,L M
StringComparerN \
.\ ]
OrdinalIgnoreCase] n
)n o
)o p
{ 
importComponent #
.# $$
ImportComplete_Materials$ <
.< =
Add= @
(@ A
assetA F
)F G
;G H
}   
if## 
(## 
importComponent## #
.### $(
IsMaterialImportingCompleted##$ @
(##@ A
)##A B
)##B C
{$$ 
ImportAllMeshes%% #
(%%# $
importComponent%%$ 3
)%%3 4
;%%4 5
}&& 
}'' 
}(( 	
public,, 
UnityEngine,, 
.,, 
Material,, #&
FixMaterialForMeshRenderer,,$ >
(,,> ?
string,,? E
objName,,F M
,,,M N
Renderer,,O W
renderer,,X `
),,` a
{-- 	
string// 
	assetName// 
=// 
objName// &
+//' (
$str//) /
;/// 0
ImportBehaviour00 
importBehavior00 *
=00+ ,
ImportBehaviour00- <
.00< =,
 FindImportBehavior_ByWaitingMesh00= ]
(00] ^
	assetName00^ g
)00g h
;00h i
string33 
meshName33 
=33 
renderer33 &
.33& '
name33' +
;33+ ,
var66 
assignMaterials66 
=66  !
importBehavior66" 0
.660 1
XmlDocument661 <
.66< =
Root66= A
.66A B
Elements66B J
(66J K
$str66K [
)66[ \
;66\ ]
XElement77 
match77 
=77 
assignMaterials77 ,
.77, -
FirstOrDefault77- ;
(77; <
el77< >
=>77? A
el77B D
.77D E
	Attribute77E N
(77N O
$str77O U
)77U V
.77V W
Value77W \
==77] _
meshName77` h
)77h i
;77i j
if99 
(99 
match99 
==99 
null99 
)99 
{:: 

builder>> %
=>>& '
new>>( +

(>>9 :
)>>: ;
;>>; <
builder?? 
.?? 
AppendFormat?? $
(??$ %
$str??% ^
,??^ _
renderer??` h
.??h i
name??i m
)??m n
;??n o
string@@ 
choices@@ 
=@@  
String@@! '
.@@' (
Join@@( ,
(@@, -
$str@@- 3
,@@3 4
assignMaterials@@5 D
.@@D E
Select@@E K
(@@K L
m@@L M
=>@@N P
m@@Q R
.@@R S
	Attribute@@S \
(@@\ ]
$str@@] c
)@@c d
.@@d e
Value@@e j
)@@j k
.@@k l
ToArray@@l s
(@@s t
)@@t u
)@@u v
;@@v w
builderAA 
.AA 
AppendFormatAA $
(AA$ %
$strAA% :
,AA: ;
choicesAA< C
)AAC D
;AAD E
importBehaviorCC 
.CC 
RecordErrorCC *
(CC* +
builderCC+ 2
.CC2 3
ToStringCC3 ;
(CC; <
)CC< =
)CC= >
;CC> ?
returnDD 
nullDD 
;DD 
}EE 
stringGG 
materialNameGG 
=GG  !
matchGG" '
.GG' (
	AttributeGG( 1
(GG1 2
$strGG2 <
)GG< =
.GG= >
ValueGG> C
+GGD E
$strGGF L
;GGL M
stringHH 
materialPathHH 
=HH  !(
GetExistingMaterialAssetPathHH" >
(HH> ?
materialNameHH? K
)HHK L
;HHL M
UnityEngineKK 
.KK 
MaterialKK  
materialKK! )
=KK* +

.KK9 :
LoadAssetAtPathKK: I
(KKI J
materialPathKKJ V
,KKV W
typeofKKX ^
(KK^ _
UnityEngineKK_ j
.KKj k
MaterialKKk s
)KKs t
)KKt u
asKKv x
UnityEngine	KKy �
.
KK� �
Material
KK� �
;
KK� �
ifLL 
(LL 
materialLL 
==LL 
nullLL  
)LL  !
{MM 
importBehaviorNN 
.NN 
RecordErrorNN *
(NN* +
$strNN+ I
,NNI J
materialNameNNK W
)NNW X
;NNX Y
}OO 
returnQQ 
materialQQ 
;QQ 
}RR 	
privateTT 
voidTT 
ImportAllMaterialsTT '
(TT' (
Tiled2UnityTT( 3
.TT3 4
ImportBehaviourTT4 C
importComponentTTD S
)TTS T
{UU 	
foreachWW 
(WW 
varWW 

xmlTextureWW #
inWW$ &
importComponentWW' 6
.WW6 7
XmlDocumentWW7 B
.WWB C
RootWWC G
.WWG H
ElementsWWH P
(WWP Q
$strWWQ `
)WW` a
)WWa b
{XX 
boolYY 

isResourceYY 
=YY  !
ImportUtilsYY" -
.YY- .!
GetAttributeAsBooleanYY. C
(YYC D

xmlTextureYYD N
,YYN O
$strYYP \
,YY\ ]
falseYY^ c
)YYc d
;YYd e
string[[ 
textureFile[[ "
=[[# $
ImportUtils[[% 0
.[[0 1 
GetAttributeAsString[[1 E
([[E F

xmlTexture[[F P
,[[P Q
$str[[R \
)[[\ ]
;[[] ^
string\\ 
materialPath\\ #
=\\$ %!
MakeMaterialAssetPath\\& ;
(\\; <
textureFile\\< G
,\\G H

isResource\\I S
)\\S T
;\\T U
string]] 
materialFile]] #
=]]$ %
System]]& ,
.]], -
IO]]- /
.]]/ 0
Path]]0 4
.]]4 5
GetFileName]]5 @
(]]@ A
materialPath]]A M
)]]M N
;]]N O
if`` 
(`` 
!`` 
importComponent`` $
.``$ % 
ImportWait_Materials``% 9
.``9 :
Contains``: B
(``B C
materialFile``C O
,``O P
StringComparer``Q _
.``_ `
OrdinalIgnoreCase``` q
)``q r
)``r s
{aa 
importComponentbb #
.bb# $ 
ImportWait_Materialsbb$ 8
.bb8 9
Addbb9 <
(bb< =
materialFilebb= I
)bbI J
;bbJ K
}cc 
UnityEngineff 
.ff 
Materialff $
materialff% -
=ff. /!
CreateMaterialFromXmlff0 E
(ffE F

xmlTextureffF P
,ffP Q
importComponentffR a
)ffa b
;ffb c
{ii 
stringjj 
textureAssetjj '
=jj( )
GetTextureAssetPathjj* =
(jj= >
textureFilejj> I
)jjI J
;jjJ K(
AssignTextureAssetToMaterialkk 0
(kk0 1
materialkk1 9
,kk9 :
materialFilekk; G
,kkG H
textureAssetkkI U
,kkU V
importComponentkkW f
)kkf g
;kkg h
}ll 
ImportUtilsnn 
.nn 
ReadyToWritenn (
(nn( )
materialPathnn) 5
)nn5 6
;nn6 7
ImportUtilsoo 
.oo  
CreateOrReplaceAssetoo 0
(oo0 1
materialoo1 9
,oo9 :
materialPathoo; G
)ooG H
;ooH I
importComponentpp 
.pp  "
ImportTiled2UnityAssetpp  6
(pp6 7
materialPathpp7 C
)ppC D
;ppD E
}qq 
foreachtt 
(tt 
vartt 
xmlInternaltt $
intt% '
importComponenttt( 7
.tt7 8
XmlDocumenttt8 C
.ttC D
RootttD H
.ttH I
ElementsttI Q
(ttQ R
$strttR c
)ttc d
)ttd e
{uu 
boolvv 

isResourcevv 
=vv  !
ImportUtilsvv" -
.vv- .!
GetAttributeAsBooleanvv. C
(vvC D
xmlInternalvvD O
,vvO P
$strvvQ ]
,vv] ^
falsevv_ d
)vvd e
;vve f
stringxx 
textureAssetxx #
=xx$ %
ImportUtilsxx& 1
.xx1 2 
GetAttributeAsStringxx2 F
(xxF G
xmlInternalxxG R
,xxR S
$strxxT _
)xx_ `
;xx` a
stringyy 
textureFileyy "
=yy# $
Systemyy% +
.yy+ ,
IOyy, .
.yy. /
Pathyy/ 3
.yy3 4
GetFileNameyy4 ?
(yy? @
textureAssetyy@ L
)yyL M
;yyM N
stringzz 
materialPathzz #
=zz$ %!
MakeMaterialAssetPathzz& ;
(zz; <
textureFilezz< G
,zzG H

isResourcezzI S
)zzS T
;zzT U
string}} 
uniqueMaterialName}} )
=}}* +
ImportUtils}}, 7
.}}7 8 
GetAttributeAsString}}8 L
(}}L M
xmlInternal}}M X
,}}X Y
$str}}Z h
,}}h i
$str}}j l
)}}l m
;}}m n
if~~ 
(~~ 
!~~ 
String~~ 
.~~ 

(~~) *
uniqueMaterialName~~* <
)~~< =
)~~= >
{ 
materialPath
��  
=
��! "
String
��# )
.
��) *
Format
��* 0
(
��0 1
$str
��1 =
,
��= >
Path
��? C
.
��C D
GetDirectoryName
��D T
(
��T U
materialPath
��U a
)
��a b
,
��b c 
uniqueMaterialName
��d v
,
��v w
Path
��x |
.
��| }
GetExtension��} �
(��� �
materialPath��� �
)��� �
)��� �
;��� �
}
�� 
string
�� 
materialFile
�� #
=
��$ %
System
��& ,
.
��, -
IO
��- /
.
��/ 0
Path
��0 4
.
��4 5
GetFileName
��5 @
(
��@ A
materialPath
��A M
)
��M N
;
��N O
if
�� 
(
�� 
!
�� 
importComponent
�� $
.
��$ %"
ImportWait_Materials
��% 9
.
��9 :
Contains
��: B
(
��B C
materialFile
��C O
,
��O P
StringComparer
��Q _
.
��_ `
OrdinalIgnoreCase
��` q
)
��q r
)
��r s
{
�� 
importComponent
�� #
.
��# $"
ImportWait_Materials
��$ 8
.
��8 9
Add
��9 <
(
��< =
materialFile
��= I
)
��I J
;
��J K
}
�� 
UnityEngine
�� 
.
�� 
Material
�� $
material
��% -
=
��. /#
CreateMaterialFromXml
��0 E
(
��E F
xmlInternal
��F Q
,
��Q R
importComponent
��S b
)
��b c
;
��c d*
AssignTextureAssetToMaterial
�� ,
(
��, -
material
��- 5
,
��5 6
materialFile
��7 C
,
��C D
textureAsset
��E Q
,
��Q R
importComponent
��S b
)
��b c
;
��c d
ImportUtils
�� 
.
�� 
ReadyToWrite
�� (
(
��( )
materialPath
��) 5
)
��5 6
;
��6 7
ImportUtils
�� 
.
�� "
CreateOrReplaceAsset
�� 0
(
��0 1
material
��1 9
,
��9 :
materialPath
��; G
)
��G H
;
��H I
importComponent
�� 
.
��  $
ImportTiled2UnityAsset
��  6
(
��6 7
materialPath
��7 C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 
importComponent
�� 
.
��  "
ImportWait_Materials
��  4
.
��4 5
Count
��5 :
(
��: ;
)
��; <
==
��= ?
$num
��@ A
)
��A B
{
�� 
ImportAllMeshes
�� 
(
��  
importComponent
��  /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
private
�� 
void
�� *
AssignTextureAssetToMaterial
�� 1
(
��1 2
Material
��2 :
material
��; C
,
��C D
string
��E K
materialFile
��L X
,
��X Y
string
��Z `
textureAsset
��a m
,
��m n
ImportBehaviour
��o ~
importComponent�� �
)��� �
{
�� 	
	Texture2D
�� 
	texture2d
�� 
=
��  !

��" /
.
��/ 0
LoadAssetAtPath
��0 ?
(
��? @
textureAsset
��@ L
,
��L M
typeof
��N T
(
��T U
	Texture2D
��U ^
)
��^ _
)
��_ `
as
��a c
	Texture2D
��d m
;
��m n
if
�� 
(
�� 
	texture2d
�� 
==
�� 
null
�� !
)
��! "
{
�� 
importComponent
�� 
.
��  
RecordError
��  +
(
��+ ,
$str
��, g
,
��g h
materialFile
��i u
,
��u v
textureAsset��w �
)��� �
;��� �
}
�� 
material
�� 
.
�� 

SetTexture
�� 
(
��  
$str
��  *
,
��* +
	texture2d
��, 5
)
��5 6
;
��6 7
}
�� 	
}
�� 
}�� �#
nC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ImportTiled2Unity.Mesh.cs
	namespace 	
Tiled2Unity
 
{ 
partial 
class 
ImportTiled2Unity #
{ 
public 
void 
MeshImported  
(  !
string! '
objPath( /
)/ 0
{ 	
string 
asset 
= 
System !
.! "
IO" $
.$ %
Path% )
.) *
GetFileName* 5
(5 6
objPath6 =
)= >
;> ?
ImportBehaviour 
importComponent +
=, -
ImportBehaviour. =
.= >,
 FindImportBehavior_ByWaitingMesh> ^
(^ _
asset_ d
)d e
;e f
if 
( 
importComponent 
!=  "
null# '
)' (
{ 
if 
( 
! 
importComponent $
.$ %!
ImportComplete_Meshes% :
.: ;
Contains; C
(C D
assetD I
,I J
StringComparerK Y
.Y Z
OrdinalIgnoreCaseZ k
)k l
)l m
{ 
importComponent #
.# $!
ImportComplete_Meshes$ 9
.9 :
Add: =
(= >
asset> C
)C D
;D E
}   
if## 
(## 
importComponent## #
.### $$
IsMeshImportingCompleted##$ <
(##< =
)##= >
)##> ?
{$$ 
ImportAllPrefabs%% $
(%%$ %
importComponent%%% 4
,%%4 5
objPath%%6 =
)%%= >
;%%> ?
}&& 
}'' 
}(( 	
private** 
void** 
ImportAllMeshes** $
(**$ %
Tiled2Unity**% 0
.**0 1
ImportBehaviour**1 @
importComponent**A P
)**P Q
{++ 	
foreach,, 
(,, 
var,, 
xmlMesh,,  
in,,! #
importComponent,,$ 3
.,,3 4
XmlDocument,,4 ?
.,,? @
Root,,@ D
.,,D E
Elements,,E M
(,,M N
$str,,N Z
),,Z [
),,[ \
{-- 
string00 
file00 
=00 
ImportUtils00 )
.00) * 
GetAttributeAsString00* >
(00> ?
xmlMesh00? F
,00F G
$str00H R
)00R S
;00S T
string11 
data11 
=11 
xmlMesh11 %
.11% &
Value11& +
;11+ ,
if44 
(44 
!44 
importComponent44 $
.44$ %
ImportWait_Meshes44% 6
.446 7
Contains447 ?
(44? @
file44@ D
,44D E
StringComparer44F T
.44T U
OrdinalIgnoreCase44U f
)44f g
)44g h
{55 
importComponent66 #
.66# $
ImportWait_Meshes66$ 5
.665 6
Add666 9
(669 :
file66: >
)66> ?
;66? @
}77 
string:: 
raw:: 
=:: 
ImportUtils:: (
.::( )
Base64ToString::) 7
(::7 8
data::8 <
)::< =
;::= >
string== 

pathToMesh== !
===" #
GetMeshAssetPath==$ 4
(==4 5
file==5 9
)==9 :
;==: ;
ImportUtils>> 
.>> 
ReadyToWrite>> (
(>>( )

pathToMesh>>) 3
)>>3 4
;>>4 5
File?? 
.?? 
WriteAllText?? !
(??! "

pathToMesh??" ,
,??, -
raw??. 1
,??1 2
Encoding??3 ;
.??; <
UTF8??< @
)??@ A
;??A B
importComponent@@ 
.@@  "
ImportTiled2UnityAsset@@  6
(@@6 7

pathToMesh@@7 A
)@@A B
;@@B C
}AA 
ifDD 
(DD 
importComponentDD 
.DD  
ImportWait_MeshesDD  1
.DD1 2
CountDD2 7
(DD7 8
)DD8 9
==DD: <
$numDD= >
)DD> ?
{EE 
ImportAllPrefabsFF  
(FF  !
importComponentFF! 0
,FF0 1
nullFF2 6
)FF6 7
;FF7 8
}GG 
}HH 	
}JJ 
}KK ݋
pC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ImportTiled2Unity.Prefab.cs
	namespace 	
Tiled2Unity
 
{ 
partial 
class 
ImportTiled2Unity #
{ 
public 
void 
PrefabImported "
(" #
string# )

prefabPath* 4
)4 5
{ 	
string 
asset 
= 
System !
.! "
IO" $
.$ %
Path% )
.) *
GetFileName* 5
(5 6

prefabPath6 @
)@ A
;A B
ImportBehaviour 
importComponent +
=, -
ImportBehaviour. =
.= >.
"FindImportBehavior_ByWaitingPrefab> `
(` a
asseta f
)f g
;g h
if 
( 
importComponent 
!=  "
null# '
)' (
{ 
if 
( 
! 
importComponent $
.$ %"
ImportComplete_Prefabs% ;
.; <
Contains< D
(D E
assetE J
,J K
StringComparerL Z
.Z [
OrdinalIgnoreCase[ l
)l m
)m n
{ 
importComponent #
.# $"
ImportComplete_Prefabs$ :
.: ;
Add; >
(> ?
asset? D
)D E
;E F
} 
if"" 
("" 
importComponent"" #
.""# $&
IsPrefabImportingCompleted""$ >
(""> ?
)""? @
)""@ A
{## 
importComponent$$ #
.$$# $
ReportPrefabImport$$$ 6
($$6 7

prefabPath$$7 A
)$$A B
;$$B C
importComponent%% #
.%%# $"
DestroyImportBehaviour%%$ :
(%%: ;
)%%; <
;%%< =
}&& 
}'' 
}(( 	
private** 
void** 
ImportAllPrefabs** %
(**% &
Tiled2Unity**& 1
.**1 2
ImportBehaviour**2 A
importComponent**B Q
,**Q R
string**S Y
objPath**Z a
)**a b
{++ 	
foreach,, 
(,, 
var,, 
	xmlPrefab,, "
in,,# %
importComponent,,& 5
.,,5 6
XmlDocument,,6 A
.,,A B
Root,,B F
.,,F G
Elements,,G O
(,,O P
$str,,P X
),,X Y
),,Y Z
{-- 
CreatePrefab.. 
(.. 
	xmlPrefab.. &
,..& '
objPath..( /
,../ 0
importComponent..1 @
)..@ A
;..A B
}// 
}00 	
private22 
void22 
CreatePrefab22 !
(22! "
XElement22" *
	xmlPrefab22+ 4
,224 5
string226 <
objPath22= D
,22D E
Tiled2Unity22F Q
.22Q R
ImportBehaviour22R a
importComponent22b q
)22q r
{33 	
var44 
customImporters44 
=44  !&
GetCustomImporterInstances44" <
(44< =
importComponent44= L
)44L M
;44M N
string77 

prefabName77 
=77 
	xmlPrefab77  )
.77) *
	Attribute77* 3
(773 4
$str774 :
)77: ;
.77; <
Value77< A
;77A B
float88 
prefabScale88 
=88 
ImportUtils88  +
.88+ ,
GetAttributeAsFloat88, ?
(88? @
	xmlPrefab88@ I
,88I J
$str88K R
,88R S
$num88T X
)88X Y
;88Y Z

GameObject99 

tempPrefab99 !
=99" #
new99$ '

GameObject99( 2
(992 3

prefabName993 =
)99= >
;99> ?!
HandleTiledAttributes:: !
(::! "

tempPrefab::" ,
,::, -
	xmlPrefab::. 7
,::7 8
importComponent::9 H
)::H I
;::I J"
HandleCustomProperties;; "
(;;" #

tempPrefab;;# -
,;;- .
	xmlPrefab;;/ 8
,;;8 9
customImporters;;: I
);;I J
;;;J K
bool?? 
	isTrigger?? 
=?? 
ImportUtils?? (
.??( )!
GetAttributeAsBoolean??) >
(??> ?
	xmlPrefab??? H
,??H I
$str??J U
,??U V
false??W \
)??\ ]
;??] ^
AddGameObjectsTo@@ 
(@@ 

tempPrefab@@ '
,@@' (
	xmlPrefab@@) 2
,@@2 3
	isTrigger@@4 =
,@@= >
objPath@@? F
,@@F G
importComponent@@H W
,@@W X
customImporters@@Y h
)@@h i
;@@i j
CustomizePrefabDD 
(DD 

tempPrefabDD &
,DD& '
customImportersDD( 7
)DD7 8
;DD8 9

tempPrefabGG 
.GG 
	transformGG  
.GG  !

localScaleGG! +
=GG, -
newGG. 1
Vector3GG2 9
(GG9 :
prefabScaleGG: E
,GGE F
prefabScaleGGG R
,GGR S
prefabScaleGGT _
)GG_ `
;GG` a
stringJJ 
resourcePathJJ 
=JJ  !
ImportUtilsJJ" -
.JJ- . 
GetAttributeAsStringJJ. B
(JJB C
	xmlPrefabJJC L
,JJL M
$strJJN \
,JJ\ ]
$strJJ^ `
)JJ` a
;JJa b
boolKK 

isResourceKK 
=KK 
!KK 
StringKK %
.KK% &

(KK3 4
resourcePathKK4 @
)KK@ A
||KKB D
ImportUtilsKKE P
.KKP Q!
GetAttributeAsBooleanKKQ f
(KKf g
	xmlPrefabKKg p
,KKp q
$strKKr |
,KK| }
false	KK~ �
)
KK� �
;
KK� �
stringLL 

prefabPathLL 
=LL 
GetPrefabAssetPathLL  2
(LL2 3

prefabNameLL3 =
,LL= >

isResourceLL? I
,LLI J
resourcePathLLK W
)LLW X
;LLX Y
stringMM 

prefabFileMM 
=MM 
SystemMM  &
.MM& '
IOMM' )
.MM) *
PathMM* .
.MM. /
GetFileNameMM/ :
(MM: ;

prefabPathMM; E
)MME F
;MMF G
ifPP 
(PP 
!PP 
importComponentPP  
.PP  !
ImportWait_PrefabsPP! 3
.PP3 4
ContainsPP4 <
(PP< =

prefabFilePP= G
,PPG H
StringComparerPPI W
.PPW X
OrdinalIgnoreCasePPX i
)PPi j
)PPj k
{QQ 
importComponentRR 
.RR  
ImportWait_PrefabsRR  2
.RR2 3
AddRR3 6
(RR6 7

prefabFileRR7 A
)RRA B
;RRB C
importComponentSS 
.SS  
ImportingAssetsSS  /
.SS/ 0
AddSS0 3
(SS3 4

prefabPathSS4 >
)SS> ?
;SS? @
}TT 
UnityEngineVV 
.VV 
ObjectVV 
finalPrefabVV *
=VV+ ,

.VV: ;
LoadAssetAtPathVV; J
(VVJ K

prefabPathVVK U
,VVU V
typeofVVW ]
(VV] ^

GameObjectVV^ h
)VVh i
)VVi j
;VVj k
ifXX 
(XX 
finalPrefabXX 
==XX 
nullXX #
)XX# $
{YY 
ImportUtils[[ 
.[[ 
ReadyToWrite[[ (
([[( )

prefabPath[[) 3
)[[3 4
;[[4 5
finalPrefab\\ 
=\\ 

.\\+ ,
CreateEmptyPrefab\\, =
(\\= >

prefabPath\\> H
)\\H I
;\\I J
}]] 

.`` 

(``' (

tempPrefab``( 2
,``2 3
finalPrefab``4 ?
,``? @ 
ReplacePrefabOptions``A U
.``U V
ReplaceNameBased``V f
)``f g
;``g h
UnityEnginecc 
.cc 
Objectcc 
.cc 
DestroyImmediatecc /
(cc/ 0

tempPrefabcc0 :
)cc: ;
;cc; <
}dd 	
privateff 
voidff 
AddGameObjectsToff %
(ff% &

GameObjectff& 0
parentff1 7
,ff7 8
XElementff9 A
xmlffB E
,ffE F
boolffG K
isParentTriggerffL [
,ff[ \
stringff] c
objPathffd k
,ffk l
ImportBehaviourffm |
importComponent	ff} �
,
ff� �
IList
ff� �
<
ff� �"
ICustomTiledImporter
ff� �
>
ff� �
customImporters
ff� �
)
ff� �
{gg 	
foreachhh 
(hh 
XElementhh 
goXmlhh #
inhh$ &
xmlhh' *
.hh* +
Elementshh+ 3
(hh3 4
$strhh4 @
)hh@ A
)hhA B
{ii 
stringjj 
namejj 
=jj 
ImportUtilsjj )
.jj) * 
GetAttributeAsStringjj* >
(jj> ?
goXmljj? D
,jjD E
$strjjF L
,jjL M
$strjjN P
)jjP Q
;jjQ R
stringkk 
copyFromkk 
=kk  !
ImportUtilskk" -
.kk- . 
GetAttributeAsStringkk. B
(kkB C
goXmlkkC H
,kkH I
$strkkJ P
,kkP Q
$strkkR T
)kkT U
;kkU V

GameObjectmm 
childmm  
=mm! "
nullmm# '
;mm' (
ifnn 
(nn 
!nn 
Stringnn 
.nn 

(nn) *
copyFromnn* 2
)nn2 3
)nn3 4
{oo 
floatpp 
opacitypp !
=pp" #
ImportUtilspp$ /
.pp/ 0
GetAttributeAsFloatpp0 C
(ppC D
goXmlppD I
,ppI J
$strppK T
,ppT U
$numppV W
)ppW X
;ppX Y
childqq 
=qq !
CreateCopyFromMeshObjqq 1
(qq1 2
copyFromqq2 :
,qq: ;
objPathqq< C
,qqC D
opacityqqE L
,qqL M
importComponentqqN ]
)qq] ^
;qq^ _
ifrr 
(rr 
childrr 
==rr  
nullrr! %
)rr% &
{ss 
returnuu 
;uu 
}vv 
Rendereryy 
rendereryy %
=yy& '
childyy( -
.yy- .
GetComponentyy. :
<yy: ;
Rendereryy; C
>yyC D
(yyD E
)yyE F
;yyF G
string{{ 
sortingLayer{{ '
={{( )
ImportUtils{{* 5
.{{5 6 
GetAttributeAsString{{6 J
({{J K
goXml{{K P
,{{P Q
$str{{R d
,{{d e
$str{{f h
){{h i
;{{i j
if|| 
(|| 
!|| 
String|| 
.||  

(||- .
sortingLayer||. :
)||: ;
&&||< >
!||? @%
SortingLayerExposedEditor||@ Y
.||Y Z 
GetSortingLayerNames||Z n
(||n o
)||o p
.||p q
Contains||q y
(||y z
sortingLayer	||z �
)
||� �
)
||� �
{}} 
importComponent~~ '
.~~' (
RecordError~~( 3
(~~3 4
$str	~~4 �
,
~~� �
sortingLayer
~~� �
)
~~� �
;
~~� �
renderer  
.  !
sortingLayerName! 1
=2 3
$str4 =
;= >
}
�� 
else
�� 
{
�� 
renderer
��  
.
��  !
sortingLayerName
��! 1
=
��2 3
sortingLayer
��4 @
;
��@ A
}
�� 
renderer
�� 
.
�� 
sortingOrder
�� )
=
��* +
ImportUtils
��, 7
.
��7 8
GetAttributeAsInt
��8 I
(
��I J
goXml
��J O
,
��O P
$str
��Q _
,
��_ `
$num
��a b
)
��b c
;
��c d
}
�� 
else
�� 
{
�� 
child
�� 
=
�� 
new
�� 

GameObject
��  *
(
��* +
)
��+ ,
;
��, -
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 

�� )
(
��) *
name
��* .
)
��. /
)
��/ 0
{
�� 
child
�� 
.
�� 
name
�� 
=
��  
name
��! %
;
��% &
}
�� 
child
�� 
.
�� 
	transform
�� 
.
��  
parent
��  &
=
��' (
parent
��) /
.
��/ 0
	transform
��0 9
;
��9 :
float
�� 
x
�� 
=
�� 
ImportUtils
�� %
.
��% &!
GetAttributeAsFloat
��& 9
(
��9 :
goXml
��: ?
,
��? @
$str
��A D
,
��D E
$num
��F G
)
��G H
;
��H I
float
�� 
y
�� 
=
�� 
ImportUtils
�� %
.
��% &!
GetAttributeAsFloat
��& 9
(
��9 :
goXml
��: ?
,
��? @
$str
��A D
,
��D E
$num
��F G
)
��G H
;
��H I
float
�� 
z
�� 
=
�� 
ImportUtils
�� %
.
��% &!
GetAttributeAsFloat
��& 9
(
��9 :
goXml
��: ?
,
��? @
$str
��A D
,
��D E
$num
��F G
)
��G H
;
��H I
child
�� 
.
�� 
	transform
�� 
.
��  

��  -
=
��. /
new
��0 3
Vector3
��4 ;
(
��; <
x
��< =
,
��= >
y
��? @
,
��@ A
z
��B C
)
��C D
;
��D E&
AddTileLayerComponentsTo
�� (
(
��( )
child
��) .
,
��. /
goXml
��0 5
)
��5 6
;
��6 7(
AddObjectLayerComponentsTo
�� *
(
��* +
child
��+ 0
,
��0 1
goXml
��2 7
)
��7 8
;
��8 9'
AddGroupLayerComponentsTo
�� )
(
��) *
child
��* /
,
��/ 0
goXml
��1 6
)
��6 7
;
��7 8&
AddTmxObjectComponentsTo
�� (
(
��( )
child
��) .
,
��. /
goXml
��0 5
)
��5 6
;
��6 7,
AddRectangleObjectComponentsTo
�� .
(
��. /
child
��/ 4
,
��4 5
goXml
��6 ;
)
��; <
;
��< =)
AddCircleObjectComponentsTo
�� +
(
��+ ,
child
��, 1
,
��1 2
goXml
��3 8
)
��8 9
;
��9 :*
AddPolygonObjectComponentsTo
�� ,
(
��, -
child
��- 2
,
��2 3
goXml
��4 9
)
��9 :
;
��: ;+
AddPolylineObjectComponentsTo
�� -
(
��- .
child
��. 3
,
��3 4
goXml
��5 :
)
��: ;
;
��; <'
AddTileObjectComponentsTo
�� )
(
��) *
child
��* /
,
��/ 0
goXml
��1 6
)
��6 7
;
��7 8 
AddTileAnimatorsTo
�� "
(
��" #
child
��# (
,
��( )
goXml
��* /
)
��/ 0
;
��0 1
bool
�� 
	isTrigger
�� 
=
��  
ImportUtils
��! ,
.
��, -#
GetAttributeAsBoolean
��- B
(
��B C
goXml
��C H
,
��H I
$str
��J U
,
��U V
isParentTrigger
��W f
)
��f g
;
��g h
AddCollidersTo
�� 
(
�� 
child
�� $
,
��$ %
	isTrigger
��& /
,
��/ 0
goXml
��1 6
)
��6 7
;
��7 8
AddGameObjectsTo
��  
(
��  !
child
��! &
,
��& '
goXml
��( -
,
��- .
	isTrigger
��/ 8
,
��8 9
objPath
��: A
,
��A B
importComponent
��C R
,
��R S
customImporters
��T c
)
��c d
;
��d e
AssignTagTo
�� 
(
�� 
child
�� !
,
��! "
goXml
��# (
,
��( )
importComponent
��* 9
)
��9 :
;
��: ;

�� 
(
�� 
child
�� #
,
��# $
goXml
��% *
,
��* +
importComponent
��, ;
)
��; <
;
��< =
float
�� 
sx
�� 
=
�� 
ImportUtils
�� &
.
��& '!
GetAttributeAsFloat
��' :
(
��: ;
goXml
��; @
,
��@ A
$str
��B J
,
��J K
$num
��L P
)
��P Q
;
��Q R
float
�� 
sy
�� 
=
�� 
ImportUtils
�� &
.
��& '!
GetAttributeAsFloat
��' :
(
��: ;
goXml
��; @
,
��@ A
$str
��B J
,
��J K
$num
��L P
)
��P Q
;
��Q R
child
�� 
.
�� 
	transform
�� 
.
��  

localScale
��  *
=
��+ ,
new
��- 0
Vector3
��1 8
(
��8 9
sx
��9 ;
,
��; <
sy
��= ?
,
��? @
$num
��A E
)
��E F
;
��F G
Vector3
�� 

�� %
=
��& '
new
��( +
Vector3
��, 3
(
��3 4
)
��4 5
;
��5 6

�� 
.
�� 
z
�� 
=
��  !
-
��" #
ImportUtils
��# .
.
��. /!
GetAttributeAsFloat
��/ B
(
��B C
goXml
��C H
,
��H I
$str
��J T
,
��T U
$num
��V W
)
��W X
;
��X Y
child
�� 
.
�� 
	transform
�� 
.
��  
eulerAngles
��  +
=
��, -

��. ;
;
��; <$
HandleCustomProperties
�� &
(
��& '
child
��' ,
,
��, -
goXml
��. 3
,
��3 4
customImporters
��5 D
)
��D E
;
��E F
}
�� 
}
�� 	
private
�� 
void
�� 

�� "
(
��" #

GameObject
��# -

gameObject
��. 8
,
��8 9
XElement
��: B
xml
��C F
,
��F G
ImportBehaviour
��H W
importComponent
��X g
)
��g h
{
�� 	
string
�� 
	layerName
�� 
=
�� 
ImportUtils
�� *
.
��* +"
GetAttributeAsString
��+ ?
(
��? @
xml
��@ C
,
��C D
$str
��E L
,
��L M
$str
��N P
)
��P Q
;
��Q R
if
�� 
(
�� 
String
�� 
.
�� 

�� $
(
��$ %
	layerName
��% .
)
��. /
)
��/ 0
return
�� 
;
�� 
int
�� 
layerId
�� 
=
�� 
	LayerMask
�� #
.
��# $
NameToLayer
��$ /
(
��/ 0
	layerName
��0 9
)
��9 :
;
��: ;
if
�� 
(
�� 
layerId
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
importComponent
�� 
.
��  
RecordError
��  +
(
��+ ,
$str��, �
,��� �
	layerName��� �
,��� �%
GetFullGameObjectName��� �
(��� �

gameObject��� �
.��� �
	transform��� �
)��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
AssignLayerIdTo
�� 
(
�� 

gameObject
�� &
,
��& '
layerId
��( /
)
��/ 0
;
��0 1
}
�� 	
private
�� 
void
�� 
AssignLayerIdTo
�� $
(
��$ %

GameObject
��% /

gameObject
��0 :
,
��: ;
int
��< ?
layerId
��@ G
)
��G H
{
�� 	
if
�� 
(
�� 

gameObject
�� 
==
�� 
null
�� "
)
��" #
return
�� 
;
�� 

gameObject
�� 
.
�� 
layer
�� 
=
�� 
layerId
�� &
;
��& '
foreach
�� 
(
�� 
	Transform
�� 
child
�� $
in
��% '

gameObject
��( 2
.
��2 3
	transform
��3 <
)
��< =
{
�� 
if
�� 
(
�� 
child
�� 
.
�� 

gameObject
�� $
==
��% '
null
��( ,
)
��, -
continue
�� 
;
�� 
if
�� 
(
�� 
child
�� 
.
�� 

gameObject
�� $
.
��$ %
layer
��% *
!=
��+ -
$num
��. /
)
��/ 0
continue
�� 
;
�� 
AssignLayerIdTo
�� 
(
��  
child
��  %
.
��% &

gameObject
��& 0
,
��0 1
layerId
��2 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
private
�� 
void
�� 
AssignTagTo
��  
(
��  !

GameObject
��! +

gameObject
��, 6
,
��6 7
XElement
��8 @
xml
��A D
,
��D E
ImportBehaviour
��F U
importComponent
��V e
)
��e f
{
�� 	
string
�� 
tag
�� 
=
�� 
ImportUtils
�� $
.
��$ %"
GetAttributeAsString
��% 9
(
��9 :
xml
��: =
,
��= >
$str
��? D
,
��D E
$str
��F H
)
��H I
;
��I J
if
�� 
(
�� 
String
�� 
.
�� 

�� $
(
��$ %
tag
��% (
)
��( )
)
��) *
return
�� 
;
�� 
try
�� 
{
�� 

gameObject
�� 
.
�� 
tag
�� 
=
��  
tag
��! $
;
��$ %
}
�� 
catch
�� 
(
�� 
UnityException
�� !
)
��! "
{
�� 
importComponent
�� 
.
��  
RecordError
��  +
(
��+ ,
$str��, �
,��� �
tag��� �
,��� �%
GetFullGameObjectName��� �
(��� �

gameObject��� �
.��� �
	transform��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
string
�� #
GetFullGameObjectName
�� ,
(
��, -
	Transform
��- 6
xform
��7 <
)
��< =
{
�� 	
if
�� 
(
�� 
xform
�� 
==
�� 
null
�� 
)
�� 
return
�� 
$str
�� 
;
�� 
string
�� 

parentName
�� 
=
�� #
GetFullGameObjectName
��  5
(
��5 6
xform
��6 ;
.
��; <
parent
��< B
)
��B C
;
��C D
if
�� 
(
�� 
String
�� 
.
�� 

�� $
(
��$ %

parentName
��% /
)
��/ 0
)
��0 1
return
�� 
xform
�� 
.
�� 
name
�� !
;
��! "
return
�� 
String
�� 
.
�� 
Format
��  
(
��  !
$str
��! *
,
��* +

parentName
��, 6
,
��6 7
xform
��8 =
.
��= >
name
��> B
)
��B C
;
��C D
}
�� 	
private
�� 
void
�� 
AddCollidersTo
�� #
(
��# $

GameObject
��$ .

gameObject
��/ 9
,
��9 :
bool
��; ?
	isTrigger
��@ I
,
��I J
XElement
��K S
xml
��T W
)
��W X
{
�� 	
foreach
�� 
(
�� 
XElement
�� 
xmlBoxCollider2D
�� .
in
��/ 1
xml
��2 5
.
��5 6
Elements
��6 >
(
��> ?
$str
��? N
)
��N O
)
��O P
{
�� 

�� 
collider
�� &
=
��' (

gameObject
��) 3
.
��3 4
AddComponent
��4 @
<
��@ A

��A N
>
��N O
(
��O P
)
��P Q
;
��Q R
collider
�� 
.
�� 
	isTrigger
�� "
=
��# $
	isTrigger
��% .
;
��. /
float
�� 
width
�� 
=
�� 
ImportUtils
�� )
.
��) *!
GetAttributeAsFloat
��* =
(
��= >
xmlBoxCollider2D
��> N
,
��N O
$str
��P W
)
��W X
;
��X Y
float
�� 
height
�� 
=
�� 
ImportUtils
�� *
.
��* +!
GetAttributeAsFloat
��+ >
(
��> ?
xmlBoxCollider2D
��? O
,
��O P
$str
��Q Y
)
��Y Z
;
��Z [
collider
�� 
.
�� 
size
�� 
=
�� 
new
��  #
Vector2
��$ +
(
��+ ,
width
��, 1
,
��1 2
height
��3 9
)
��9 :
;
��: ;
collider
�� 
.
�� 
offset
�� 
=
��  !
new
��" %
Vector2
��& -
(
��- .
width
��. 3
*
��4 5
$num
��6 :
,
��: ;
-
��< =
height
��= C
*
��D E
$num
��F J
)
��J K
;
��K L
float
�� 
offset_x
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A
xmlBoxCollider2D
��A Q
,
��Q R
$str
��S \
,
��\ ]
$num
��^ _
)
��_ `
;
��` a
float
�� 
offset_y
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A
xmlBoxCollider2D
��A Q
,
��Q R
$str
��S \
,
��\ ]
$num
��^ _
)
��_ `
;
��` a
collider
�� 
.
�� 
offset
�� 
+=
��  "
new
��# &
Vector2
��' .
(
��. /
offset_x
��/ 7
,
��7 8
offset_y
��9 A
)
��A B
;
��B C
}
�� 
foreach
�� 
(
�� 
XElement
�� !
xmlCircleCollider2D
�� 1
in
��2 4
xml
��5 8
.
��8 9
Elements
��9 A
(
��A B
$str
��B T
)
��T U
)
��U V
{
�� 
CircleCollider2D
��  
collider
��! )
=
��* +

gameObject
��, 6
.
��6 7
AddComponent
��7 C
<
��C D
CircleCollider2D
��D T
>
��T U
(
��U V
)
��V W
;
��W X
collider
�� 
.
�� 
	isTrigger
�� "
=
��# $
	isTrigger
��% .
;
��. /
float
�� 
radius
�� 
=
�� 
ImportUtils
�� *
.
��* +!
GetAttributeAsFloat
��+ >
(
��> ?!
xmlCircleCollider2D
��? R
,
��R S
$str
��T \
)
��\ ]
;
��] ^
collider
�� 
.
�� 
radius
�� 
=
��  !
radius
��" (
;
��( )
collider
�� 
.
�� 
offset
�� 
=
��  !
new
��" %
Vector2
��& -
(
��- .
radius
��. 4
,
��4 5
-
��6 7
radius
��7 =
)
��= >
;
��> ?
float
�� 
offset_x
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A!
xmlCircleCollider2D
��A T
,
��T U
$str
��V _
,
��_ `
$num
��a b
)
��b c
;
��c d
float
�� 
offset_y
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A!
xmlCircleCollider2D
��A T
,
��T U
$str
��V _
,
��_ `
$num
��a b
)
��b c
;
��c d
collider
�� 
.
�� 
offset
�� 
+=
��  "
new
��# &
Vector2
��' .
(
��. /
offset_x
��/ 7
,
��7 8
offset_y
��9 A
)
��A B
;
��B C
}
�� 
foreach
�� 
(
�� 
XElement
�� 
xmlEdgeCollider2D
�� /
in
��0 2
xml
��3 6
.
��6 7
Elements
��7 ?
(
��? @
$str
��@ P
)
��P Q
)
��Q R
{
�� 
EdgeCollider2D
�� 
collider
�� '
=
��( )

gameObject
��* 4
.
��4 5
AddComponent
��5 A
<
��A B
EdgeCollider2D
��B P
>
��P Q
(
��Q R
)
��R S
;
��S T
collider
�� 
.
�� 
	isTrigger
�� "
=
��# $
	isTrigger
��% .
;
��. /
string
�� 
data
�� 
=
�� 
xmlEdgeCollider2D
�� /
.
��/ 0
Element
��0 7
(
��7 8
$str
��8 @
)
��@ A
.
��A B
Value
��B G
;
��G H
var
�� 
points
�� 
=
�� 
from
�� !
pt
��" $
in
��% '
data
��( ,
.
��, -
Split
��- 2
(
��2 3
$char
��3 6
)
��6 7
let
��  
x
��! "
=
��# $
Convert
��% ,
.
��, -
ToSingle
��- 5
(
��5 6
pt
��6 8
.
��8 9
Split
��9 >
(
��> ?
$char
��? B
)
��B C
[
��C D
$num
��D E
]
��E F
)
��F G
let
��  
y
��! "
=
��# $
Convert
��% ,
.
��, -
ToSingle
��- 5
(
��5 6
pt
��6 8
.
��8 9
Split
��9 >
(
��> ?
$char
��? B
)
��B C
[
��C D
$num
��D E
]
��E F
)
��F G
select
�� #
new
��$ '
Vector2
��( /
(
��/ 0
x
��0 1
,
��1 2
y
��3 4
)
��4 5
;
��5 6
collider
�� 
.
�� 
points
�� 
=
��  !
points
��" (
.
��( )
ToArray
��) 0
(
��0 1
)
��1 2
;
��2 3
float
�� 
offset_x
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A
xmlEdgeCollider2D
��A R
,
��R S
$str
��T ]
,
��] ^
$num
��_ `
)
��` a
;
��a b
float
�� 
offset_y
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A
xmlEdgeCollider2D
��A R
,
��R S
$str
��T ]
,
��] ^
$num
��_ `
)
��` a
;
��a b
collider
�� 
.
�� 
offset
�� 
+=
��  "
new
��# &
Vector2
��' .
(
��. /
offset_x
��/ 7
,
��7 8
offset_y
��9 A
)
��A B
;
��B C
}
�� 
foreach
�� 
(
�� 
XElement
�� "
xmlPolygonCollider2D
�� 2
in
��3 5
xml
��6 9
.
��9 :
Elements
��: B
(
��B C
$str
��C V
)
��V W
)
��W X
{
�� 
PolygonCollider2D
�� !
collider
��" *
=
��+ ,

gameObject
��- 7
.
��7 8
AddComponent
��8 D
<
��D E
PolygonCollider2D
��E V
>
��V W
(
��W X
)
��X Y
;
��Y Z
collider
�� 
.
�� 
	isTrigger
�� "
=
��# $
	isTrigger
��% .
;
��. /
float
�� 
offset_x
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A"
xmlPolygonCollider2D
��A U
,
��U V
$str
��W `
,
��` a
$num
��b c
)
��c d
;
��d e
float
�� 
offset_y
�� 
=
��  
ImportUtils
��! ,
.
��, -!
GetAttributeAsFloat
��- @
(
��@ A"
xmlPolygonCollider2D
��A U
,
��U V
$str
��W `
,
��` a
$num
��b c
)
��c d
;
��d e
var
�� 
paths
�� 
=
�� "
xmlPolygonCollider2D
�� 0
.
��0 1
Elements
��1 9
(
��9 :
$str
��: @
)
��@ A
.
��A B
ToArray
��B I
(
��I J
)
��J K
;
��K L
collider
�� 
.
�� 
	pathCount
�� "
=
��# $
paths
��% *
.
��* +
Count
��+ 0
(
��0 1
)
��1 2
;
��2 3
for
�� 
(
�� 
int
�� 
p
�� 
=
�� 
$num
�� 
;
�� 
p
��  !
<
��" #
collider
��$ ,
.
��, -
	pathCount
��- 6
;
��6 7
++
��8 :
p
��: ;
)
��; <
{
�� 
string
�� 
data
�� 
=
��  !
paths
��" '
[
��' (
p
��( )
]
��) *
.
��* +
Value
��+ 0
;
��0 1
var
�� 
points
�� 
=
��  
from
��! %
pt
��& (
in
��) +
data
��, 0
.
��0 1
Split
��1 6
(
��6 7
$char
��7 :
)
��: ;
let
��! $
x
��% &
=
��' (
Convert
��) 0
.
��0 1
ToSingle
��1 9
(
��9 :
pt
��: <
.
��< =
Split
��= B
(
��B C
$char
��C F
)
��F G
[
��G H
$num
��H I
]
��I J
)
��J K
let
��! $
y
��% &
=
��' (
Convert
��) 0
.
��0 1
ToSingle
��1 9
(
��9 :
pt
��: <
.
��< =
Split
��= B
(
��B C
$char
��C F
)
��F G
[
��G H
$num
��H I
]
��I J
)
��J K
select
��! '
new
��( +
Vector2
��, 3
(
��3 4
x
��4 5
,
��5 6
y
��7 8
)
��8 9
;
��9 :
collider
�� 
.
�� 
SetPath
�� $
(
��$ %
p
��% &
,
��& '
points
��( .
.
��. /
ToArray
��/ 6
(
��6 7
)
��7 8
)
��8 9
;
��9 :
}
�� 
collider
�� 
.
�� 
offset
�� 
+=
��  "
new
��# &
Vector2
��' .
(
��. /
offset_x
��/ 7
,
��7 8
offset_y
��9 A
)
��A B
;
��B C
}
�� 
}
�� 	
private
�� 

GameObject
�� #
CreateCopyFromMeshObj
�� 0
(
��0 1
string
��1 7
copyFromName
��8 D
,
��D E
string
��F L
objPath
��M T
,
��T U
float
��V [
opacity
��\ c
,
��c d
ImportBehaviour
��e t
importComponent��u �
)��� �
{
�� 	
UnityEngine
�� 
.
�� 
Object
�� 
[
�� 
]
��  
objects
��! (
=
��) *

��+ 8
.
��8 9!
LoadAllAssetsAtPath
��9 L
(
��L M
objPath
��M T
)
��T U
;
��U V
foreach
�� 
(
�� 
var
�� 
obj
�� 
in
�� 
objects
��  '
)
��' (
{
�� 
if
�� 
(
�� 
obj
�� 
.
�� 
name
�� 
!=
�� 
copyFromName
��  ,
)
��, -
continue
�� 
;
�� 

GameObject
�� 
gameObj
�� "
=
��# $

GameObject
��% /
.
��/ 0
Instantiate
��0 ;
(
��; <
obj
��< ?
)
��? @
as
��A C

GameObject
��D N
;
��N O
if
�� 
(
�� 
gameObj
�� 
==
�� 
null
�� #
)
��# $
continue
�� 
;
�� *
TiledInitialShaderProperties
�� ,
shaderProps
��- 8
=
��9 :
gameObj
��; B
.
��B C
AddComponent
��C O
<
��O P*
TiledInitialShaderProperties
��P l
>
��l m
(
��m n
)
��n o
;
��o p
shaderProps
�� 
.
�� 
InitialOpacity
�� *
=
��+ ,
opacity
��- 4
;
��4 5
gameObj
�� 
.
�� 
name
�� 
=
�� 
obj
�� "
.
��" #
name
��# '
;
��' (
return
�� 
gameObj
�� 
;
�� 
}
�� 
importComponent
�� 
.
�� 
RecordError
�� '
(
��' (
$str
��( g
,
��g h
copyFromName
��i u
,
��u v
importComponent��w �
.��� �"
Tiled2UnityXmlPath��� �
,��� �
objPath��� �
)��� �
;��� �
return
�� 
null
�� 
;
�� 
}
�� 	
private
�� 
void
�� &
AddTileLayerComponentsTo
�� -
(
��- .

GameObject
��. 8

gameObject
��9 C
,
��C D
XElement
��E M
goXml
��N S
)
��S T
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ /
)
��/ 0
;
��0 1
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
Tiled2Unity
�� 
.
�� 
	TileLayer
�� %
	tileLayer
��& /
=
��0 1

gameObject
��2 <
.
��< =
AddComponent
��= I
<
��I J
Tiled2Unity
��J U
.
��U V
	TileLayer
��V _
>
��_ `
(
��` a
)
��a b
;
��b c)
SetLayerComponentProperties
�� +
(
��+ ,
	tileLayer
��, 5
,
��5 6
xml
��7 :
)
��: ;
;
��; <
}
�� 
}
�� 	
private
�� 
void
�� (
AddObjectLayerComponentsTo
�� /
(
��/ 0

GameObject
��0 :

gameObject
��; E
,
��E F
XElement
��G O
goXml
��P U
)
��U V
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ 1
)
��1 2
;
��2 3
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
Tiled2Unity
�� 
.
�� 
ObjectLayer
�� '
objectLayer
��( 3
=
��4 5

gameObject
��6 @
.
��@ A
AddComponent
��A M
<
��M N
Tiled2Unity
��N Y
.
��Y Z
ObjectLayer
��Z e
>
��e f
(
��f g
)
��g h
;
��h i
objectLayer
�� 
.
�� 
Color
�� !
=
��" #
ImportUtils
��$ /
.
��/ 0!
GetAttributeAsColor
��0 C
(
��C D
xml
��D G
,
��G H
$str
��I P
,
��P Q
Color
��R W
.
��W X
black
��X ]
)
��] ^
;
��^ _)
SetLayerComponentProperties
�� +
(
��+ ,
objectLayer
��, 7
,
��7 8
xml
��9 <
)
��< =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� '
AddGroupLayerComponentsTo
�� .
(
��. /

GameObject
��/ 9

gameObject
��: D
,
��D E
XElement
��F N
goXml
��O T
)
��T U
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ 0
)
��0 1
;
��1 2
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
Tiled2Unity
�� 
.
�� 

GroupLayer
�� &

groupLayer
��' 1
=
��2 3

gameObject
��4 >
.
��> ?
AddComponent
��? K
<
��K L
Tiled2Unity
��L W
.
��W X

GroupLayer
��X b
>
��b c
(
��c d
)
��d e
;
��e f)
SetLayerComponentProperties
�� +
(
��+ ,

groupLayer
��, 6
,
��6 7
xml
��8 ;
)
��; <
;
��< =
}
�� 
}
�� 	
private
�� 
void
�� )
SetLayerComponentProperties
�� 0
(
��0 1
Tiled2Unity
��1 <
.
��< =
Layer
��= B
layer
��C H
,
��H I
XElement
��J R
xml
��S V
)
��V W
{
�� 	
layer
�� 
.
�� 
Offset
�� 
=
�� 
new
�� 
Vector2
�� &
{
��' (
x
��) *
=
��+ ,
ImportUtils
��- 8
.
��8 9!
GetAttributeAsFloat
��9 L
(
��L M
xml
��M P
,
��P Q
$str
��R [
,
��[ \
$num
��] ^
)
��^ _
,
��_ `
y
��a b
=
��c d
ImportUtils
��e p
.
��p q"
GetAttributeAsFloat��q �
(��� �
xml��� �
,��� �
$str��� �
,��� �
$num��� �
)��� �
}��� �
;��� �
}
�� 	
private
�� 
void
�� &
AddTmxObjectComponentsTo
�� -
(
��- .

GameObject
��. 8

gameObject
��9 C
,
��C D
XElement
��E M
goXml
��N S
)
��S T
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ 8
)
��8 9
;
��9 :
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
	TmxObject
�� 
	tmxObject
�� #
=
��$ %

gameObject
��& 0
.
��0 1
AddComponent
��1 =
<
��= >
	TmxObject
��> G
>
��G H
(
��H I
)
��I J
;
��J K)
FillBaseTmxObjectProperties
�� +
(
��+ ,
	tmxObject
��, 5
,
��5 6
xml
��7 :
)
��: ;
;
��; <
}
�� 
}
�� 	
private
�� 
void
�� ,
AddRectangleObjectComponentsTo
�� 3
(
��3 4

GameObject
��4 >

gameObject
��? I
,
��I J
XElement
��K S
goXml
��T Y
)
��Y Z
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ >
)
��> ?
;
��? @
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
RectangleObject
�� 
tmxRectangle
��  ,
=
��- .

gameObject
��/ 9
.
��9 :
AddComponent
��: F
<
��F G
Tiled2Unity
��G R
.
��R S
RectangleObject
��S b
>
��b c
(
��c d
)
��d e
;
��e f)
FillBaseTmxObjectProperties
�� +
(
��+ ,
tmxRectangle
��, 8
,
��8 9
xml
��: =
)
��= >
;
��> ?
}
�� 
}
�� 	
private
�� 
void
�� )
AddCircleObjectComponentsTo
�� 0
(
��0 1

GameObject
��1 ;

gameObject
��< F
,
��F G
XElement
��H P
goXml
��Q V
)
��V W
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ ;
)
��; <
;
��< =
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
CircleObject
�� 
	tmxCircle
�� &
=
��' (

gameObject
��) 3
.
��3 4
AddComponent
��4 @
<
��@ A
Tiled2Unity
��A L
.
��L M
CircleObject
��M Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ])
FillBaseTmxObjectProperties
�� +
(
��+ ,
	tmxCircle
��, 5
,
��5 6
xml
��7 :
)
��: ;
;
��; <
}
�� 
}
�� 	
private
�� 
void
�� *
AddPolygonObjectComponentsTo
�� 1
(
��1 2

GameObject
��2 <

gameObject
��= G
,
��G H
XElement
��I Q
goXml
��R W
)
��W X
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ <
)
��< =
;
��= >
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 

�� 

tmxPolygon
�� (
=
��) *

gameObject
��+ 5
.
��5 6
AddComponent
��6 B
<
��B C
Tiled2Unity
��C N
.
��N O

��O \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `)
FillBaseTmxObjectProperties
�� +
(
��+ ,

tmxPolygon
��, 6
,
��6 7
xml
��8 ;
)
��; <
;
��< =
}
�� 
}
�� 	
private
�� 
void
�� +
AddPolylineObjectComponentsTo
�� 2
(
��2 3

GameObject
��3 =

gameObject
��> H
,
��H I
XElement
��J R
goXml
��S X
)
��X Y
{
�� 	
var
�� 
xml
�� 
=
�� 
goXml
�� 
.
�� 
Element
�� #
(
��# $
$str
��$ =
)
��= >
;
��> ?
if
�� 
(
�� 
xml
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
PolylineObject
�� 
tmxPolyline
�� *
=
��+ ,

gameObject
��- 7
.
��7 8
AddComponent
��8 D
<
��D E
Tiled2Unity
��E P
.
��P Q
PolylineObject
��Q _
>
��_ `
(
��` a
)
��a b
;
��b c)
FillBaseTmxObjectProperties
�� +
(
��+ ,
tmxPolyline
��, 7
,
��7 8
xml
��9 <
)
��< =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� '
AddTileObjectComponentsTo
�� .
(
��. /

GameObject
��/ 9

gameObject
��: D
,
��D E
XElement
��F N
goXml
��O T
)
��T U
{
�� 	
var
�� 
tileXml
�� 
=
�� 
goXml
�� 
.
��  
Element
��  '
(
��' (
$str
��( =
)
��= >
;
��> ?
if
�� 
(
�� 
tileXml
�� 
!=
�� 
null
�� 
)
��  
{
�� 

TileObject
�� 

tileObject
�� %
=
��& '

gameObject
��( 2
.
��2 3
AddComponent
��3 ?
<
��? @

TileObject
��@ J
>
��J K
(
��K L
)
��L M
;
��M N)
FillBaseTmxObjectProperties
�� +
(
��+ ,

tileObject
��, 6
,
��6 7
tileXml
��8 ?
)
��? @
;
��@ A

tileObject
�� 
.
�� #
TmxFlippingHorizontal
�� 0
=
��1 2
ImportUtils
��3 >
.
��> ?#
GetAttributeAsBoolean
��? T
(
��T U
tileXml
��U \
,
��\ ]
$str
��^ x
,
��x y
false
��z 
)�� �
;��� �

tileObject
�� 
.
�� !
TmxFlippingVertical
�� .
=
��/ 0
ImportUtils
��1 <
.
��< =#
GetAttributeAsBoolean
��= R
(
��R S
tileXml
��S Z
,
��Z [
$str
��\ t
,
��t u
false
��v {
)
��{ |
;
��| }

tileObject
�� 
.
�� 
	TileWidth
�� $
=
��% &
ImportUtils
��' 2
.
��2 3!
GetAttributeAsFloat
��3 F
(
��F G
tileXml
��G N
,
��N O
$str
��P W
)
��W X
;
��X Y

tileObject
�� 
.
�� 

TileHeight
�� %
=
��& '
ImportUtils
��( 3
.
��3 4!
GetAttributeAsFloat
��4 G
(
��G H
tileXml
��H O
,
��O P
$str
��Q Y
)
��Y Z
;
��Z [
}
�� 
}
�� 	
private
�� 
void
�� )
FillBaseTmxObjectProperties
�� 0
(
��0 1
Tiled2Unity
��1 <
.
��< =
	TmxObject
��= F
tmxComponent
��G S
,
��S T
XElement
��U ]
xml
��^ a
)
��a b
{
�� 	
tmxComponent
�� 
.
�� 
TmxId
�� 
=
��  
ImportUtils
��! ,
.
��, -
GetAttributeAsInt
��- >
(
��> ?
xml
��? B
,
��B C
$str
��D S
,
��S T
-
��U V
$num
��V W
)
��W X
;
��X Y
tmxComponent
�� 
.
�� 
TmxName
��  
=
��! "
ImportUtils
��# .
.
��. /"
GetAttributeAsString
��/ C
(
��C D
xml
��D G
,
��G H
$str
��I Z
,
��Z [
$str
��\ ^
)
��^ _
;
��_ `
tmxComponent
�� 
.
�� 
TmxType
��  
=
��! "
ImportUtils
��# .
.
��. /"
GetAttributeAsString
��/ C
(
��C D
xml
��D G
,
��G H
$str
��I Z
,
��Z [
$str
��\ ^
)
��^ _
;
��_ `
tmxComponent
�� 
.
�� 
TmxPosition
�� $
.
��$ %
x
��% &
=
��' (
ImportUtils
��) 4
.
��4 5!
GetAttributeAsFloat
��5 H
(
��H I
xml
��I L
,
��L M
$str
��N \
,
��\ ]
$num
��^ _
)
��_ `
;
��` a
tmxComponent
�� 
.
�� 
TmxPosition
�� $
.
��$ %
y
��% &
=
��' (
ImportUtils
��) 4
.
��4 5!
GetAttributeAsFloat
��5 H
(
��H I
xml
��I L
,
��L M
$str
��N \
,
��\ ]
$num
��^ _
)
��_ `
;
��` a
tmxComponent
�� 
.
�� 
TmxSize
��  
.
��  !
x
��! "
=
��# $
ImportUtils
��% 0
.
��0 1!
GetAttributeAsFloat
��1 D
(
��D E
xml
��E H
,
��H I
$str
��J \
,
��\ ]
$num
��^ _
)
��_ `
;
��` a
tmxComponent
�� 
.
�� 
TmxSize
��  
.
��  !
y
��! "
=
��# $
ImportUtils
��% 0
.
��0 1!
GetAttributeAsFloat
��1 D
(
��D E
xml
��E H
,
��H I
$str
��J ]
,
��] ^
$num
��_ `
)
��` a
;
��a b
tmxComponent
�� 
.
�� 
TmxRotation
�� $
=
��% &
ImportUtils
��' 2
.
��2 3!
GetAttributeAsFloat
��3 F
(
��F G
xml
��G J
,
��J K
$str
��L a
,
��a b
$num
��c d
)
��d e
;
��e f
}
�� 	
private
�� 
void
��  
AddTileAnimatorsTo
�� '
(
��' (

GameObject
��( 2

gameObject
��3 =
,
��= >
XElement
��? G
goXml
��H M
)
��M N
{
�� 	
var
�� 
animXml
�� 
=
�� 
goXml
�� 
.
��  
Element
��  '
(
��' (
$str
��( 6
)
��6 7
;
��7 8
if
�� 
(
�� 
animXml
�� 
!=
�� 
null
�� 
)
��  
{
�� 
TileAnimator
�� 
tileAnimator
�� )
=
��* +

gameObject
��, 6
.
��6 7
AddComponent
��7 C
<
��C D
TileAnimator
��D P
>
��P Q
(
��Q R
)
��R S
;
��S T
tileAnimator
�� 
.
�� 
	StartTime
�� &
=
��' (
ImportUtils
��) 4
.
��4 5
GetAttributeAsInt
��5 F
(
��F G
animXml
��G N
,
��N O
$str
��P ]
)
��] ^
*
��_ `
$num
��a g
;
��g h
tileAnimator
�� 
.
�� 
Duration
�� %
=
��& '
ImportUtils
��( 3
.
��3 4
GetAttributeAsInt
��4 E
(
��E F
animXml
��F M
,
��M N
$str
��O [
)
��[ \
*
��] ^
$num
��_ e
;
��e f
tileAnimator
�� 
.
��  
TotalAnimationTime
�� /
=
��0 1
ImportUtils
��2 =
.
��= >
GetAttributeAsInt
��> O
(
��O P
animXml
��P W
,
��W X
$str
��Y e
)
��e f
*
��g h
$num
��i o
;
��o p
}
�� 
}
�� 	
private
�� 
void
�� #
HandleTiledAttributes
�� *
(
��* +

GameObject
��+ 5

gameObject
��6 @
,
��@ A
XElement
��B J
goXml
��K P
,
��P Q
Tiled2Unity
��R ]
.
��] ^
ImportBehaviour
��^ m
importComponent
��n }
)
��} ~
{
�� 	
TiledMap
�� 
map
�� 
=
�� 

gameObject
�� %
.
��% &
AddComponent
��& 2
<
��2 3
TiledMap
��3 ;
>
��; <
(
��< =
)
��= >
;
��> ?
try
�� 
{
�� 
map
�� 
.
�� 
Orientation
�� 
=
��  !
ImportUtils
��" -
.
��- . 
GetAttributeAsEnum
��. @
<
��@ A
TiledMap
��A I
.
��I J
MapOrientation
��J X
>
��X Y
(
��Y Z
goXml
��Z _
,
��_ `
$str
��a n
)
��n o
;
��o p
map
�� 
.
�� 
StaggerAxis
�� 
=
��  !
ImportUtils
��" -
.
��- . 
GetAttributeAsEnum
��. @
<
��@ A
TiledMap
��A I
.
��I J
MapStaggerAxis
��J X
>
��X Y
(
��Y Z
goXml
��Z _
,
��_ `
$str
��a n
)
��n o
;
��o p
map
�� 
.
�� 
StaggerIndex
��  
=
��! "
ImportUtils
��# .
.
��. / 
GetAttributeAsEnum
��/ A
<
��A B
TiledMap
��B J
.
��J K
MapStaggerIndex
��K Z
>
��Z [
(
��[ \
goXml
��\ a
,
��a b
$str
��c q
)
��q r
;
��r s
map
�� 
.
�� 

�� !
=
��" #
ImportUtils
��$ /
.
��/ 0
GetAttributeAsInt
��0 A
(
��A B
goXml
��B G
,
��G H
$str
��I X
)
��X Y
;
��Y Z
map
�� 
.
�� 
	NumLayers
�� 
=
�� 
ImportUtils
��  +
.
��+ ,
GetAttributeAsInt
��, =
(
��= >
goXml
��> C
,
��C D
$str
��E P
)
��P Q
;
��Q R
map
�� 
.
�� 
NumTilesWide
��  
=
��! "
ImportUtils
��# .
.
��. /
GetAttributeAsInt
��/ @
(
��@ A
goXml
��A F
,
��F G
$str
��H V
)
��V W
;
��W X
map
�� 
.
�� 
NumTilesHigh
��  
=
��! "
ImportUtils
��# .
.
��. /
GetAttributeAsInt
��/ @
(
��@ A
goXml
��A F
,
��F G
$str
��H V
)
��V W
;
��W X
map
�� 
.
�� 
	TileWidth
�� 
=
�� 
ImportUtils
��  +
.
��+ ,
GetAttributeAsInt
��, =
(
��= >
goXml
��> C
,
��C D
$str
��E P
)
��P Q
;
��Q R
map
�� 
.
�� 

TileHeight
�� 
=
��  
ImportUtils
��! ,
.
��, -
GetAttributeAsInt
��- >
(
��> ?
goXml
��? D
,
��D E
$str
��F R
)
��R S
;
��S T
map
�� 
.
�� 
ExportScale
�� 
=
��  !
ImportUtils
��" -
.
��- .!
GetAttributeAsFloat
��. A
(
��A B
goXml
��B G
,
��G H
$str
��I V
)
��V W
;
��W X
map
�� 
.
�� 
MapWidthInPixels
�� $
=
��% &
ImportUtils
��' 2
.
��2 3
GetAttributeAsInt
��3 D
(
��D E
goXml
��E J
,
��J K
$str
��L ^
)
��^ _
;
��_ `
map
�� 
.
�� 
MapHeightInPixels
�� %
=
��& '
ImportUtils
��( 3
.
��3 4
GetAttributeAsInt
��4 E
(
��E F
goXml
��F K
,
��K L
$str
��M `
)
��` a
;
��a b
map
�� 
.
�� 
BackgroundColor
�� #
=
��$ %
ImportUtils
��& 1
.
��1 2!
GetAttributeAsColor
��2 E
(
��E F
goXml
��F K
,
��K L
$str
��M ^
,
��^ _
Color
��` e
.
��e f
black
��f k
)
��k l
;
��l m
}
�� 
catch
�� 
{
�� 
importComponent
�� 
.
��  

��  -
(
��- .
$str��. �
)��� �
;��� �

GameObject
�� 
.
�� 
DestroyImmediate
�� +
(
��+ ,
map
��, /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
private
�� 
void
�� $
HandleCustomProperties
�� +
(
��+ ,

GameObject
��, 6

gameObject
��7 A
,
��A B
XElement
��C K
goXml
��L Q
,
��Q R
IList
��S X
<
��X Y"
ICustomTiledImporter
��Y m
>
��m n
	importers
��o x
)
��x y
{
�� 	
var
�� 
props
�� 
=
�� 
from
�� 
p
�� 
in
�� !
goXml
��" '
.
��' (
Elements
��( 0
(
��0 1
$str
��1 ;
)
��; <
select
�� 
new
�� "
{
��# $
Name
��% )
=
��* +
p
��, -
.
��- .
	Attribute
��. 7
(
��7 8
$str
��8 >
)
��> ?
.
��? @
Value
��@ E
,
��E F
Value
��G L
=
��M N
p
��O P
.
��P Q
	Attribute
��Q Z
(
��Z [
$str
��[ b
)
��b c
.
��c d
Value
��d i
}
��j k
;
��k l
if
�� 
(
�� 
props
�� 
.
�� 
Count
�� 
(
�� 
)
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
var
�� 

dictionary
�� 
=
��  
props
��! &
.
��& '
OrderBy
��' .
(
��. /
p
��/ 0
=>
��1 3
p
��4 5
.
��5 6
Name
��6 :
)
��: ;
.
��; <
ToDictionary
��< H
(
��H I
p
��I J
=>
��K M
p
��N O
.
��O P
Name
��P T
,
��T U
p
��V W
=>
��X Z
p
��[ \
.
��\ ]
Value
��] b
)
��b c
;
��c d
foreach
�� 
(
�� "
ICustomTiledImporter
�� -
importer
��. 6
in
��7 9
	importers
��: C
)
��C D
{
�� 
importer
�� 
.
�� $
HandleCustomProperties
�� 3
(
��3 4

gameObject
��4 >
,
��> ?

dictionary
��@ J
)
��J K
;
��K L
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
CustomizePrefab
�� $
(
��$ %

GameObject
��% /
prefab
��0 6
,
��6 7
IList
��8 =
<
��= >"
ICustomTiledImporter
��> R
>
��R S
	importers
��T ]
)
��] ^
{
�� 	
foreach
�� 
(
�� "
ICustomTiledImporter
�� )
importer
��* 2
in
��3 5
	importers
��6 ?
)
��? @
{
�� 
importer
�� 
.
�� 
CustomizePrefab
�� (
(
��( )
prefab
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
private
�� 
IList
�� 
<
�� "
ICustomTiledImporter
�� *
>
��* +(
GetCustomImporterInstances
��, F
(
��F G
ImportBehaviour
��G V
importComponent
��W f
)
��f g
{
�� 	
var
�� 

errorTypes
�� 
=
�� 
from
�� !
a
��" #
in
��$ &
	AppDomain
��' 0
.
��0 1

��1 >
.
��> ?

��? L
(
��L M
)
��M N
from
�� !
t
��" #
in
��$ &
a
��' (
.
��( )
GetTypes
��) 1
(
��1 2
)
��2 3
where
�� "
typeof
��# )
(
��) *"
ICustomTiledImporter
��* >
)
��> ?
.
��? @
IsAssignableFrom
��@ P
(
��P Q
t
��Q R
)
��R S
where
�� "
!
��# $
t
��$ %
.
��% &

IsAbstract
��& 0
where
�� "
System
��# )
.
��) *
	Attribute
��* 3
.
��3 4 
GetCustomAttribute
��4 F
(
��F G
t
��G H
,
��H I
typeof
��J P
(
��P Q*
CustomTiledImporterAttribute
��Q m
)
��m n
)
��n o
==
��p r
null
��s w
select
�� #
t
��$ %
;
��% &
foreach
�� 
(
�� 
var
�� 
t
�� 
in
�� 

errorTypes
�� (
)
��( )
{
�� 
importComponent
�� 
.
��  
RecordError
��  +
(
��+ ,
$str
��, u
,
��u v
t
��w x
)
��x y
;
��y z
}
�� 
var
�� 
types
�� 
=
�� 
from
�� 
a
�� 
in
�� !
	AppDomain
��" +
.
��+ ,

��, 9
.
��9 :

��: G
(
��G H
)
��H I
from
�� 
t
�� 
in
�� !
a
��" #
.
��# $
GetTypes
��$ ,
(
��, -
)
��- .
where
�� 
typeof
�� $
(
��$ %"
ICustomTiledImporter
��% 9
)
��9 :
.
��: ;
IsAssignableFrom
��; K
(
��K L
t
��L M
)
��M N
where
�� 
!
�� 
t
��  
.
��  !

IsAbstract
��! +
from
�� 
attr
�� !
in
��" $
System
��% +
.
��+ ,
	Attribute
��, 5
.
��5 6!
GetCustomAttributes
��6 I
(
��I J
t
��J K
,
��K L
typeof
��M S
(
��S T*
CustomTiledImporterAttribute
��T p
)
��p q
)
��q r
let
�� 
custom
�� "
=
��# $
attr
��% )
as
��* ,*
CustomTiledImporterAttribute
��- I
orderby
�� 
custom
��  &
.
��& '
Order
��' ,
select
�� 
t
��  
;
��  !
var
�� 
	instances
�� 
=
�� 
types
�� !
.
��! "
Select
��" (
(
��( )
t
��) *
=>
��+ -
(
��. /"
ICustomTiledImporter
��/ C
)
��C D
	Activator
��D M
.
��M N
CreateInstance
��N \
(
��\ ]
t
��] ^
)
��^ _
)
��_ `
;
��` a
return
�� 
	instances
�� 
.
�� 
ToList
�� #
(
��# $
)
��$ %
;
��% &
}
�� 	
}
�� 
}�� �"
qC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ImportTiled2Unity.Texture.cs
	namespace

 	
Tiled2Unity


 
{ 
partial
class
ImportTiled2Unity
{ 
public 
void 
TextureImported #
(# $
string$ *
texturePath+ 6
)6 7
{ 	
string 
asset 
= 
System !
.! "
IO" $
.$ %
Path% )
.) *
GetFileName* 5
(5 6
texturePath6 A
)A B
;B C
foreach 
( 
var 
importComponent (
in) +
ImportBehaviour, ;
.; <5
)EnumerateImportBehaviors_ByWaitingTexture< e
(e f
assetf k
)k l
)l m
{ 
if 
( 
! 
importComponent $
.$ %#
ImportComplete_Textures% <
.< =
Contains= E
(E F
assetF K
,K L
StringComparerM [
.[ \
OrdinalIgnoreCase\ m
)m n
)n o
{ 
importComponent #
.# $#
ImportComplete_Textures$ ;
.; <
Add< ?
(? @
asset@ E
)E F
;F G
} 
if 
( 
importComponent #
.# $'
IsTextureImportingCompleted$ ?
(? @
)@ A
)A B
{ 
ImportAllMaterials &
(& '
importComponent' 6
)6 7
;7 8
} 
}   
}!! 	
private## 
void## 
ImportAllTextures## &
(##& '
Tiled2Unity##' 2
.##2 3
ImportBehaviour##3 B
importComponent##C R
)##R S
{$$ 	
foreach&& 
(&& 
var&& 
xmlImportTexture&& )
in&&* ,
importComponent&&- <
.&&< =
XmlDocument&&= H
.&&H I
Root&&I M
.&&M N
Elements&&N V
(&&V W
$str&&W f
)&&f g
)&&g h
{'' 
string(( 
filename(( 
=((  !
ImportUtils((" -
.((- . 
GetAttributeAsString((. B
(((B C
xmlImportTexture((C S
,((S T
$str((U _
)((_ `
;((` a
string)) 
data)) 
=)) 
xmlImportTexture)) .
.)). /
Value))/ 4
;))4 5
byte** 
[** 
]** 
bytes** 
=** 
ImportUtils** *
.*** +

(**8 9
data**9 =
)**= >
;**> ?
if-- 
(-- 
!-- 
importComponent-- $
.--$ %
ImportWait_Textures--% 8
.--8 9
Contains--9 A
(--A B
filename--B J
,--J K
StringComparer--L Z
.--Z [
OrdinalIgnoreCase--[ l
)--l m
)--m n
{.. 
importComponent// #
.//# $
ImportWait_Textures//$ 7
.//7 8
Add//8 ;
(//; <
filename//< D
)//D E
;//E F
}00 
string33 

pathToSave33 !
=33" #
GetTextureAssetPath33$ 7
(337 8
filename338 @
)33@ A
;33A B
ImportUtils44 
.44 
ReadyToWrite44 (
(44( )

pathToSave44) 3
)443 4
;444 5
File55 
.55 

(55" #

pathToSave55# -
,55- .
bytes55/ 4
)554 5
;555 6
importComponent66 
.66  "
ImportTiled2UnityAsset66  6
(666 7

pathToSave667 A
)66A B
;66B C
}77 
if:: 
(:: 
importComponent:: 
.::  
ImportWait_Textures::  3
.::3 4
Count::4 9
(::9 :
)::: ;
==::< >
$num::? @
)::@ A
{;; 
ImportAllMaterials<< "
(<<" #
importComponent<<# 2
)<<2 3
;<<3 4
}== 
}>> 	
}?? 
}@@ �H
mC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ImportTiled2Unity.Xml.cs
	namespace 	
Tiled2Unity
 
{ 
partial 
class 
ImportTiled2Unity #
{ 
public 
void 
ImportBegin 
(  
string  &
xmlPath' .
,. /
Tiled2Unity0 ;
.; <
ImportTiled2Unity< M
importTiled2UnityN _
)_ `
{ 	

GameObject 
t2uImporter "
=# $
new% (

GameObject) 3
(3 4
$str4 L
)L M
;M N
t2uImporter 
. 

gameObject "
." #
	transform# ,
., -
SetAsFirstSibling- >
(> ?
)? @
;@ A
var 
importComponent 
=  !
t2uImporter" -
.- .
AddComponent. :
<: ;
Tiled2Unity; F
.F G
ImportBehaviourG V
>V W
(W X
)X Y
;Y Z
if"" 
("" 
LoadTiled2UnityXml"" "
(""" #
importComponent""# 2
,""2 3
xmlPath""4 ;
)""; <
)""< =
{## 
CheckVersion$$ 
($$ 
importComponent$$ ,
,$$, -
importTiled2Unity$$. ?
)$$? @
;$$@ A
ImportAllTextures'' !
(''! "
importComponent''" 1
)''1 2
;''2 3
}(( 
})) 	
private++ 
bool++ 
LoadTiled2UnityXml++ '
(++' (
ImportBehaviour++( 7
importComponent++8 G
,++G H
string++I O
xmlPath++P W
)++W X
{,, 	
try-- 
{.. 
var// 
xml// 
=// 
	XDocument// #
.//# $
Load//$ (
(//( )
xmlPath//) 0
)//0 1
;//1 2
importComponent00 
.00  
XmlDocument00  +
=00, -
xml00. 1
;001 2
var22 
xmlTiled2Unity22 "
=22# $
xml22% (
.22( )
Element22) 0
(220 1
$str221 >
)22> ?
;22? @
importComponent33 
.33  
Tiled2UnityXmlPath33  2
=333 4
xmlPath335 <
;33< =
importComponent44 
.44  &
ExporterTiled2UnityVersion44  :
=44; <
ImportUtils44= H
.44H I 
GetAttributeAsString44I ]
(44] ^
xmlTiled2Unity44^ l
,44l m
$str44n w
)44w x
;44x y
return55 
true55 
;55 
}66 
catch77 
(77 
	Exception77 
e77 
)77 
{88 
string99 
msg99 
=99 
String99 #
.99# $
Format99$ *
(99* +
$str99+ \
,99\ ]
xmlPath99^ e
,99e f
e99g h
.99h i
Message99i p
)99p q
;99q r
Debug:: 
.:: 
LogError:: 
(:: 
msg:: "
)::" #
;::# $
importComponent;; 
.;;  "
DestroyImportBehaviour;;  6
(;;6 7
);;7 8
;;;8 9
}<< 
return>> 
false>> 
;>> 
}?? 	
privateAA 
voidAA 
CheckVersionAA !
(AA! "
Tiled2UnityAA" -
.AA- .
ImportBehaviourAA. =
importComponentAA> M
,AAM N
Tiled2UnityAAO Z
.AAZ [
ImportTiled2UnityAA[ l
importTiled2UnityAAm ~
)AA~ 
{BB 	
tryCC 
{DD 
	TextAssetFF 
	textAssetFF #
=FF$ %
importTiled2UnityFF& 7
.FF7 8#
GetTiled2UnityTextAssetFF8 O
(FFO P
)FFP Q
;FFQ R
	XDocumentGG 
xmlGG 
=GG 
	XDocumentGG  )
.GG) *
ParseGG* /
(GG/ 0
	textAssetGG0 9
.GG9 :
textGG: >
)GG> ?
;GG? @
stringHH &
importerTiled2UnityVersionHH 1
=HH2 3
xmlHH4 7
.HH7 8
ElementHH8 ?
(HH? @
$strHH@ U
)HHU V
.HHV W
ElementHHW ^
(HH^ _
$strHH_ g
)HHg h
.HHh i
	AttributeHHi r
(HHr s
$strHHs |
)HH| }
.HH} ~
Value	HH~ �
;
HH� �
ifJJ 
(JJ 
importComponentJJ #
.JJ# $&
ExporterTiled2UnityVersionJJ$ >
!=JJ? A&
importerTiled2UnityVersionJJB \
)JJ\ ]
{KK 
importComponentLL #
.LL# $

(LL1 2
$str	LL2 �
,
LL� �
importComponent
LL� �
.
LL� � 
Tiled2UnityXmlPath
LL� �
,
LL� �
importComponent
LL� �
.
LL� �(
ExporterTiled2UnityVersion
LL� �
,
LL� �(
importerTiled2UnityVersion
LL� �
)
LL� �
;
LL� �
}MM 
}NN 
catchOO 
(OO 
	ExceptionOO 
eOO 
)OO 
{PP 
importComponentQQ 
.QQ  
RecordErrorQQ  +
(QQ+ ,
$strQQ, g
,QQg h
importComponentQQi x
.QQx y
Tiled2UnityXmlPath	QQy �
,
QQ� �
e
QQ� �
.
QQ� �
Message
QQ� �
)
QQ� �
;
QQ� �
}RR 
}SS 	
privateUU 
UnityEngineUU 
.UU 
MaterialUU $!
CreateMaterialFromXmlUU% :
(UU: ;
XElementUU; C
xmlUUD G
,UUG H
Tiled2UnityUUI T
.UUT U
ImportBehaviourUUU d
importComponentUUe t
)UUt u
{VV 	
boolXX 
useColorKeyXX 
=XX 
xmlXX "
.XX" #
	AttributeXX# ,
(XX, -
$strXX- <
)XX< =
!=XX> @
nullXXA E
;XXE F
boolYY 
usesDepthShaderYY  
=YY! "
ImportUtilsYY# .
.YY. /!
GetAttributeAsBooleanYY/ D
(YYD E
xmlYYE H
,YYH I
$strYYJ \
,YY\ ]
falseYY^ c
)YYc d
;YYd e
string\\ 

shaderName\\ 
=\\ 
$str\\  .
;\\. /
if__ 
(__ 
usesDepthShader__ 
)__  
{`` 

shaderNameaa 
+=aa 
$straa %
;aa% &
}bb 
elsecc 
{dd 

shaderNameee 
+=ee 
$stree '
;ee' (
}ff 
Colorii 
keyColorii 
=ii 
Colorii "
.ii" #
blackii# (
;ii( )
ifjj 
(jj 
useColorKeyjj 
)jj 
{kk 
keyColorll 
=ll 
ImportUtilsll &
.ll& '
GetAttributeAsColorll' :
(ll: ;
xmlll; >
,ll> ?
$strll@ O
)llO P
;llP Q

shaderNamemm 
+=mm 
$strmm *
;mm* +
}nn 
UnityEngineqq 
.qq 
Materialqq  
materialqq! )
=qq* +
nullqq, 0
;qq0 1
tryrr 
{ss 
materialtt 
=tt 
newtt 
UnityEnginett *
.tt* +
Materialtt+ 3
(tt3 4
UnityEnginett4 ?
.tt? @
Shadertt@ F
.ttF G
FindttG K
(ttK L

shaderNamettL V
)ttV W
)ttW X
;ttX Y
}uu 
catchvv 
(vv 
	Exceptionvv 
evv 
)vv 
{ww 
importComponentxx 
.xx  
RecordErrorxx  +
(xx+ ,
$strxx, \
,xx\ ]

shaderNamexx^ h
,xxh i
exxj k
.xxk l
Messagexxl s
)xxs t
;xxt u
}yy 
if{{ 
({{ 
material{{ 
=={{ 
null{{  
){{  !
{|| 
importComponent}} 
.}}  

(}}- .
$str}}. X
)}}X Y
;}}Y Z
material~~ 
=~~ 
new~~ 
UnityEngine~~ *
.~~* +
Material~~+ 3
(~~3 4
UnityEngine~~4 ?
.~~? @
Shader~~@ F
.~~F G
Find~~G K
(~~K L
$str~~L ]
)~~] ^
)~~^ _
;~~_ `
} 
if
�� 
(
�� 
useColorKey
�� 
)
�� 
{
�� 
material
�� 
.
�� 
SetColor
�� !
(
��! "
$str
��" 2
,
��2 3
keyColor
��4 <
)
��< =
;
��= >
}
�� 
return
�� 
material
�� 
;
�� 
}
�� 	
}
�� 
}�� �n
iC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ImportTiled2Unity.cs
	namespace 	
Tiled2Unity
 
{ 
partial
class
ImportTiled2Unity
:
IDisposable
{ 
private 
string 
fullPathToFile %
=& '
$str( *
;* +
private 
string !
pathToTiled2UnityRoot ,
=- .
$str/ 1
;1 2
private 
string &
assetPathToTiled2UnityRoot 1
=2 3
$str4 6
;6 7
public 
ImportTiled2Unity  
(  !
string! '
file( ,
), -
{ 	
this 
. 
fullPathToFile 
=  !
System" (
.( )
IO) +
.+ ,
Path, 0
.0 1
GetFullPath1 <
(< =
file= A
)A B
;B C
this 
. !
pathToTiled2UnityRoot &
=' (
System) /
./ 0
IO0 2
.2 3
Path3 7
.7 8
GetDirectoryName8 H
(H I
thisI M
.M N
fullPathToFileN \
)\ ]
;] ^
int 
index 
= 
this 
. !
pathToTiled2UnityRoot 2
.2 3
LastIndexOf3 >
(> ?
$str? L
,L M
StringComparisonN ^
.^ _&
InvariantCultureIgnoreCase_ y
)y z
;z {
if 
( 
index 
== 
- 
$num 
) 
{ 
Debug 
. 
LogError 
( 
String %
.% &
Format& ,
(, -
$str	- �
,
� �
file
� �
)
� �
)
� �
;
� �
} 
else 
{ 
this   
.   !
pathToTiled2UnityRoot   *
=  + ,
this  - 1
.  1 2!
pathToTiled2UnityRoot  2 G
.  G H
Remove  H N
(  N O
index  O T
+  U V
$str  W d
.  d e
Length  e k
)  k l
;  l m
}!! 
this## 
.## 
fullPathToFile## 
=##  !
this##" &
.##& '
fullPathToFile##' 5
.##5 6
Replace##6 =
(##= >
System##> D
.##D E
IO##E G
.##G H
Path##H L
.##L M"
DirectorySeparatorChar##M c
,##c d
$char##e h
)##h i
;##i j
this$$ 
.$$ !
pathToTiled2UnityRoot$$ &
=$$' (
this$$) -
.$$- .!
pathToTiled2UnityRoot$$. C
.$$C D
Replace$$D K
($$K L
System$$L R
.$$R S
IO$$S U
.$$U V
Path$$V Z
.$$Z ["
DirectorySeparatorChar$$[ q
,$$q r
$char$$s v
)$$v w
;$$w x
this'' 
.'' &
assetPathToTiled2UnityRoot'' +
='', -
this''. 2
.''2 3!
pathToTiled2UnityRoot''3 H
.''H I
Remove''I O
(''O P
$num''P Q
,''Q R
Application''S ^
.''^ _
dataPath''_ g
.''g h
Count''h m
(''m n
)''n o
)''o p
;''p q
this(( 
.(( &
assetPathToTiled2UnityRoot(( +
=((, -
$str((. 6
+((7 8
this((9 =
.((= >&
assetPathToTiled2UnityRoot((> X
;((X Y
})) 	
public++ 
bool++ 
IsTiled2UnityFile++ %
(++% &
)++& '
{,, 	
return-- 
this-- 
.-- 
fullPathToFile-- &
.--& '
EndsWith--' /
(--/ 0
$str--0 B
)--B C
;--C D
}.. 	
public00 
bool00  
IsTiled2UnityTexture00 (
(00( )
)00) *
{11 	
bool22 

startsWith22 
=22 
this22 "
.22" #
fullPathToFile22# 1
.221 2
Contains222 :
(22: ;
$str22; S
)22S T
;22T U
bool33 
endsWithTxt33 
=33 
this33 #
.33# $
fullPathToFile33$ 2
.332 3
EndsWith333 ;
(33; <
$str33< B
)33B C
;33C D
return44 

startsWith44 
&&44  
!44! "
endsWithTxt44" -
;44- .
}55 	
public77 
bool77 !
IsTiled2UnityMaterial77 )
(77) *
)77* +
{88 	
bool99 

startsWith99 
=99 
this99 "
.99" #
fullPathToFile99# 1
.991 2
Contains992 :
(99: ;
$str99; T
)99T U
;99U V
bool:: 
endsWith:: 
=:: 
this::  
.::  !
fullPathToFile::! /
.::/ 0
EndsWith::0 8
(::8 9
$str::9 ?
)::? @
;::@ A
return;; 

startsWith;; 
&&;;  
endsWith;;! )
;;;) *
}<< 	
public>> 
bool>> %
IsTiled2UnityWavefrontObj>> -
(>>- .
)>>. /
{?? 	
bool@@ 
contains@@ 
=@@ 
this@@  
.@@  !
fullPathToFile@@! /
.@@/ 0
Contains@@0 8
(@@8 9
$str@@9 O
)@@O P
;@@P Q
boolAA 
endsWithAA 
=AA 
thisAA  
.AA  !
fullPathToFileAA! /
.AA/ 0
EndsWithAA0 8
(AA8 9
$strAA9 ?
)AA? @
;AA@ A
returnBB 
containsBB 
&&BB 
endsWithBB '
;BB' (
}CC 	
publicEE 
boolEE 
IsTiled2UnityPrefabEE '
(EE' (
)EE( )
{FF 	
boolGG 

startsWithGG 
=GG 
thisGG "
.GG" #
fullPathToFileGG# 1
.GG1 2
ContainsGG2 :
(GG: ;
$strGG; R
)GGR S
;GGS T
boolHH 
endsWithHH 
=HH 
thisHH  
.HH  !
fullPathToFileHH! /
.HH/ 0
EndsWithHH0 8
(HH8 9
$strHH9 B
)HHB C
;HHC D
returnII 

startsWithII 
&&II  
endsWithII! )
;II) *
}JJ 	
publicLL 
stringLL 
GetMeshAssetPathLL &
(LL& '
stringLL' -
fileLL. 2
)LL2 3
{MM 	
stringNN 
nameNN 
=NN 
SystemNN  
.NN  !
IONN! #
.NN# $
PathNN$ (
.NN( )'
GetFileNameWithoutExtensionNN) D
(NND E
fileNNE I
)NNI J
;NNJ K
stringOO 
	meshAssetOO 
=OO 
StringOO %
.OO% &
FormatOO& ,
(OO, -
$strOO- A
,OOA B
thisOOC G
.OOG H&
assetPathToTiled2UnityRootOOH b
,OOb c
nameOOd h
)OOh i
;OOi j
returnPP 
	meshAssetPP 
;PP 
}QQ 	
publicSS 
stringSS !
MakeMaterialAssetPathSS +
(SS+ ,
stringSS, 2
fileSS3 7
,SS7 8
boolSS9 =

isResourceSS> H
)SSH I
{TT 	
stringUU 
nameUU 
=UU 
SystemUU  
.UU  !
IOUU! #
.UU# $
PathUU$ (
.UU( )'
GetFileNameWithoutExtensionUU) D
(UUD E
fileUUE I
)UUI J
;UUJ K
ifVV 
(VV 

isResourceVV 
)VV 
{WW 
returnXX 
StringXX 
.XX 
FormatXX $
(XX$ %
$strXX% F
,XXF G
thisXXH L
.XXL M&
assetPathToTiled2UnityRootXXM g
,XXg h
nameXXi m
)XXm n
;XXn o
}YY 
return\\ 
String\\ 
.\\ 
Format\\  
(\\  !
$str\\! 8
,\\8 9
this\\: >
.\\> ?&
assetPathToTiled2UnityRoot\\? Y
,\\Y Z
name\\[ _
)\\_ `
;\\` a
}]] 	
public__ 
string__ (
GetExistingMaterialAssetPath__ 2
(__2 3
string__3 9
file__: >
)__> ?
{`` 	
stringbb 
namebb 
=bb 
Systembb  
.bb  !
IObb! #
.bb# $
Pathbb$ (
.bb( )'
GetFileNameWithoutExtensionbb) D
(bbD E
filebbE I
)bbI J
;bbJ K
stringcc 
filtercc 
=cc 
Stringcc "
.cc" #
Formatcc# )
(cc) *
$strcc* :
,cc: ;
namecc< @
)cc@ A
;ccA B
stringdd 
folderdd 
=dd 
thisdd  
.dd  !&
assetPathToTiled2UnityRootdd! ;
+dd< =
$strdd> J
;ddJ K
stringee 
[ee 
]ee 
filesee 
=ee 

.ee* +

FindAssetsee+ 5
(ee5 6
filteree6 <
,ee< =
newee> A
stringeeB H
[eeH I
]eeI J
{eeK L
foldereeM S
}eeT U
)eeU V
;eeV W
foreachff 
(ff 
varff 
fff 
inff 
filesff #
)ff# $
{gg 
stringhh 
	assetPathhh  
=hh! "

.hh0 1
GUIDToAssetPathhh1 @
(hh@ A
fhhA B
)hhB C
;hhC D
ifii 
(ii 
Stringii 
.ii 
Compareii "
(ii" #
Pathii# '
.ii' ('
GetFileNameWithoutExtensionii( C
(iiC D
	assetPathiiD M
)iiM N
,iiN O
nameiiP T
,iiT U
trueiiV Z
)iiZ [
==ii\ ^
$numii_ `
)ii` a
{jj 
returnkk 
	assetPathkk $
;kk$ %
}ll 
}mm 
returnnn 
$strnn 
;nn 
}oo 	
publicqq 
	TextAssetqq #
GetTiled2UnityTextAssetqq 0
(qq0 1
)qq1 2
{rr 	
stringss 
filess 
=ss 
thisss 
.ss &
assetPathToTiled2UnityRootss 9
+ss: ;
$strss< U
;ssU V
returntt 

.tt  !
LoadAssetAtPathtt! 0
(tt0 1
filett1 5
,tt5 6
typeoftt7 =
(tt= >
	TextAssettt> G
)ttG H
)ttH I
asttJ L
	TextAssetttM V
;ttV W
}uu 	
publicww 
stringww 
GetTextureAssetPathww )
(ww) *
stringww* 0
filenameww1 9
)ww9 :
{xx 	
filenamezz 
=zz 
Systemzz 
.zz 
IOzz  
.zz  !
Pathzz! %
.zz% &
GetFileNamezz& 1
(zz1 2
filenamezz2 :
)zz: ;
;zz; <
string{{ 
textureAsset{{ 
={{  !
String{{" (
.{{( )
Format{{) /
({{/ 0
$str{{0 B
,{{B C
this{{D H
.{{H I&
assetPathToTiled2UnityRoot{{I c
,{{c d
filename{{e m
){{m n
;{{n o
return|| 
textureAsset|| 
;||  
}}} 	
public 
string 
GetPrefabAssetPath (
(( )
string) /
name0 4
,4 5
bool6 :

isResource; E
,E F
stringG M
	extraPathN W
)W X
{
�� 	
string
�� 
prefabAsset
�� 
=
��  
$str
��! #
;
��# $
if
�� 
(
�� 

isResource
�� 
)
�� 
{
�� 
if
�� 
(
�� 
String
�� 
.
�� 

�� (
(
��( )
	extraPath
��) 2
)
��2 3
)
��3 4
{
�� 
prefabAsset
�� 
=
��  !
String
��" (
.
��( )
Format
��) /
(
��/ 0
$str
��0 R
,
��R S
this
��T X
.
��X Y(
assetPathToTiled2UnityRoot
��Y s
,
��s t
name
��u y
)
��y z
;
��z {
}
�� 
else
�� 
{
�� 
prefabAsset
�� 
=
��  !
String
��" (
.
��( )
Format
��) /
(
��/ 0
$str
��0 V
,
��V W
this
��X \
.
��\ ](
assetPathToTiled2UnityRoot
��] w
,
��w x
	extraPath��y �
,��� �
name��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
prefabAsset
�� 
=
�� 
String
�� $
.
��$ %
Format
��% +
(
��+ ,
$str
��, D
,
��D E
this
��F J
.
��J K(
assetPathToTiled2UnityRoot
��K e
,
��e f
name
��g k
)
��k l
;
��l m
}
�� 
return
�� 
prefabAsset
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
}
�� 	
}
�� 
}�� ��
cC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\ImportUtils.cs
	namespace 	
Tiled2Unity
 
{ 
class 	
ImportUtils
 
{ 
public 
static 
string  
GetAttributeAsString 1
(1 2
XElement2 :
elem; ?
,? @
stringA G
attrNameH P
)P Q
{ 	
return 
elem 
. 
	Attribute !
(! "
attrName" *
)* +
.+ ,
Value, 1
;1 2
} 	
public 
static 
string  
GetAttributeAsString 1
(1 2
XElement2 :
elem; ?
,? @
stringA G
attrNameH P
,P Q
stringR X
defaultValueY e
)e f
{ 	

XAttribute 
attr 
= 
elem "
." #
	Attribute# ,
(, -
attrName- 5
)5 6
;6 7
if 
( 
attr 
== 
null 
) 
{ 
return 
defaultValue #
;# $
} 
return    
GetAttributeAsString   '
(  ' (
elem  ( ,
,  , -
attrName  . 6
)  6 7
;  7 8
}!! 	
public## 
static## 
int## 
GetAttributeAsInt## +
(##+ ,
XElement##, 4
elem##5 9
,##9 :
string##; A
attrName##B J
)##J K
{$$ 	
return%% 
Convert%% 
.%% 
ToInt32%% "
(%%" #
elem%%# '
.%%' (
	Attribute%%( 1
(%%1 2
attrName%%2 :
)%%: ;
.%%; <
Value%%< A
)%%A B
;%%B C
}&& 	
public(( 
static(( 
int(( 
GetAttributeAsInt(( +
(((+ ,
XElement((, 4
elem((5 9
,((9 :
string((; A
attrName((B J
,((J K
int((L O
defaultValue((P \
)((\ ]
{)) 	

XAttribute** 
attr** 
=** 
elem** "
.**" #
	Attribute**# ,
(**, -
attrName**- 5
)**5 6
;**6 7
if++ 
(++ 
attr++ 
==++ 
null++ 
)++ 
{,, 
return-- 
defaultValue-- #
;--# $
}.. 
return// 
GetAttributeAsInt// $
(//$ %
elem//% )
,//) *
attrName//+ 3
)//3 4
;//4 5
}00 	
public22 
static22 
float22 
GetAttributeAsFloat22 /
(22/ 0
XElement220 8
elem229 =
,22= >
string22? E
attrName22F N
)22N O
{33 	
return44 
Convert44 
.44 
ToSingle44 #
(44# $
elem44$ (
.44( )
	Attribute44) 2
(442 3
attrName443 ;
)44; <
.44< =
Value44= B
)44B C
;44C D
}55 	
public77 
static77 
float77 
GetAttributeAsFloat77 /
(77/ 0
XElement770 8
elem779 =
,77= >
string77? E
attrName77F N
,77N O
float77P U
defaultValue77V b
)77b c
{88 	

XAttribute99 
attr99 
=99 
elem99 "
.99" #
	Attribute99# ,
(99, -
attrName99- 5
)995 6
;996 7
if:: 
(:: 
attr:: 
==:: 
null:: 
):: 
{;; 
return<< 
defaultValue<< #
;<<# $
}== 
return>> 
GetAttributeAsFloat>> &
(>>& '
elem>>' +
,>>+ ,
attrName>>- 5
)>>5 6
;>>6 7
}?? 	
publicAA 
staticAA 
boolAA !
GetAttributeAsBooleanAA 0
(AA0 1
XElementAA1 9
elemAA: >
,AA> ?
stringAA@ F
attrNameAAG O
)AAO P
{BB 	
returnCC 
ConvertCC 
.CC 
	ToBooleanCC $
(CC$ %
elemCC% )
.CC) *
	AttributeCC* 3
(CC3 4
attrNameCC4 <
)CC< =
.CC= >
ValueCC> C
)CCC D
;CCD E
}DD 	
publicFF 
staticFF 
boolFF !
GetAttributeAsBooleanFF 0
(FF0 1
XElementFF1 9
elemFF: >
,FF> ?
stringFF@ F
attrNameFFG O
,FFO P
boolFFQ U
defaultValueFFV b
)FFb c
{GG 	

XAttributeHH 
attrHH 
=HH 
elemHH "
.HH" #
	AttributeHH# ,
(HH, -
attrNameHH- 5
)HH5 6
;HH6 7
ifII 
(II 
attrII 
==II 
nullII 
)II 
{JJ 
returnKK 
defaultValueKK #
;KK# $
}LL 
returnMM !
GetAttributeAsBooleanMM (
(MM( )
elemMM) -
,MM- .
attrNameMM/ 7
)MM7 8
;MM8 9
}NN 	
publicPP 
staticPP 
TPP 
GetStringAsEnumPP '
<PP' (
TPP( )
>PP) *
(PP* +
stringPP+ 1

enumStringPP2 <
)PP< =
{QQ 	

enumStringRR 
=RR 

enumStringRR #
.RR# $
ReplaceRR$ +
(RR+ ,
$strRR, /
,RR/ 0
$strRR1 4
)RR4 5
;RR5 6
TTT 
valueTT 
=TT 
defaultTT 
(TT 
TTT 
)TT  
;TT  !
tryUU 
{VV 
valueWW 
=WW 
(WW 
TWW 
)WW 
EnumWW 
.WW  
ParseWW  %
(WW% &
typeofWW& ,
(WW, -
TWW- .
)WW. /
,WW/ 0

enumStringWW1 ;
,WW; <
trueWW= A
)WWA B
;WWB C
}XX 
catchYY 
{ZZ 

msg[[ !
=[[" #
new[[$ '

([[5 6
)[[6 7
;[[7 8
msg\\ 
.\\ 
AppendFormat\\  
(\\  !
$str\\! R
,\\R S

enumString\\T ^
,\\^ _
typeof\\` f
(\\f g
T\\g h
)\\h i
.\\i j
ToString\\j r
(\\r s
)\\s t
)\\t u
;\\u v
msg]] 
.]] 
AppendFormat]]  
(]]  !
$str]]! 1
)]]1 2
;]]2 3
foreach__ 
(__ 
T__ 
t__ 
in__ 
Enum__  $
.__$ %
	GetValues__% .
(__. /
typeof__/ 5
(__5 6
T__6 7
)__7 8
)__8 9
)__9 :
{`` 
msgaa 
.aa 
AppendFormataa $
(aa$ %
$straa% .
,aa. /
taa0 1
.aa1 2
ToStringaa2 :
(aa: ;
)aa; <
)aa< =
;aa= >
}bb 
Debugcc 
.cc 
LogErrorcc 
(cc 
msgcc "
.cc" #
ToStringcc# +
(cc+ ,
)cc, -
)cc- .
;cc. /
}dd 
returnff 
valueff 
;ff 
}gg 	
publicii 
staticii 
Tii 
GetAttributeAsEnumii *
<ii* +
Tii+ ,
>ii, -
(ii- .
XElementii. 6
elemii7 ;
,ii; <
stringii= C
attrNameiiD L
)iiL M
{jj 	
stringkk 

enumStringkk 
=kk 
elemkk  $
.kk$ %
	Attributekk% .
(kk. /
attrNamekk/ 7
)kk7 8
.kk8 9
Valuekk9 >
.kk> ?
Replacekk? F
(kkF G
$strkkG J
,kkJ K
$strkkL O
)kkO P
;kkP Q
returnll 
GetStringAsEnumll "
<ll" #
Tll# $
>ll$ %
(ll% &

enumStringll& 0
)ll0 1
;ll1 2
}mm 	
publicoo 
staticoo 
stringoo "
GetAttributeAsFullPathoo 3
(oo3 4
XElementoo4 <
elemoo= A
,ooA B
stringooC I
attrNameooJ R
)ooR S
{pp 	
returnqq 
Systemqq 
.qq 
IOqq 
.qq 
Pathqq !
.qq! "
GetFullPathqq" -
(qq- .
elemqq. 2
.qq2 3
	Attributeqq3 <
(qq< =
attrNameqq= E
)qqE F
.qqF G
ValueqqG L
)qqL M
;qqM N
}rr 	
publictt 
statictt 
Colortt 
GetAttributeAsColortt /
(tt/ 0
XElementtt0 8
elemtt9 =
,tt= >
stringtt? E
attrNamettF N
)ttN O
{uu 	
stringvv 
	htmlColorvv 
=vv  
GetAttributeAsStringvv 3
(vv3 4
elemvv4 8
,vv8 9
attrNamevv: B
)vvB C
;vvC D
ifyy 
(yy 
!yy 
	htmlColoryy 
.yy 

StartsWithyy %
(yy% &
$stryy& )
)yy) *
)yy* +
{zz 
	htmlColor{{ 
={{ 
$str{{ 
+{{  !
	htmlColor{{" +
;{{+ ,
}|| 
if~~ 
(~~ 
	htmlColor~~ 
.~~ 
Length~~  
==~~! #
$num~~$ %
)~~% &
{ 
byte
�� 
a
�� 
=
�� 
byte
�� 
.
�� 
Parse
�� #
(
��# $
	htmlColor
��$ -
.
��- .
	Substring
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; <
)
��< =
,
��= >
System
��? E
.
��E F

��F S
.
��S T
NumberStyles
��T `
.
��` a
	HexNumber
��a j
)
��j k
;
��k l
byte
�� 
r
�� 
=
�� 
byte
�� 
.
�� 
Parse
�� #
(
��# $
	htmlColor
��$ -
.
��- .
	Substring
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; <
)
��< =
,
��= >
System
��? E
.
��E F

��F S
.
��S T
NumberStyles
��T `
.
��` a
	HexNumber
��a j
)
��j k
;
��k l
byte
�� 
g
�� 
=
�� 
byte
�� 
.
�� 
Parse
�� #
(
��# $
	htmlColor
��$ -
.
��- .
	Substring
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; <
)
��< =
,
��= >
System
��? E
.
��E F

��F S
.
��S T
NumberStyles
��T `
.
��` a
	HexNumber
��a j
)
��j k
;
��k l
byte
�� 
b
�� 
=
�� 
byte
�� 
.
�� 
Parse
�� #
(
��# $
	htmlColor
��$ -
.
��- .
	Substring
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; <
)
��< =
,
��= >
System
��? E
.
��E F

��F S
.
��S T
NumberStyles
��T `
.
��` a
	HexNumber
��a j
)
��j k
;
��k l
return
�� 
new
�� 
Color32
�� "
(
��" #
r
��# $
,
��$ %
g
��& '
,
��' (
b
��) *
,
��* +
a
��, -
)
��- .
;
��. /
}
�� 
else
�� 
if
�� 
(
�� 
	htmlColor
�� 
.
�� 
Length
�� %
==
��& (
$num
��) *
)
��* +
{
�� 
byte
�� 
r
�� 
=
�� 
byte
�� 
.
�� 
Parse
�� #
(
��# $
	htmlColor
��$ -
.
��- .
	Substring
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; <
)
��< =
,
��= >
System
��? E
.
��E F

��F S
.
��S T
NumberStyles
��T `
.
��` a
	HexNumber
��a j
)
��j k
;
��k l
byte
�� 
g
�� 
=
�� 
byte
�� 
.
�� 
Parse
�� #
(
��# $
	htmlColor
��$ -
.
��- .
	Substring
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; <
)
��< =
,
��= >
System
��? E
.
��E F

��F S
.
��S T
NumberStyles
��T `
.
��` a
	HexNumber
��a j
)
��j k
;
��k l
byte
�� 
b
�� 
=
�� 
byte
�� 
.
�� 
Parse
�� #
(
��# $
	htmlColor
��$ -
.
��- .
	Substring
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; <
)
��< =
,
��= >
System
��? E
.
��E F

��F S
.
��S T
NumberStyles
��T `
.
��` a
	HexNumber
��a j
)
��j k
;
��k l
return
�� 
new
�� 
Color32
�� "
(
��" #
r
��# $
,
��$ %
g
��& '
,
��' (
b
��) *
,
��* +
$num
��, /
)
��/ 0
;
��0 1
}
�� 
return
�� 
Color
�� 
.
�� 
magenta
��  
;
��  !
}
�� 	
public
�� 
static
�� 
Color
�� !
GetAttributeAsColor
�� /
(
��/ 0
XElement
��0 8
elem
��9 =
,
��= >
string
��? E
attrName
��F N
,
��N O
Color
��P U
defaultValue
��V b
)
��b c
{
�� 	

XAttribute
�� 
attr
�� 
=
�� 
elem
�� "
.
��" #
	Attribute
��# ,
(
��, -
attrName
��- 5
)
��5 6
;
��6 7
if
�� 
(
�� 
attr
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
defaultValue
�� #
;
��# $
}
�� 
return
�� !
GetAttributeAsColor
�� &
(
��& '
elem
��' +
,
��+ ,
attrName
��- 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
static
�� 
void
�� 
ReadyToWrite
�� '
(
��' (
string
��( .
path
��/ 3
)
��3 4
{
�� 	
FileInfo
�� 
info
�� 
=
�� 
new
�� 
FileInfo
��  (
(
��( )
path
��) -
)
��- .
;
��. /
info
�� 
.
�� 
	Directory
�� 
.
�� 
Create
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 
(
�� 
info
�� 
.
�� 

Attributes
��  
&
��! "
FileAttributes
��# 1
.
��1 2
ReadOnly
��2 :
)
��: ;
==
��< >
FileAttributes
��? M
.
��M N
ReadOnly
��N V
)
��V W
{
�� 
throw
�� 
new
�� 
UnityException
�� (
(
��( )
String
��) /
.
��/ 0
Format
��0 6
(
��6 7
$str
��7 I
,
��I J
path
��K O
)
��O P
)
��P Q
;
��Q R
}
�� 
}
�� 	
public
�� 
static
�� 
T
�� "
CreateOrReplaceAsset
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
T
��0 1
asset
��2 7
,
��7 8
string
��9 ?
path
��@ D
)
��D E
where
��F K
T
��L M
:
��N O
UnityEngine
��P [
.
��[ \
Object
��\ b
{
�� 	
T
�� 

�� 
=
�� 
(
�� 
T
��  
)
��  !

��! .
.
��. /
LoadAssetAtPath
��/ >
(
��> ?
path
��? C
,
��C D
typeof
��E K
(
��K L
T
��L M
)
��M N
)
��N O
;
��O P
if
�� 
(
�� 

�� 
==
��  
null
��! %
)
��% &
{
�� 

�� 
.
�� 
CreateAsset
�� )
(
��) *
asset
��* /
,
��/ 0
path
��1 5
)
��5 6
;
��6 7

�� 
=
�� 
asset
��  %
;
��% &
}
�� 
else
�� 
{
�� 

�� 
.
�� 
CopySerialized
�� ,
(
��, -
asset
��- 2
,
��2 3

��4 A
)
��A B
;
��B C
}
�� 
return
�� 

��  
;
��  !
}
�� 	
public
�� 
static
�� 
byte
�� 
[
�� 
]
�� 

�� *
(
��* +
string
��+ 1
base64
��2 8
)
��8 9
{
�� 	
return
�� 
Convert
�� 
.
�� 
FromBase64String
�� +
(
��+ ,
base64
��, 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
static
�� 
string
�� 
Base64ToString
�� +
(
��+ ,
string
��, 2
base64
��3 9
)
��9 :
{
�� 	
byte
�� 
[
�� 
]
�� 
bytes
�� 
=
�� 
Convert
�� "
.
��" #
FromBase64String
��# 3
(
��3 4
base64
��4 :
)
��: ;
;
��; <
return
�� 
Encoding
�� 
.
�� 
ASCII
�� !
.
��! "
	GetString
��" +
(
��+ ,
bytes
��, 1
)
��1 2
;
��2 3
}
�� 	
}
�� 
public
�� 

static
�� 
class
�� 
HelperExtensions
�� (
{
�� 
}
�� 
}�� �L
qC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\SortingLayerExposedEditor.cs
[
CustomEditor
(
typeof
(
Tiled2Unity
.
SortingLayerExposed
)
)
]
public 
class %
SortingLayerExposedEditor
:' (
UnityEditor) 4
.4 5
Editor5 ;
{ 
public 

override 
void 
OnInspectorGUI '
(' (
)( )
{ 
var 
renderer 
= 
( 
target 
as !
SortingLayerExposed" 5
)5 6
.6 7

gameObject7 A
.A B
GetComponentB N
<N O
RendererO W
>W X
(X Y
)Y Z
;Z [
if 

( 
! 
renderer
) 
{ 	
return 
; 
} 	
string 
[ 
] 
sortLayerNames 
=  ! 
GetSortingLayerNames" 6
(6 7
)7 8
;8 9
int 
sortLayerSelection 
=   
GetSortingLayerIndex! 5
(5 6
renderer6 >
,> ?
sortLayerNames@ N
)N O
;O P

GUIContent   
[   
]    
sortingLayerContexts   )
=  * +#
GetSortingLayerContexts  , C
(  C D
)  D E
;  E F
int!!  
newSortingLayerIndex!!  
=!!! "
EditorGUILayout!!# 2
.!!2 3
Popup!!3 8
(!!8 9
new!!9 <

GUIContent!!= G
(!!G H
$str!!H W
)!!W X
,!!X Y
sortLayerSelection!!Z l
,!!l m!
sortingLayerContexts	!!n �
)
!!� �
;
!!� �
if"" 

(""  
newSortingLayerIndex""  
==""! # 
sortingLayerContexts""$ 8
.""8 9
Length""9 ?
-""@ A
$num""B C
)""C D
{## 	
EditorApplication$$ 
.$$ 
ExecuteMenuItem$$ -
($$- .
$str$$. U
)$$U V
;$$V W
}%% 	
else&& 
if&&
(&&  
newSortingLayerIndex&& %
!=&&& (
sortLayerSelection&&) ;
)&&; <
{'' 	
string)) 
newSortingLayerName)) &
=))' (
sortLayerNames))) 7
[))7 8 
newSortingLayerIndex))8 L
]))L M
;))M N
Undo++ 
.++ 
RecordObject++ 
(++ 
renderer++ &
,++& '
$str++( ?
)++? @
;++@ A
renderer,, 
.,, 
sortingLayerName,, %
=,,& '
newSortingLayerName,,( ;
;,,; <

.// 
SetDirty// "
(//" #
renderer//# +
)//+ ,
;//, -
}00 	
int33  
newSortingLayerOrder33  
=33! "
EditorGUILayout33# 2
.332 3
IntField333 ;
(33; <
$str33< L
,33L M
renderer33N V
.33V W
sortingOrder33W c
)33c d
;33d e
if44 

(44  
newSortingLayerOrder44  
!=44! #
renderer44$ ,
.44, -
sortingOrder44- 9
)449 :
{55 	
Undo66 
.66 
RecordObject66 
(66 
renderer66 &
,66& '
$str66( <
)66< =
;66= >
renderer77 
.77 
sortingOrder77 !
=77" # 
newSortingLayerOrder77$ 8
;778 9

.88 
SetDirty88 "
(88" #
renderer88# +
)88+ ,
;88, -
}99 	
}:: 
public<< 

static<< 

GUIContent<< 
[<< 
]<< #
GetSortingLayerContexts<< 6
(<<6 7
)<<7 8
{== 
List>> 
<>> 

GUIContent>>
>>> 
contexts>> !
=>>" #
new>>$ '
List>>( ,
<>>, -

GUIContent>>- 7
>>>7 8
(>>8 9
)>>9 :
;>>: ;
foreach@@ 
(@@ 
string@@ 
	layerName@@ !
in@@" $ 
GetSortingLayerNames@@% 9
(@@9 :
)@@: ;
)@@; <
{AA 	
contextsBB 
.BB 
AddBB 
(BB 
newBB 

GUIContentBB '
(BB' (
	layerNameBB( 1
)BB1 2
)BB2 3
;BB3 4
}CC 	
contextsEE 
.EE 
AddEE 
(EE 

GUIContentEE 
.EE  
noneEE  $
)EE$ %
;EE% &
contextsFF 
.FF 
AddFF 
(FF 
newFF 

GUIContentFF #
(FF# $
$strFF$ 4
)FF4 5
)FF5 6
;FF6 7
returnHH 
contextsHH 
.HH 
ToArrayHH 
(HH  
)HH  !
;HH! "
}II 
publicLL 

staticLL 
stringLL 
[LL 
]LL  
GetSortingLayerNamesLL /
(LL/ 0
)LL0 1
{MM 
TypeNN %
internalEditorUtilityTypeNN
=NN' (
typeofNN) /
(NN/ 0
UnityEditorInternalNN0 C
.NNC D!
InternalEditorUtilityNND Y
)NNY Z
;NNZ [
PropertyInfoOO !
sortingLayersPropertyOO *
=OO+ ,%
internalEditorUtilityTypeOO- F
.OOF G
GetPropertyOOG R
(OOR S
$strOOS f
,OOf g
BindingFlagsOOh t
.OOt u
StaticOOu {
|OO| }
BindingFlags	OO~ �
.
OO� �
	NonPublic
OO� �
)
OO� �
;
OO� �
returnPP 
(PP 
stringPP 
[PP 
]PP 
)PP !
sortingLayersPropertyPP .
.PP. /
GetValuePP/ 7
(PP7 8
nullPP8 <
,PP< =
newPP> A
objectPPB H
[PPH I
$numPPI J
]PPJ K
)PPK L
;PPL M
}QQ 
publicTT 

intTT 
[TT 
]TT $
GetSortingLayerUniqueIDsTT )
(TT) *
)TT* +
{UU 
TypeVV %
internalEditorUtilityTypeVV
=VV' (
typeofVV) /
(VV/ 0
UnityEditorInternalVV0 C
.VVC D!
InternalEditorUtilityVVD Y
)VVY Z
;VVZ [
PropertyInfoWW )
sortingLayerUniqueIDsPropertyWW 2
=WW3 4%
internalEditorUtilityTypeWW5 N
.WWN O
GetPropertyWWO Z
(WWZ [
$strWW[ r
,WWr s
BindingFlags	WWt �
.
WW� �
Static
WW� �
|
WW� �
BindingFlags
WW� �
.
WW� �
	NonPublic
WW� �
)
WW� �
;
WW� �
returnXX 
(XX 
intXX 
[XX 
]XX 
)XX )
sortingLayerUniqueIDsPropertyXX 3
.XX3 4
GetValueXX4 <
(XX< =
nullXX= A
,XXA B
newXXC F
objectXXG M
[XXM N
$numXXN O
]XXO P
)XXP Q
;XXQ R
}YY 
public[[ 

static[[ 
int[[  
GetSortingLayerIndex[[ *
([[* +
Renderer[[+ 3
renderer[[4 <
,[[< =
string[[> D
[[[D E
][[E F

layerNames[[G Q
)[[Q R
{\\ 
for]] 
(]] 
int]]
i]] 
=]] 
$num]] 
;]] 
i]] 
<]] 

layerNames]] &
.]]& '
Length]]' -
;]]- .
++]]/ 1
i]]1 2
)]]2 3
{^^ 	
if__ 
(__ 

layerNames__ 
[__ 
i__ 
]__ 
==__  
renderer__! )
.__) *
sortingLayerName__* :
)__: ;
return`` 
i`` 
;`` 
ifcc 
(cc 

layerNamescc 
[cc 
icc 
]cc 
==cc  
$strcc! *
&&cc+ -
Stringcc. 4
.cc4 5

(ccB C
rendererccC K
.ccK L
sortingLayerNameccL \
)cc\ ]
)cc] ^
returndd 
idd 
;dd 
}ee 	
returngg 
$numgg 
;gg 
}hh 
publicjj 

staticjj 
intjj "
GetSortingLayerIdIndexjj ,
(jj, -
Rendererjj- 5
rendererjj6 >
,jj> ?
intjj@ C
[jjC D
]jjD E
layerIdsjjF N
)jjN O
{kk 
forll 
(ll 
intll
ill 
=ll 
$numll 
;ll 
ill 
<ll 
layerIdsll $
.ll$ %
Lengthll% +
;ll+ ,
++ll- /
ill/ 0
)ll0 1
{mm 	
ifnn 
(nn 
layerIdsnn 
[nn 
inn 
]nn 
==nn 
renderernn '
.nn' (
sortingLayerIDnn( 6
)nn6 7
returnoo 
ioo 
;oo 
}pp 	
returnrr 
$numrr 
;rr 
}ss 
}uu �
nC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\SpriteDepthInMapEditor.cs
	namespace		 	
Tiled2Unity		
 
{

 
[ 
CustomEditor 
( 
typeof 
( 
SpriteDepthInMap )
)) *
)* +
]+ ,
public 

class "
SpriteDepthInMapEditor '
:( )
UnityEditor* 5
.5 6
Editor6 <
{
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	 
DrawDefaultInspector  
(  !
)! "
;" #
SpriteDepthInMap 
depthSprite (
=) *
(+ ,
SpriteDepthInMap, <
)< =
target= C
;C D
if 
( 
	GUILayout 
. 
Button  
(  !
$str! K
)K L
)L M
{ 
if 
( 
depthSprite 
.  
AttachedMap  +
==, .
null/ 3
)3 4
{ 
Debug 
. 
LogError "
(" #
$str# T
)T U
;U V
} 
else 
{ 
depthSprite 
.  
UpdateSpriteDepth  1
(1 2
)2 3
;3 4
} 
} 
} 	
}   
}!! �1
lC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\Tiled2UnityMenuItems.cs
	namespace 	
Tiled2Unity
 
{ 
class 	 
Tiled2UnityMenuItems
 
{ 
[ 	
MenuItem	 
( 
$str >
)> ?
]? @
static 
void 

(! "
)" #
{ 	
	TextAsset 
	textAsset 
=  !

./ 0
LoadAssetAtPath0 ?
(? @
$str@ k
,k l
typeofm s
(s t
	TextAssett }
)} ~
)~ 
as
� �
	TextAsset
� �
;
� �
	XDocument 
xml 
= 
	XDocument %
.% &
Parse& +
(+ ,
	textAsset, 5
.5 6
text6 :
): ;
;; <
string 
version 
= 
xml  
.  !
Element! (
(( )
$str) >
)> ?
.? @
Element@ G
(G H
$strH P
)P Q
.Q R
	AttributeR [
([ \
$str\ e
)e f
.f g
Valueg l
;l m
string 
name 
= 
String  
.  !
Format! '
(' (
$str( F
,F G
versionH O
)O P
;P Q
var 
path 
= 

.$ %

(2 3
$str3 _
,_ `
$stra c
,c d
namee i
,i j
$strk y
)y z
;z {
if   
(   
path   
.   
Length   
!=   
$num    
)    !
{!! 
List"" 
<"" 
string"" 
>"" 
packageFiles"" )
=""* +
new"", /
List""0 4
<""4 5
string""5 ;
>""; <
(""< =
)""= >
;""> ?
packageFiles%% 
.%% 
AddRange%% %
(%%% &!
EnumerateAssetFilesAt%%& ;
(%%; <
$str%%< P
,%%P Q
$str%%Q V
,%%V W
$str%%X a
,%%a b
$str%%c k
,%%k l
$str%%m s
,%%s t
$str	%%u �
,
%%� �
$str
%%� �
)
%%� �
)
%%� �
;
%%� �

.&& 

(&&+ ,
packageFiles&&, 8
.&&8 9
ToArray&&9 @
(&&@ A
)&&A B
,&&B C
path&&D H
)&&H I
;&&I J
}'' 
}(( 	
private66 
static66 
IEnumerable66 "
<66" #
string66# )
>66) *!
EnumerateAssetFilesAt66+ @
(66@ A
string66A G
dir66H K
,66K L
params66M S
string66T Z
[66Z [
]66[ \
endPatterns66] h
)66h i
{77 	
foreach88 
(88 
string88 
f88 
in88  
	Directory88! *
.88* +
GetFiles88+ 3
(883 4
dir884 7
)887 8
)888 9
{99 
if:: 
(:: 
endPatterns:: 
.::  
Any::  #
(::# $
pat::$ '
=>::( *
f::+ ,
.::, -
EndsWith::- 5
(::5 6
pat::6 9
,::9 :
true::; ?
,::? @
null::A E
)::E F
)::F G
)::G H
{;; 
yield<< 
return<<  
f<<! "
;<<" #
}== 
}>> 
foreach@@ 
(@@ 
string@@ 
d@@ 
in@@  
	Directory@@! *
.@@* +
GetDirectories@@+ 9
(@@9 :
dir@@: =
)@@= >
)@@> ?
{AA 
foreachBB 
(BB 
stringBB 
fBB  !
inBB" $!
EnumerateAssetFilesAtBB% :
(BB: ;
dBB; <
,BB< =
endPatternsBB> I
)BBI J
)BBJ K
{CC 
yieldDD 
returnDD  
fDD! "
;DD" #
}EE 
}FF 
}GG 	
privateII 
staticII 
voidII 
DeleteAssetsAtII *
(II* +
stringII+ 1
dirII2 5
)II5 6
{JJ 	
foreachLL 
(LL 
stringLL 
fLL 
inLL  
	DirectoryLL! *
.LL* +
GetFilesLL+ 3
(LL3 4
dirLL4 7
)LL7 8
)LL8 9
{MM 
ifNN 
(NN 
fNN 
.NN 
EndsWithNN 
(NN 
$strNN %
,NN% &
trueNN' +
,NN+ ,
nullNN- 1
)NN1 2
)NN2 3
continueOO 
;OO 
ifQQ 
(QQ 
fQQ 
.QQ 
EndsWithQQ 
(QQ 
$strQQ &
,QQ& '
trueQQ( ,
,QQ, -
nullQQ. 2
)QQ2 3
)QQ3 4
continueRR 
;RR 
ifUU 
(UU 
fUU 
.UU 
EndsWithUU 
(UU 
$strUU $
,UU$ %
trueUU& *
,UU* +
nullUU, 0
)UU0 1
)UU1 2
continueVV 
;VV 
ifYY 
(YY 
fYY 
.YY 
EndsWithYY 
(YY 
$strYY 4
,YY4 5
trueYY6 :
,YY: ;
nullYY< @
)YY@ A
)YYA B
continueZZ 
;ZZ 
if[[ 
([[ 
f[[ 
.[[ 
EndsWith[[ 
([[ 
$str[[ ;
,[[; <
true[[= A
,[[A B
null[[C G
)[[G H
)[[H I
continue\\ 
;\\ 

.^^ 
DeleteAsset^^ )
(^^) *
f^^* +
)^^+ ,
;^^, -
}__ 
}`` 	
}bb 
}cc �b
oC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Editor\TiledAssetPostProcessor.cs
	namespace 	
Tiled2Unity
 
{ 
public 

class #
TiledAssetPostProcessor (
:) *
AssetPostprocessor+ =
{ 
private   
static   
bool   
UseThisImporter   +
(  + ,
string  , 2
	assetPath  3 <
)  < =
{!! 	
string)) 
[)) 
])) 
ignoreThese))  
=))! "
{))# $
$str))% *
,))* +
$str)), 2
,))2 3
$str))5 >
,))> ?
$str))@ B
,))B C
}))D E
;))E F
if** 
(** 
ignoreThese** 
.** 
Any** 
(**  
ext**  #
=>**$ &
String**' -
.**- .
Compare**. 5
(**5 6
ext**6 9
,**9 :
System**; A
.**A B
IO**B D
.**D E
Path**E I
.**I J
GetExtension**J V
(**V W
	assetPath**W `
)**` a
,**a b
true**c g
)**g h
==**i k
$num**l m
)**m n
)**n o
{++ 
return,, 
false,, 
;,, 
}-- 
if00 
(00 
	assetPath00 
.00 
EndsWith00 "
(00" #
$str00# 5
,005 6
StringComparison007 G
.00G H&
InvariantCultureIgnoreCase00H b
)00b c
)00c d
{11 
return22 
true22 
;22 
}33 
return66 
ImportBehaviour66 "
.66" #-
!IsAssetBeingImportedByTiled2Unity66# D
(66D E
	assetPath66E N
)66N O
;66O P
}88 	
private:: 
bool:: 
UseThisImporter:: $
(::$ %
)::% &
{;; 	
return<< 
UseThisImporter<< "
(<<" #
this<<# '
.<<' (
	assetPath<<( 1
)<<1 2
;<<2 3
}== 	
private?? 
static?? 
void?? "
OnPostprocessAllAssets?? 2
(??2 3
string??3 9
[??9 :
]??: ;
importedAssets??< J
,??J K
string??L R
[??R S
]??S T

,??b c
string??d j
[??j k
]??k l
movedAssets??m x
,??x y
string	??z �
[
??� �
]
??� �

??� �
)
??� �
{@@ 	
foreachAA 
(AA 
stringAA 
importedAA $
inAA% '
importedAssetsAA( 6
)AA6 7
{BB 
ifCC 
(CC 
UseThisImporterCC #
(CC# $
importedCC$ ,
)CC, -
)CC- .
{DD 
}FF 
elseGG 
{HH 
continueII 
;II 
}JJ 
usingMM 
(MM 
ImportTiled2UnityMM (
t2uImporterMM) 4
=MM5 6
newMM7 :
ImportTiled2UnityMM; L
(MML M
importedMMM U
)MMU V
)MMV W
{NN 
ifOO 
(OO 
t2uImporterOO #
.OO# $
IsTiled2UnityFileOO$ 5
(OO5 6
)OO6 7
)OO7 8
{PP 
t2uImporterRR #
.RR# $
ImportBeginRR$ /
(RR/ 0
importedRR0 8
,RR8 9
t2uImporterRR: E
)RRE F
;RRF G
}SS 
elseTT 
ifTT 
(TT 
t2uImporterTT (
.TT( ) 
IsTiled2UnityTextureTT) =
(TT= >
)TT> ?
)TT? @
{UU 
t2uImporterWW #
.WW# $
TextureImportedWW$ 3
(WW3 4
importedWW4 <
)WW< =
;WW= >
}XX 
elseYY 
ifYY 
(YY 
t2uImporterYY (
.YY( )!
IsTiled2UnityMaterialYY) >
(YY> ?
)YY? @
)YY@ A
{ZZ 
t2uImporter\\ #
.\\# $
MaterialImported\\$ 4
(\\4 5
imported\\5 =
)\\= >
;\\> ?
}]] 
else^^ 
if^^ 
(^^ 
t2uImporter^^ (
.^^( )%
IsTiled2UnityWavefrontObj^^) B
(^^B C
)^^C D
)^^D E
{__ 
t2uImporteraa #
.aa# $
MeshImportedaa$ 0
(aa0 1
importedaa1 9
)aa9 :
;aa: ;
}bb 
elsecc 
ifcc 
(cc 
t2uImportercc (
.cc( )
IsTiled2UnityPrefabcc) <
(cc< =
)cc= >
)cc> ?
{dd 
t2uImporterff #
.ff# $
PrefabImportedff$ 2
(ff2 3
importedff3 ;
)ff; <
;ff< =
}gg 
}hh 
}jj 
}kk 	
privatemm 
voidmm 
OnPreprocessModelmm &
(mm& '
)mm' (
{nn 	
ifoo 
(oo 
!oo 
UseThisImporteroo  
(oo  !
)oo! "
)oo" #
returnpp 
;pp 


=rr( )
thisrr* .
.rr. /

asrr= ?

;rrM N

.zz 

=zz( ) 
ModelImporterNormalszz* >
.zz> ?
Importzz? E
;zzE F

.{{ 
importTangents{{ (
={{) *!
ModelImporterTangents{{+ @
.{{@ A
None{{A E
;{{E F

.~~ 
importBlendShapes~~ +
=~~, -
false~~. 3
;~~3 4

�� 
.
��  
generateAnimations
�� ,
=
��- .-
ModelImporterGenerateAnimations
��/ N
.
��N O
None
��O S
;
��S T

�� 
.
�� 

�� '
=
��( )(
ModelImporterAnimationType
��* D
.
��D E
None
��E I
;
��I J

�� 
.
�� 
addCollider
�� %
=
��& '
false
��( -
;
��- .

�� 
.
�� 
importMaterials
�� )
=
��* +
false
��, 1
;
��1 2
}
�� 	
private
�� 
void
��  
OnPostprocessModel
�� '
(
��' (

GameObject
��( 2

gameObject
��3 =
)
��= >
{
�� 	
if
�� 
(
�� 
!
�� 
UseThisImporter
��  
(
��  !
)
��! "
)
��" #
return
�� 
;
�� 
foreach
�� 
(
�� 
MeshRenderer
�� !
mr
��" $
in
��% '

gameObject
��( 2
.
��2 3%
GetComponentsInChildren
��3 J
<
��J K
MeshRenderer
��K W
>
��W X
(
��X Y
)
��Y Z
)
��Z [
{
�� 
mr
�� 
.
�� 

gameObject
�� 
.
�� 
AddComponent
�� *
<
��* +!
SortingLayerExposed
��+ >
>
��> ?
(
��? @
)
��@ A
;
��A B
mr
�� 
.
�� 
receiveShadows
�� !
=
��" #
false
��$ )
;
��) *
mr
�� 
.
�� 
shadowCastingMode
�� $
=
��% &
UnityEngine
��' 2
.
��2 3
	Rendering
��3 <
.
��< =
ShadowCastingMode
��= N
.
��N O
Off
��O R
;
��R S
mr
�� 
.
�� "
reflectionProbeUsage
�� '
=
��( )
UnityEngine
��* 5
.
��5 6
	Rendering
��6 ?
.
��? @"
ReflectionProbeUsage
��@ T
.
��T U
Off
��U X
;
��X Y
}
�� 
}
�� 	
private
�� 
UnityEngine
�� 
.
�� 
Material
�� $#
OnAssignMaterialModel
��% :
(
��: ;
Material
��; C
defaultMaterial
��D S
,
��S T
Renderer
��U ]
renderer
��^ f
)
��f g
{
�� 	
if
�� 
(
�� 
!
�� 
UseThisImporter
��  
(
��  !
)
��! "
)
��" #
return
�� 
null
�� 
;
�� 
string
�� 
rootName
�� 
=
�� 
System
�� $
.
��$ %
IO
��% '
.
��' (
Path
��( ,
.
��, -)
GetFileNameWithoutExtension
��- H
(
��H I
this
��I M
.
��M N
	assetPath
��N W
)
��W X
;
��X Y
ImportTiled2Unity
�� 
importer
�� &
=
��' (
new
��) ,
ImportTiled2Unity
��- >
(
��> ?
this
��? C
.
��C D
	assetPath
��D M
)
��M N
;
��N O
return
�� 
importer
�� 
.
�� (
FixMaterialForMeshRenderer
�� 6
(
��6 7
rootName
��7 ?
,
��? @
renderer
��A I
)
��I J
;
��J K
}
�� 	
private
�� 
void
�� !
OnPreprocessTexture
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� 
!
�� 
UseThisImporter
��  
(
��  !
)
��! "
)
��" #
return
�� 
;
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 

�� %
(
��% &
this
��& *
.
��* +

��+ 8
.
��8 9
userData
��9 A
)
��A B
)
��B C
{
�� 
return
�� 
;
�� 
}
�� 
this
�� 
.
�� 

�� 
.
�� 
userData
�� '
=
��( )
$str
��* 7
;
��7 8
TextureImporter
�� 
textureImporter
�� +
=
��, -
this
��. 2
.
��2 3

��3 @
as
��A C
TextureImporter
��D S
;
��S T
textureImporter
�� 
.
�� 
	npotScale
�� %
=
��& '&
TextureImporterNPOTScale
��( @
.
��@ A
None
��A E
;
��E F
textureImporter
�� 
.
��  
convertToNormalmap
�� .
=
��/ 0
false
��1 6
;
��6 7
textureImporter
�� 
.
�� !
alphaIsTransparency
�� /
=
��0 1
true
��2 6
;
��6 7
textureImporter
�� 
.
�� 
spriteImportMode
�� ,
=
��- .
SpriteImportMode
��/ ?
.
��? @
None
��@ D
;
��D E
textureImporter
�� 
.
�� 

�� )
=
��* +
false
��, 1
;
��1 2
textureImporter
�� 
.
�� 

filterMode
�� &
=
��' (

FilterMode
��) 3
.
��3 4
Point
��4 9
;
��9 :
textureImporter
�� 
.
�� 
wrapMode
�� $
=
��% &
TextureWrapMode
��' 6
.
��6 7
Clamp
��7 <
;
��< =
textureImporter
�� 
.
�� 
textureType
�� '
=
��( )!
TextureImporterType
��* =
.
��= >
Default
��> E
;
��E F
textureImporter
�� 
.
�� 
alphaSource
�� '
=
��( )(
TextureImporterAlphaSource
��* D
.
��D E
	FromInput
��E N
;
��N O
textureImporter
�� 
.
�� 
sRGBTexture
�� '
=
��( )
false
��* /
;
��/ 0
textureImporter
�� 
.
�� 
textureShape
�� (
=
��) *"
TextureImporterShape
��+ ?
.
��? @
	Texture2D
��@ I
;
��I J
textureImporter
�� 
.
��  
textureCompression
�� .
=
��/ 0(
TextureImporterCompression
��1 K
.
��K L
Uncompressed
��L X
;
��X Y
}
�� 	
}
�� 
}�� �
eC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\CircleObject.cs
	namespace 	
Tiled2Unity
 
{ 
public 

class 
CircleObject 
: 
	TmxObject  )
{		 
}

 
} �
cC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\GroupLayer.cs
	namespace 	
Tiled2Unity
 
{		 
public

 

class

 

GroupLayer

 
:

 
Tiled2Unity

 )
.

) *
Layer

* /
{ 
}
} �	
hC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\ImportBehaviour.cs
	namespace 	
Tiled2Unity
 
{ 
public 

class 
ImportBehaviour  
:! "

{ 
public 
string 
Tiled2UnityXmlPath (
=) *
$str+ -
;- .
public 
string &
ExporterTiled2UnityVersion 0
=1 2
$str3 P
;P Q
private
�� 
void
�� 
Update
�� 
(
�� 
)
�� 
{
�� 	
Debug
�� 
.
�� 
LogError
�� 
(
�� 
String
�� !
.
��! "
Format
��" (
(
��( )
$str��) �
,��� �
this��� �
.��� �"
Tiled2UnityXmlPath��� �
,��� �
this��� �
.��� �

gameObject��� �
.��� �
name��� �
)��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �
^C:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\Layer.cs
	namespace 	
Tiled2Unity
 
{		 
public 

abstract 
class 
Layer 
:  !

{ 
public
Vector2
Offset
;
} 
} �
dC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\ObjectLayer.cs
	namespace 	
Tiled2Unity
 
{		 
public

 

class

 
ObjectLayer

 
:

 
Tiled2Unity

 *
.

* +
Layer

+ 0
{ 
public 
Color 
Color 
; 
}
} �
fC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\PolygonObject.cs
	namespace 	
Tiled2Unity
 
{		 
public

 

class

 


 
:

  
	TmxObject

! *
{ 
} 
}
gC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\PolylineObject.cs
	namespace 	
Tiled2Unity
 
{ 
public 

class 
PolylineObject 
:  !
	TmxObject" +
{		 
}

 
} �
hC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\RectangleObject.cs
	namespace 	
Tiled2Unity
 
{ 
public 

class 
RectangleObject  
:! "
Tiled2Unity# .
.. /
	TmxObject/ 8
{		 
}

 
} �
lC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\SortingLayerExposed.cs
	namespace 	
Tiled2Unity
 
{ 
public		 

class		 
SortingLayerExposed		 $
:		% &

{

 
} 
} �"
iC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\SpriteDepthInMap.cs
	namespace

 	
Tiled2Unity


 
{ 
public 

class 
SpriteDepthInMap !
:" #

{
[ 	
Tooltip	 
( 
$str H
)H I
]I J
public 
Tiled2Unity 
. 
TiledMap #
AttachedMap$ /
=0 1
null2 6
;6 7
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public 
int 
InteractWithLayer $
=% &
$num' (
;( )
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public 
int 

=! "
$num# $
;$ %
private 
void 
Start 
( 
) 
{ 	
if 
( 
this 
. 
AttachedMap  
==! #
null$ (
)( )
{ 
Debug 
. 
LogError 
( 
String %
.% &
Format& ,
(, -
$str	- �
)
� �
)
� �
;
� �
return 
; 
} 
} 	
private   
void   
Update   
(   
)   
{!! 	
UpdateSpriteDepth"" 
("" 
)"" 
;""  
}## 	
public%% 
void%% 
UpdateSpriteDepth%% %
(%%% &
)%%& '
{&& 	
Vector3(( 
spritePosition(( "
=((# $
this((% )
.(() *

gameObject((* 4
.((4 5
	transform((5 >
.((> ?
position((? G
;((G H
spritePosition)) 
-=)) 
this)) "
.))" #
AttachedMap))# .
.)). /

gameObject))/ 9
.))9 :
	transform)): C
.))C D
position))D L
;))L M
if,, 
(,, 

!=,,  
$num,,! "
),," #
{-- 
int.. 
delta_y.. 
=.. 
this.. "
..." #
AttachedMap..# .
.... /

TileHeight../ 9
-..: ;
this..< @
...@ A

;..N O
spritePosition// 
.// 
y//  
+=//! #
delta_y//$ +
;//+ ,
}00 
Rect22 
mapRect22 
=22 
this22 
.22  
AttachedMap22  +
.22+ ,

GetMapRect22, 6
(226 7
)227 8
;228 9
float33 

=33  !
-33" #
this33# '
.33' (
AttachedMap33( 3
.333 4

TileHeight334 >
/33? @
mapRect33A H
.33H I
height33I O
;33O P
float55 
depth_z55 
=55 
(55 
spritePosition55 +
.55+ ,
y55, -
/55. /
this550 4
.554 5
AttachedMap555 @
.55@ A
ExportScale55A L
/55M N
mapRect55O V
.55V W
height55W ]
)55] ^
+55_ `
(55a b

*55p q
this55r v
.55v w
InteractWithLayer	55w �
)
55� �
;
55� �
this88 
.88 

gameObject88 
.88 
	transform88 %
.88% &
position88& .
=88/ 0
new881 4
Vector3885 <
(88< =
this88= A
.88A B

gameObject88B L
.88L M
	transform88M V
.88V W
position88W _
.88_ `
x88` a
,88a b
this88c g
.88g h

gameObject88h r
.88r s
	transform88s |
.88| }
position	88} �
.
88� �
y
88� �
,
88� �
depth_z
88� �
)
88� �
;
88� �
}99 	
};; 
}<< �
eC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\TileAnimator.cs
	namespace 	
Tiled2Unity
 
{ 
public 

class 
TileAnimator 
: 

{ 
public 
float 
	StartTime 
=  
-! "
$num" #
;# $
public 
float 
Duration 
= 
-  !
$num! "
;" #
public 
float 
TotalAnimationTime '
=( )
-* +
$num+ ,
;, -
private 
float 
timer 
= 
$num 
;  
private 
MeshRenderer 
meshRenderer )
=* +
null, 0
;0 1
private   
void   
Awake   
(   
)   
{!! 	
this"" 
."" 
meshRenderer"" 
="" 
this""  $
.""$ %
GetComponent""% 1
<""1 2
MeshRenderer""2 >
>""> ?
(""? @
)""@ A
;""A B
}## 	
private%% 
void%% 
Start%% 
(%% 
)%% 
{&& 	
Assert(( 
.(( 
IsTrue(( 
((( 
this(( 
.(( 
	StartTime(( (
>=(() +
$num((, -
,((- .
$str((/ M
)((M N
;((N O
Assert)) 
.)) 
IsTrue)) 
()) 
this)) 
.)) 
Duration)) '
>))( )
$num))* +
,))+ ,
$str))- V
)))V W
;))W X
Assert** 
.** 
IsTrue** 
(** 
this** 
.** 
TotalAnimationTime** 1
>**2 3
$num**4 5
,**5 6
$str**7 j
)**j k
;**k l
this,, 
.,, 
timer,, 
=,, 
$num,, 
;,, 
}-- 	
private// 
void// 
Update// 
(// 
)// 
{00 	
this11 
.11 
timer11 
+=11 
Time11 
.11 
	deltaTime11 (
;11( )
while44 
(44 
this44 
.44 
timer44 
>44 
this44  $
.44$ %
TotalAnimationTime44% 7
)447 8
{55 
this66 
.66 
timer66 
-=66 
this66 "
.66" #
TotalAnimationTime66# 5
;665 6
}77 
this99 
.99 
meshRenderer99 
.99 
enabled99 %
=99& '
timer99( -
>=99. 0
this991 5
.995 6
	StartTime996 ?
&&99@ B
timer99C H
<99I J
(99K L
this99L P
.99P Q
	StartTime99Q Z
+99[ \
this99] a
.99a b
Duration99b j
)99j k
;99k l
}:: 	
}<< 
}== �
bC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\TileLayer.cs
	namespace 	
Tiled2Unity
 
{ 
public 

class 
	TileLayer 
: 
Tiled2Unity (
.( )
Layer) .
{		 
} 
} �
cC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\TileObject.cs
	namespace 	
Tiled2Unity
 
{		 
public

 

class

 

TileObject

 
:

 
Tiled2Unity

 )
.

) *
	TmxObject

* 3
{ 
[ 	
Header	 
( 
$str 7
)7 8
]8 9
public
bool
TmxFlippingHorizontal
;
public 
bool 
TmxFlippingVertical '
;' (
[ 	
Header	 
( 
$str (
)( )
]) *
[ 	
Tooltip	 
( 
$str M
)M N
]N O
public 
float 
	TileWidth 
=  
$num! %
;% &
[ 	
Tooltip	 
( 
$str N
)N O
]O P
public 
float 

TileHeight 
=  !
$num" &
;& '
} 
} �
uC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\TiledInitialShaderProperties.cs
	namespace 	
Tiled2Unity
 
{		 
public

class
TiledInitialShaderProperties
:

{ 
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
float 
InitialOpacity #
=$ %
$num& *
;* +
private 
void 
Awake 
( 
) 
{ 	
MeshRenderer 
meshRendrer $
=% &
this' +
.+ ,

gameObject, 6
.6 7
GetComponent7 C
<C D
MeshRendererD P
>P Q
(Q R
)R S
;S T
if 
( 
this 
. 
InitialOpacity #
!=$ &
$num' +
&&, .
meshRendrer/ :
.: ;
material; C
.C D
HasPropertyD O
(O P
$strP X
)X Y
)Y Z
{ 
meshRendrer 
. 
material $
.$ %
SetColor% -
(- .
$str. 6
,6 7
new8 ;
Color< A
(A B
$numB C
,C D
$numE F
,F G
$numH I
,I J
thisK O
.O P
InitialOpacityP ^
)^ _
)_ `
;` a
} 
} 	
} 
} �C
aC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\TiledMap.cs
	namespace 	
Tiled2Unity
 
{		 
public

 

class

 
TiledMap

 
:

 


 )
{ 
public 
enum 
MapOrientation "
{

Orthogonal 
, 
	Isometric 
, 
	Staggered 
, 
	Hexagonal 
, 
} 	
public 
enum 
MapStaggerAxis "
{ 	
X 
,
Y 
,
} 	
public 
enum 
MapStaggerIndex #
{ 	
Odd 
, 
Even 
, 
} 	
public   
MapOrientation   
Orientation   )
=  * +
MapOrientation  , :
.  : ;

Orthogonal  ; E
;  E F
public!! 
MapStaggerAxis!! 
StaggerAxis!! )
=!!* +
MapStaggerAxis!!, :
.!!: ;
X!!; <
;!!< =
public"" 
MapStaggerIndex"" 
StaggerIndex"" +
="", -
MapStaggerIndex"". =
.""= >
Odd""> A
;""A B
public## 
int## 

=##! "
$num### $
;##$ %
public%% 
int%% 
	NumLayers%% 
=%% 
$num%%  
;%%  !
public&& 
int&& 
NumTilesWide&& 
=&&  !
$num&&" #
;&&# $
public'' 
int'' 
NumTilesHigh'' 
=''  !
$num''" #
;''# $
public(( 
int(( 
	TileWidth(( 
=(( 
$num((  
;((  !
public)) 
int)) 

TileHeight)) 
=)) 
$num))  !
;))! "
public** 
float** 
ExportScale**  
=**! "
$num**# '
;**' (
public.. 
int.. 
MapWidthInPixels.. #
=..$ %
$num..& '
;..' (
public// 
int// 
MapHeightInPixels// $
=//% &
$num//' (
;//( )
public22 
Color22 
BackgroundColor22 $
=22% &
Color22' ,
.22, -
black22- 2
;222 3
public44 
float44 %
GetMapWidthInPixelsScaled44 .
(44. /
)44/ 0
{55 	
return66 
this66 
.66 
MapWidthInPixels66 (
*66) *
this66+ /
.66/ 0
	transform660 9
.669 :

lossyScale66: D
.66D E
x66E F
*66G H
this66I M
.66M N
ExportScale66N Y
;66Y Z
}77 	
public99 
float99 &
GetMapHeightInPixelsScaled99 /
(99/ 0
)990 1
{:: 	
return;; 
this;; 
.;; 
MapHeightInPixels;; )
*;;* +
this;;, 0
.;;0 1
	transform;;1 :
.;;: ;

lossyScale;;; E
.;;E F
y;;F G
*;;H I
this;;J N
.;;N O
ExportScale;;O Z
;;;Z [
}<< 	
public>> 
Rect>> 

GetMapRect>> 
(>> 
)>>  
{?? 	
Vector2@@ 
pos_w@@ 
=@@ 
this@@  
.@@  !

gameObject@@! +
.@@+ ,
	transform@@, 5
.@@5 6
position@@6 >
;@@> ?
floatAA 
widthAA 
=AA 
thisAA 
.AA 
MapWidthInPixelsAA /
;AA/ 0
floatBB 
heightBB 
=BB 
thisBB 
.BB  
MapHeightInPixelsBB  1
;BB1 2
returnCC 
newCC 
RectCC 
(CC 
pos_wCC !
.CC! "
xCC" #
,CC# $
pos_wCC% *
.CC* +
yCC+ ,
-CC- .
heightCC/ 5
,CC5 6
widthCC7 <
,CC< =
heightCC> D
)CCD E
;CCE F
}DD 	
publicFF 
RectFF $
GetMapRectInPixelsScaledFF ,
(FF, -
)FF- .
{GG 	
Vector2HH 
pos_wHH 
=HH 
thisHH  
.HH  !

gameObjectHH! +
.HH+ ,
	transformHH, 5
.HH5 6
positionHH6 >
;HH> ?
floatII 

=II  !%
GetMapWidthInPixelsScaledII" ;
(II; <
)II< =
;II= >
floatJJ 
heightInPixelsJJ  
=JJ! "&
GetMapHeightInPixelsScaledJJ# =
(JJ= >
)JJ> ?
;JJ? @
returnKK 
newKK 
RectKK 
(KK 
pos_wKK !
.KK! "
xKK" #
,KK# $
pos_wKK% *
.KK* +
yKK+ ,
-KK- .
heightInPixelsKK/ =
,KK= >

,KKL M
heightInPixelsKKN \
)KK\ ]
;KK] ^
}LL 	
publicNN 
boolNN 
AreTilesStaggeredNN %
(NN% &
)NN& '
{OO 	
returnQQ 
thisQQ 
.QQ 
OrientationQQ #
==QQ$ &
MapOrientationQQ' 5
.QQ5 6
	StaggeredQQ6 ?
||QQ@ B
thisQQC G
.QQG H
OrientationQQH S
==QQT V
MapOrientationQQW e
.QQe f
	HexagonalQQf o
;QQo p
}RR 	
privateTT 
voidTT  
OnDrawGizmosSelectedTT )
(TT) *
)TT* +
{UU 	
Vector3VV 
pos_wVV 
=VV 
thisVV  
.VV  !

gameObjectVV! +
.VV+ ,
	transformVV, 5
.VV5 6
positionVV6 >
;VV> ?
Vector3WW 
topLeftWW 
=WW 
Vector3WW %
.WW% &
zeroWW& *
+WW+ ,
pos_wWW- 2
;WW2 3
Vector3XX 
topRightXX 
=XX 
newXX "
Vector3XX# *
(XX* +%
GetMapWidthInPixelsScaledXX+ D
(XXD E
)XXE F
,XXF G
$numXXH I
)XXI J
+XXK L
pos_wXXM R
;XXR S
Vector3YY 
bottomRightYY 
=YY  !
newYY" %
Vector3YY& -
(YY- .%
GetMapWidthInPixelsScaledYY. G
(YYG H
)YYH I
,YYI J
-YYK L&
GetMapHeightInPixelsScaledYYL f
(YYf g
)YYg h
)YYh i
+YYj k
pos_wYYl q
;YYq r
Vector3ZZ 

bottomLeftZZ 
=ZZ  
newZZ! $
Vector3ZZ% ,
(ZZ, -
$numZZ- .
,ZZ. /
-ZZ0 1&
GetMapHeightInPixelsScaledZZ1 K
(ZZK L
)ZZL M
)ZZM N
+ZZO P
pos_wZZQ V
;ZZV W
float]] 
depth_z]] 
=]] 
-]] 
$num]] !
*]]" #
this]]$ (
.]]( )
	NumLayers]]) 2
;]]2 3
pos_w^^ 
.^^ 
z^^ 
+=^^ 
depth_z^^ 
;^^ 
topLeft__ 
.__ 
z__ 
+=__ 
depth_z__  
;__  !
topRight`` 
.`` 
z`` 
+=`` 
depth_z`` !
;``! "
bottomRightaa 
.aa 
zaa 
+=aa 
depth_zaa $
;aa$ %

bottomLeftbb 
.bb 
zbb 
+=bb 
depth_zbb #
;bb# $
Gizmosdd 
.dd 
colordd 
=dd 
Colordd  
.dd  !
bluedd! %
;dd% &
Gizmosee 
.ee 
DrawLineee 
(ee 
topLeftee #
,ee# $
topRightee% -
)ee- .
;ee. /
Gizmosff 
.ff 
DrawLineff 
(ff 
topRightff $
,ff$ %
bottomRightff& 1
)ff1 2
;ff2 3
Gizmosgg 
.gg 
DrawLinegg 
(gg 
bottomRightgg '
,gg' (

bottomLeftgg) 3
)gg3 4
;gg4 5
Gizmoshh 
.hh 
DrawLinehh 
(hh 

bottomLefthh &
,hh& '
topLefthh( /
)hh/ 0
;hh0 1
}ii 	
}jj 
}kk �
bC:\Users\Public\Documents\Unity Projects\wine-game\Assets\Tiled2Unity\Scripts\Runtime\TmxObject.cs
	namespace 	
Tiled2Unity
 
{		 
public 

class 
	TmxObject 
: 

{ 
[
Header
(
$str
)
]
[ 	
Tooltip	 
( 
$str 1
)1 2
]2 3
public 
int 
TmxId 
; 
[ 	
Tooltip	 
( 
$str 3
)3 4
]4 5
public 
string 
TmxName 
; 
[ 	
Tooltip	 
( 
$str 3
)3 4
]4 5
public 
string 
TmxType 
; 
[ 	
Tooltip	 
( 
$str 7
)7 8
]8 9
public 
Vector2 
TmxPosition "
;" #
[ 	
Tooltip	 
( 
$str 3
)3 4
]4 5
public 
Vector2 
TmxSize 
; 
[ 	
Tooltip	 
( 
$str 7
)7 8
]8 9
public 
float 
TmxRotation  
;  !
}   
}!! �<
^C:\Users\Public\Documents\Unity Projects\wine-game\Assets\ZSmartTile\Classes\ZST_MapManager.cs
public 
class 
ZST_MapManager
: 
object $
{% &
public 
static 
ZST_MapManager 
SharedInstance ,
=- .
new/ 2
ZST_MapManager3 A
(A B
)B C
;C D
static		 
ZST_MapManager		 
(		 
)		 
{		 
}		 
private

 
ZST_MapManager

	 
(

 
)

 
{

 
}

 
private 
bool	 
isMidUpdate 
; 
private 
HashSet	 
< 
string 
> 

updateTags #
=$ %
new& )
HashSet* 1
<1 2
string2 8
>8 9
(9 :
): ;
;; <
private 
HashSet	 
< 

> 
tiles  %
=& '
new( +
HashSet, 3
<3 4

>A B
(B C
)C D
;D E
public 
void 
AddUpdateTag
( 
string  
	updateTag! *
)* +
{, -

updateTags 
. 
Add
( 
	updateTag 
) 
; 
} 
public 
void 
AddTile
( 

tile# '
)' (
{) *
tiles 
. 
Add 
( 
tile 
) 
; 
} 
public 
void 

RemoveTile
( 

tile& *
)* +
{, -
tiles 
. 
Remove 
( 
tile 
) 
; 
} 
public 
void 
HardReloadTiles
( 
) 
{  
tiles 
= 	
new
 
HashSet 
< 

># $
($ %

GameObject% /
./ 0
FindObjectsOfType0 A
<A B

>O P
(P Q
)Q R
)R S
;S T
foreach 	
(
 

tile 
in  
tiles! &
)& '
{( )
AddUpdateTag   
(   
tile   
.   
tileTag   
)   
;   
}!! 
}"" 
public$$ 
void$$ 
Update$$
($$ 
)$$ 
{$$ 
if'' 
('' 
Application'' 
.'' 
	isPlaying'' 
)'' 
{'' 
return'' $
;''$ %
}''% &
foreach)) 	
())
 
string)) 
	updateTag)) 
in)) 

updateTags)) )
)))) *
{))+ ,
List++ 
<++ 

>++ 
adjustableTiles++ &
=++' (
new++) ,
List++- 1
<++1 2

>++? @
(++@ A
)++A B
;++B C
HashSet,, 

<,,
 

.,, 
Coord,, 
>,, 
occupiedCoords,,  .
=,,/ 0
new,,1 4
HashSet,,5 <
<,,< =

.,,J K
Coord,,K P
>,,P Q
(,,Q R
),,R S
;,,S T
foreach.. 

(.. 

tile.. 
in.. !
tiles.." '
)..' (
{..) *
if00 
(00 
tile00 
.00 
tileTag00
!=00 
null00 
&&00 
!00  !
tile00! %
.00% &
tileTag00& -
.00- .
Equals00. 4
(004 5
	updateTag005 >
)00> ?
)00? @
{00A B
continue00B J
;00J K
}00K L
tile22 
.22 	
MarkAsMidUpdate22	 
(22 
)22 
;22 

.44 
Coord44 
coord44 
=44 
tile44  $
.44$ %
GetCoord44% -
(44- .
)44. /
;44/ 0
occupiedCoords55 
.55 
Add55 
(55 
coord55 
)55 
;55 
adjustableTiles77 
.77 
Add77 
(77 
tile77 
)77 
;77 
}88 
foreach:: 

(:: 

tile:: 
in:: !
adjustableTiles::" 1
)::1 2
{::3 4

.<< 
Coord<< 
coord<< 
=<< 
tile<<  $
.<<$ %
GetCoord<<% -
(<<- .
)<<. /
;<</ 0
int>> 
row>> 
=>> 
coord>> 
.>> 
row>> 
;>> 
int?? 
col?? 
=?? 
coord?? 
.?? 
col?? 
;?? 
SystemAA 

.AA
 
ArrayAA 
cardinalDirsAA 
=AA 
SystemAA  &
.AA& '
EnumAA' +
.AA+ ,
	GetValuesAA, 5
(AA5 6
typeofAA6 <
(AA< =

.AAJ K
CardinalDirectionAAK \
)AA\ ]
)AA] ^
;AA^ _
foreachBB 
(BB 

.BB 
CardinalDirectionBB ,
dirBB- 0
inBB1 3
cardinalDirsBB4 @
)BB@ A
{BBB C

.DD 
CoordDD 
offsetDD 
=DD  !

.DD/ 0
dirsToCoordOffsetsDD0 B
[DDB C
dirDDC F
]DDF G
;DDG H
tileFF 	
.FF	 

hasNeighborFF
 
[FF 
dirFF 
]FF 
=FF 
HasNeighborFF (
(FF( )
rowFF) ,
+FF- .
offsetFF/ 5
.FF5 6
rowFF6 9
,FF9 :
colFF; >
+FF? @
offsetFFA G
.FFG H
colFFH K
,FFK L
occupiedCoordsFFM [
)FF[ \
;FF\ ]
}GG 
tileII 
.II 	
UpdateSpriteII	 
(II 
)II 
;II 
}JJ 
}KK 

updateTagsMM 
.MM 
ClearMM
(MM 
)MM 
;MM 
}OO 
privateQQ 
boolQQ	 
HasNeighborQQ 
(QQ 
intQQ 
rowQQ !
,QQ! "
intQQ# &
colQQ' *
,QQ* +
HashSetQQ, 3
<QQ3 4

.QQA B
CoordQQB G
>QQG H
occupiedCoordsQQI W
)QQW X
{QQY Z

.RR 
CoordRR 
coordRR 
=RR 
newRR !

.RR/ 0
CoordRR0 5
(RR5 6
rowRR6 9
,RR9 :
colRR: =
)RR= >
;RR> ?
returnSS 
occupiedCoordsSS	 
.SS 
ContainsSS  
(SS  !
coordSS! &
)SS& '
;SS' (
}TT 
}VV ��
`C:\Users\Public\Documents\Unity Projects\wine-game\Assets\ZSmartTile\Components\ZST_SmartTile.cs
[

 


 
]

 
[ 
ExecuteInEditMode 
] 
[ 
RequireComponent 
( 
typeof 
( 
ZST_SnapToGrid '
)' (
)( )
]) *
public
class

:

{
private 
const 
int '
kSideLengthInPixelsExpected 1
=2 3
$num4 7
;7 8
public 
Color 
color 
= 
Color 
. 
white !
;! "
public 
int 
orderInLayer 
; 
public 

int 
sideLengthInPixels !
=" #'
kSideLengthInPixelsExpected$ ?
;? @
public 
string 
tileTag 
; 
public 
Sprite 
[ 
] 
sprites_center 
;  
public 
Sprite 
[ 
] 
sprites_side 
; 
public 
Sprite 
[ 
]  
sprites_cornerConvex %
;% &
public 
Sprite 
[ 
] !
sprites_cornerConcave &
;& '
private!! 
Sprite!!	 
[!! 
]!! 
sprites_center_Prev!! %
;!!% &
private"" 
Sprite""	 
["" 
]"" 
sprites_side_Prev"" #
;""# $
private## 
Sprite##	 
[## 
]## %
sprites_cornerConvex_Prev## +
;##+ ,
private$$ 
Sprite$$	 
[$$ 
]$$ &
sprites_cornerConcave_Prev$$ ,
;$$, -
public'' 
struct'' 
Coord'' 
{'' 
public(( 
Coord((	 
((( 
int(( 
_row(( 
,(( 
int(( 
_col(( !
)((! "
{((# $
row)) 
=)) 
_row))	 
;))
col** 
=** 
_col**	 
;**
}++ 
public,, 
int,,	 
row,,
;,, 
public-- 
int--	 
col--
;-- 
public.. 
Vector2..	 
	ToVector2.. 
(.. 
).. 
{.. 
Vector2// 

vector2// 
=// 
new// 
Vector2//  
(//  !
col//! $
,//$ %
row//% (
)//( )
;//) *
return00 	
vector200
 
;00 
}11 
}22 
private55 
bool55	 
doReroll55 
;55 
private88 
bool88	 
	midUpdate88 
;88 
private;; 
bool;;	 
areChildrenHidden;; 
;;;  
private>> 
ZST_SnapToGrid>>	 
snap>> 
;>> 
private@@ 
Vector2@@	 
positionPrev@@ 
;@@ 
publicBB 
enumBB 
CardinalDirectionBB
{BB  
ECC 
,CC 
NECC 
,CC 
NCC	 

,CC
 
NWCC 
,CC 
WCC 
,CC 
SWCC 
,CC 
SCC 
,CC 
SECC 
,CC 
}DD 
publicGG 
staticGG 

DictionaryGG 
<GG 
CardinalDirectionGG +
,GG+ ,
CoordGG, 1
>GG1 2
dirsToCoordOffsetsGG3 E
=GGF G
newGGH K

DictionaryGGL V
<GGV W
CardinalDirectionGGW h
,GGh i
CoordGGj o
>GGo p
(GGp q
)GGq r
{GGs t
{II 
CardinalDirectionII 
.II 
EII 
,II 
newII 
CoordII !
(II! "
$numII" #
,II# $
$numII$ %
)II% &
}II& '
,II' (
{JJ 
CardinalDirectionJJ 
.JJ 
NEJJ 
,JJ 
newJJ 
CoordJJ "
(JJ" #
$numJJ# $
,JJ$ %
$numJJ% &
)JJ& '
}JJ' (
,JJ( )
{KK 
CardinalDirectionKK 
.KK 
NKK 
,KK 
newKK 
CoordKK !
(KK! "
$numKK" #
,KK# $
$numKK$ %
)KK% &
}KK& '
,KK' (
{LL 
CardinalDirectionLL 
.LL 
NWLL 
,LL 
newLL 
CoordLL "
(LL" #
$numLL# $
,LL$ %
-LL% &
$numLL& '
)LL' (
}LL( )
,LL) *
{MM 
CardinalDirectionMM 
.MM 
WMM 
,MM 
newMM 
CoordMM !
(MM! "
$numMM" #
,MM# $
-MM$ %
$numMM% &
)MM& '
}MM' (
,MM( )
{NN 
CardinalDirectionNN 
.NN 
SWNN 
,NN 
newNN 
CoordNN "
(NN" #
-NN# $
$numNN$ %
,NN% &
-NN& '
$numNN' (
)NN( )
}NN) *
,NN* +
{OO 
CardinalDirectionOO 
.OO 
SOO 
,OO 
newOO 
CoordOO !
(OO! "
-OO" #
$numOO# $
,OO$ %
$numOO% &
)OO& '
}OO' (
,OO( )
{PP 
CardinalDirectionPP 
.PP 
SEPP 
,PP 
newPP 
CoordPP "
(PP" #
-PP# $
$numPP$ %
,PP% &
$numPP& '
)PP' (
}PP( )
,PP) *
}RR 
;RR 
privateUU 
staticUU	 
CardinalDirectionUU !
[UU! "
]UU" #
spriteDirectionsUU$ 4
=UU5 6
{UU7 8
CardinalDirectionVV 
.VV 
NEVV 
,VV 
CardinalDirectionWW 
.WW 
NWWW 
,WW 
CardinalDirectionXX 
.XX 
SWXX 
,XX 
CardinalDirectionYY 
.YY 
SEYY 
,YY 
}ZZ 
;ZZ 
[]] 
System]] 
.]] 	
Serializable]]	 
]]] 
private^^ 
class^^	 
Quadrant^^ 
{^^ 
public__ 
CardinalDirection__	 
dir__ 
;__ 
public`` 
float``	 
startRot`` 
;`` 
publicaa 
Vector2aa	 
offsetaa 
;aa 
publicbb 
SpriteRendererbb	 
srbb 
;bb 
publiccc 
Spritecc	 
rolledSprite_centercc #
;cc# $
publicdd 
Spritedd	 
rolledSprite_sidedd !
;dd! "
publicee 
Spriteee	 %
rolledSprite_cornerConvexee )
;ee) *
publicff 
Spriteff	 &
rolledSprite_cornerConcaveff *
;ff* +
}gg 
[hh 
SerializeFieldhh 
]hh 
privateii 
Quadrantii	 
[ii 
]ii 
	quadrantsii 
;ii 
publicll 

Dictionaryll 
<ll 
CardinalDirectionll $
,ll$ %
boolll% )
>ll) *
hasNeighborll+ 6
=ll7 8
newll9 <

Dictionaryll= G
<llG H
CardinalDirectionllH Y
,llY Z
boolll[ _
>ll_ `
(ll` a
)lla b
;llb c
voidnn 
Startnn 
(nn 
)nn 
{nn 
SetSnappp 
(pp 
)pp 
;pp 
ifss 
(ss 
	quadrantsss 
==ss 
nullss 
||ss 
	quadrantsss $
.ss$ %
Lengthss% +
<=ss, .
$numss/ 0
)ss0 1
{ss2 3
Listuu 
<uu 
Quadrantuu 
>uu 
quadrantsMutuu 
=uu  
newuu! $
Listuu% )
<uu) *
Quadrantuu* 2
>uu2 3
(uu3 4
)uu4 5
;uu5 6
intww 

=ww 
spriteDirectionsww '
.ww' (
Lengthww( .
;ww. /
foryy 
(yy 
intyy 
iyy 
=yy 
$numyy 
;yy 
iyy 
<yy 

;yy$ %
++yy& (
iyy( )
)yy) *
{yy+ ,

GameObject{{ 
	spriteObj{{ 
={{ 
new{{ 

GameObject{{ )
({{) *
){{* +
;{{+ ,
SpriteRenderer}} 
sr}} 
=}} 
	spriteObj}} !
.}}! "
AddComponent}}" .
<}}. /
SpriteRenderer}}/ =
>}}= >
(}}> ?
)}}? @
;}}@ A
float 	
rot
 
= 
( 
float 
) 
i 
/ 
( 
float 
)  

*. /
$num0 3
;3 4
float
�� 	
theta
��
 
=
�� 
rot
�� 
*
�� 
Mathf
�� 
.
�� 
Deg2Rad
�� &
+
��' (
Mathf
��) .
.
��. /
PI
��/ 1
*
��2 3
$num
��4 9
;
��9 :
Vector2
�� 
offset
�� 
=
�� 
(
�� 
new
�� 
Vector2
�� !
(
��! "
Mathf
��" '
.
��' (
Sign
��( ,
(
��, -
Mathf
��- 2
.
��2 3
Cos
��3 6
(
��6 7
theta
��7 <
)
��< =
)
��= >
,
��> ?
Mathf
��? D
.
��D E
Sign
��E I
(
��I J
Mathf
��J O
.
��O P
Sin
��P S
(
��S T
theta
��T Y
)
��Y Z
)
��Z [
)
��[ \
)
��\ ]
*
��^ _
$num
��` d
;
��d e
CardinalDirection
�� 
dir
�� 
=
�� 
(
�� 
CardinalDirection
�� .
)
��. /
spriteDirections
��/ ?
[
��? @
i
��@ A
]
��A B
;
��B C
	spriteObj
�� 
.
��
name
�� 
=
�� 
$str
�� 
+
��  
dir
��! $
.
��$ %
ToString
��% -
(
��- .
)
��. /
;
��/ 0
	spriteObj
�� 
.
��
	transform
�� 
.
�� 
	SetParent
�� !
(
��! "
	transform
��" +
)
��+ ,
;
��, -
Quadrant
�� 
quadrant
��
=
�� 
new
�� 
Quadrant
�� $
(
��$ %
)
��% &
;
��& '
quadrant
�� 
.
�� 
startRot
��
=
�� 
rot
�� 
;
�� 
quadrant
�� 
.
�� 
dir
��
=
�� 
dir
�� 
;
�� 
quadrant
�� 
.
�� 
offset
��
=
�� 
offset
�� 
;
�� 
quadrant
�� 
.
�� 
sr
��
=
�� 
sr
�� 
;
�� 
quadrantsMut
�� 
.
�� 
Add
�� 
(
�� 
quadrant
�� 
)
�� 
;
�� 
}
�� 
	quadrants
�� 
=
��
quadrantsMut
�� 
.
�� 
ToArray
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
HideChildren
�� 
(
�� 
)
�� 
;
�� 
ZST_MapManager
�� 
.
�� 
SharedInstance
�� 
.
��  
AddTile
��  '
(
��' (
this
��( ,
)
��, -
;
��- .
ZST_MapManager
�� 
.
�� 
SharedInstance
�� 
.
��  
AddUpdateTag
��  ,
(
��, -
tileTag
��- 4
)
��4 5
;
��5 6
}
�� 
void
�� 
Update
�� 
(
�� 
)
��
{
�� 
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� 
)
�� 
{
�� 
return
�� $
;
��$ %
}
��% &
ZST_MapManager
�� 
.
�� 
SharedInstance
�� 
.
��  
Update
��  &
(
��& '
)
��' (
;
��( )
snap
�� 
.
�� 
gridSideLength
��
=
�� 
(
�� 
float
�� $
)
��$ % 
sideLengthInPixels
��% 7
/
��8 9)
kSideLengthInPixelsExpected
��: U
;
��U V
Vector2
�� 	
positionCurr
��
 
=
�� 
snap
�� 
.
��  
GetSnappedPosition
�� 0
(
��0 1
	transform
��1 :
.
��: ;
position
��; C
)
��C D
;
��D E
float
�� 
	threshold
�� 
=
�� 
snap
�� 
.
�� 
gridSideLength
�� '
;
��' (
Vector2
�� 	

��
 
=
�� 
positionCurr
�� &
-
��' (
positionPrev
��) 5
;
��5 6
bool
�� "
didMoveSignificantly
�� 
=
�� 
(
�� 
Mathf
�� 
.
�� 	
Abs
��	 
(
�� 

��
.
�� 
x
�� 
)
�� 
>=
��  
	threshold
��! *
||
��+ -
Mathf
�� 
.
�� 	
Abs
��	 
(
�� 

��
.
�� 
y
�� 
)
�� 
>=
��  
	threshold
��! *
)
�� 
;
�� 
positionPrev
�� 
=
�� 
positionCurr
�� 
;
�� 
bool
�� 
doUpdate
�� 
=
�� "
didMoveSignificantly
�� &
&&
��' )
!
��* +
	midUpdate
��+ 4
;
��4 5
	midUpdate
�� 
=
�� 
false
�� 
;
�� 
if
�� 
(
�� 
doUpdate
�� 
)
�� 
{
�� 
ZST_MapManager
�� 
.
��  
SharedInstance
��  .
.
��. /
AddUpdateTag
��/ ;
(
��; <
tileTag
��< C
)
��C D
;
��D E
}
��E F
float
��  
gridSideLengthCurr
�� 
=
�� 
snap
�� !
.
��! "
gridSideLength
��" 0
;
��0 1
foreach
�� 	
(
��
 
Quadrant
�� 
quadrant
�� 
in
�� 
	quadrants
��  )
)
��) *
{
��+ ,
quadrant
�� 
.
�� 
sr
�� 
.
�� 
	transform
�� 
.
�� 

�� &
=
��' (
quadrant
��) 1
.
��1 2
offset
��2 8
*
��9 : 
gridSideLengthCurr
��; M
*
��N O
$num
��P T
;
��T U
quadrant
�� 
.
�� 
sr
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� #
=
��$ %
Vector2
��& -
.
��- .
one
��. 1
*
��2 3
$num
��4 8
;
��8 9
}
�� 
bool
�� '
hasInputSpriteDataChanged
��  
=
��! "
(
��# $
sprites_center
�� 
!=
�� !
sprites_center_Prev
�� (
||
��) +
sprites_side
�� 
!=
�� 
sprites_side_Prev
�� $
||
��% '"
sprites_cornerConvex
�� 
!=
�� '
sprites_cornerConvex_Prev
�� 4
||
��5 7#
sprites_cornerConcave
�� 
!=
�� (
sprites_cornerConcave_Prev
�� 6
)
�� 
;
�� 
if
�� 
(
�� '
hasInputSpriteDataChanged
�� 
)
��  
{
��! "
UpdateSprite
��" .
(
��. /
)
��/ 0
;
��0 1
}
��1 2!
sprites_center_Prev
�� 
=
�� 
sprites_center
�� &
;
��& '
sprites_side_Prev
�� 
=
�� 
sprites_side
�� "
;
��" #'
sprites_cornerConvex_Prev
�� 
=
�� "
sprites_cornerConvex
�� 2
;
��2 3(
sprites_cornerConcave_Prev
�� 
=
�� #
sprites_cornerConcave
�� 4
;
��4 5
if
�� 
(
�� 
	quadrants
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
foreach
�� 

(
�� 
Quadrant
�� 
quadrant
�� 
in
��  
	quadrants
��! *
)
��* +
{
��, -
SpriteRenderer
�� 
sr
�� 
=
�� 
quadrant
��  
.
��  !
sr
��! #
;
��# $
sr
�� 
.
�� 
sortingOrder
�� 
=
�� 
orderInLayer
�� "
;
��" #
sr
�� 
.
�� 
color
�� 
=
��
color
�� 
;
�� 
}
�� 
}
�� 
}
�� 
void
�� 
OnDrawGizmos
�� 
(
�� 
)
�� 
{
�� 
Gizmos
�� 
.
�� 	
color
��	 
=
�� 
Color
�� 
.
�� 
clear
�� 
;
�� 
SetSnap
�� 
(
�� 
)
�� 
;
�� 
float
�� 
gridSideLength
�� 
=
�� 
snap
�� 
.
�� 
gridSideLength
�� ,
;
��, -
Gizmos
�� 
.
�� 	
DrawCube
��	 
(
�� 
	transform
�� 
.
�� 
position
�� $
,
��$ %
	transform
��% .
.
��. /

localScale
��/ 9
*
��: ;
gridSideLength
��< J
)
��J K
;
��K L
}
�� 
void
�� 
	OnDestroy
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� 
)
�� 
{
�� 
foreach
�� 

(
�� 
Quadrant
�� 
quadrant
�� 
in
��  
	quadrants
��! *
)
��* +
{
��, -
DestroyImmediate
�� 
(
�� 
quadrant
�� 
.
�� 
sr
��  
.
��  !

gameObject
��! +
)
��+ ,
;
��, -
}
�� 
}
�� 
ZST_MapManager
�� 
.
�� 
SharedInstance
�� 
.
��  

RemoveTile
��  *
(
��* +
this
��+ /
)
��/ 0
;
��0 1
ZST_MapManager
�� 
.
�� 
SharedInstance
�� 
.
��  
AddUpdateTag
��  ,
(
��, -
tileTag
��- 4
)
��4 5
;
��5 6
}
�� 
private
�� 
bool
��	 

IsUnrolled
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
	quadrants
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
foreach
�� 

(
�� 
Quadrant
�� 
quadrant
�� 
in
��  
	quadrants
��! *
)
��* +
{
��, -
if
�� 
(
�� 
quadrant
�� 
.
�� !
rolledSprite_center
�� $
==
��% '
null
��( ,
||
��- /
quadrant
�� 
.
�� 
rolledSprite_side
�� "
==
��# %
null
��& *
||
��+ -
quadrant
�� 
.
�� '
rolledSprite_cornerConvex
�� *
==
��+ -
null
��. 2
||
��3 5
quadrant
�� 
.
�� (
rolledSprite_cornerConcave
�� +
==
��, .
null
��/ 3
)
��3 4
{
��5 6
return
�� 
true
�� 
;
�� 
}
�� 
}
�� 
return
�� 	
false
��
 
;
�� 
}
�� 
return
�� 
true
��	 
;
��
}
�� 
private
�� 
Sprite
��	 
RolledSprite
�� 
(
�� 
Sprite
�� #
[
��# $
]
��$ %
sprites
��& -
)
��- .
{
��/ 0
if
�� 
(
�� 
sprites
�� 
==
�� 
null
�� 
||
�� 
sprites
��  
.
��  !
Length
��! '
<=
��( *
$num
��+ ,
)
��, -
{
��. /
return
��/ 5
null
��6 :
;
��: ;
}
��; <
return
�� 
sprites
��	 
[
�� 
(
�� 
int
�� 
)
�� 
(
�� 
Random
�� 
.
�� 
value
�� #
*
��$ %
sprites
��& -
.
��- .
Length
��. 4
)
��4 5
]
��5 6
;
��6 7
}
�� 
private
�� 
bool
��	 
HasNeighbor
�� 
(
�� 
CardinalDirection
�� +
dir
��, /
)
��/ 0
{
��1 2
if
�� 
(
�� 
!
�� 
hasNeighbor
�� 
.
�� 
ContainsKey
�� 
(
�� 
dir
�� "
)
��" #
)
��# $
{
��% &
return
��& ,
false
��- 2
;
��2 3
}
��3 4
return
�� 
hasNeighbor
��	 
[
�� 
dir
�� 
]
�� 
;
�� 
}
�� 
public
�� 
void
�� 
UpdateSprite
��
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
doReroll
�� 
||
�� 

IsUnrolled
�� 
(
�� 
)
�� 
)
�� 
{
��  !
foreach
�� 

(
�� 
Quadrant
�� 
quadrant
�� 
in
��  
	quadrants
��! *
)
��* +
{
��, -
quadrant
�� 
.
�� 
rolledSprite_center
��
=
��! "
RolledSprite
��# /
(
��/ 0
sprites_center
��0 >
)
��> ?
;
��? @
quadrant
�� 
.
�� 
rolledSprite_side
��
=
��  
RolledSprite
��! -
(
��- .
sprites_side
��. :
)
��: ;
;
��; <
quadrant
�� 
.
�� 
rolledSprite_cornerConvex
��
=
��' (
RolledSprite
��) 5
(
��5 6"
sprites_cornerConvex
��6 J
)
��J K
;
��K L
quadrant
�� 
.
�� 
rolledSprite_cornerConcave
��
=
��( )
RolledSprite
��* 6
(
��6 7#
sprites_cornerConcave
��7 L
)
��L M
;
��M N
}
�� 
doReroll
�� 
=
�� 
false
�� 
;
�� 
}
�� 
System
�� 
.
�� 	
Array
��	 
dirs
�� 
=
�� 
System
�� 
.
�� 
Enum
�� !
.
��! "
	GetValues
��" +
(
��+ ,
typeof
��, 2
(
��2 3
CardinalDirection
��3 D
)
��D E
)
��E F
;
��F G
CardinalDirection
�� 
first
�� 
=
�� 
(
�� 
CardinalDirection
�� .
)
��. /
dirs
��/ 3
.
��3 4
GetValue
��4 <
(
��< =
$num
��= >
)
��> ?
;
��? @
CardinalDirection
�� 
last
�� 
=
�� 
(
�� 
CardinalDirection
�� -
)
��- .
dirs
��. 2
.
��2 3
GetValue
��3 ;
(
��; <
dirs
��< @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
foreach
�� 	
(
��
 
Quadrant
�� 
quadrant
�� 
in
�� 
	quadrants
��  )
)
��) *
{
��+ ,
Sprite
�� 	
sprite
��
 
=
�� 
null
�� 
;
�� 
CardinalDirection
�� 
dir
�� 
=
�� 
quadrant
�� #
.
��# $
dir
��$ '
;
��' (
CardinalDirection
�� 
dirCCW
�� 
=
�� 
dir
�� !
.
��! "
Equals
��" (
(
��( )
last
��) -
)
��- .
?
��/ 0
first
��1 6
:
��7 8
dir
��9 <
+
��= >
$num
��? @
;
��@ A
CardinalDirection
�� 
dirCW
�� 
=
�� 
dir
��  
.
��  !
Equals
��! '
(
��' (
first
��( -
)
��- .
?
��/ 0
last
��1 5
:
��6 7
dir
��8 ;
-
��< =
$num
��> ?
;
��? @
float
�� 
rot
��	 
=
��
quadrant
�� 
.
�� 
startRot
��  
;
��  !
if
�� 
(
�� 
HasNeighbor
�� 
(
�� 
dirCW
�� 
)
�� 
&&
�� 
HasNeighbor
�� (
(
��( )
dirCCW
��) /
)
��/ 0
)
��0 1
{
��2 3
if
�� 
(
�� 
HasNeighbor
�� 
(
�� 
dir
�� 
)
�� 
)
�� 
{
�� 
sprite
�� 
=
�� 
quadrant
�� 
.
�� !
rolledSprite_center
�� *
;
��* +
rot
�� 
=
��	 

$num
�� 
;
��
}
�� 
else
�� 

{
�� 
sprite
�� 
=
�� 
quadrant
�� 
.
�� (
rolledSprite_cornerConcave
�� 1
;
��1 2
}
�� 
}
�� 
else
�� 
if
�� 

(
�� 
!
�� 
HasNeighbor
��
(
�� 
dirCW
�� 
)
�� 
&&
��  "
!
��# $
HasNeighbor
��$ /
(
��/ 0
dirCCW
��0 6
)
��6 7
)
��7 8
{
��9 :
sprite
�� 

=
�� 
quadrant
��
.
�� '
rolledSprite_cornerConvex
�� /
;
��/ 0
}
�� 
else
�� 
{
�� 	
sprite
�� 

=
�� 
quadrant
��
.
�� 
rolledSprite_side
�� '
;
��' (
if
�� 
(
�� 
HasNeighbor
�� 
(
�� 
dirCW
�� 
)
�� 
)
�� 
{
�� 
rot
�� 
+=
��	 
$num
�� 
;
�� 
}
�� 
}
�� 
quadrant
�� 
.
�� 
sr
�� 
.
�� 
sprite
�� 
=
�� 
sprite
�� 
;
�� 
quadrant
�� 
.
�� 
sr
�� 
.
�� 
	transform
�� 
.
�� 
rotation
�� !
=
��" #

Quaternion
��$ .
.
��. /
Euler
��/ 4
(
��4 5
$num
��5 6
,
��6 7
$num
��7 8
,
��8 9
rot
��9 <
)
��< =
;
��= >
}
�� 
}
�� 
public
�� 
Coord
�� 
GetCoord
�� 
(
�� 
)
�� 
{
�� 
if
�� 

(
�� 
!
�� 
snap
��
)
�� 
{
�� 
SetSnap
�� 
(
�� 
)
�� 
;
�� 
}
�� 
Vector2
�� 	
gridPos
��
 
=
�� 
snap
�� 
.
�� 
gridSideLength
�� '
==
��( *
$num
��+ ,
?
��- .
Vector2
��/ 6
.
��6 7
zero
��7 ;
:
��< =
(
��> ?
Vector2
��? F
)
��F G
snap
��G K
.
��K L
GetGridPosition
��L [
(
��[ \
)
��\ ]
/
��] ^
snap
��^ b
.
��b c
gridSideLength
��c q
;
��q r
Coord
�� 
coord
�� 
=
�� 
new
�� 
Coord
�� 
(
�� 
(
�� 
int
�� 
)
�� 
gridPos
�� &
.
��& '
y
��' (
,
��( )
(
��) *
int
��* -
)
��- .
gridPos
��. 5
.
��5 6
x
��6 7
)
��7 8
;
��8 9
return
�� 
coord
��	 
;
�� 
}
�� 
public
�� 
void
�� 
MarkAsMidUpdate
��
(
�� 
)
�� 
{
��  
	midUpdate
�� 
=
�� 
true
�� 
;
�� 
}
�� 
public
�� 
void
�� 
RerollSprite
��
(
�� 
)
�� 
{
�� 
doReroll
�� 

=
�� 
true
��
;
�� 
UpdateSprite
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 
void
��  
HideOrShowChildren
��
(
��  
)
��  !
{
��" #
areChildrenHidden
�� 
=
�� 
!
�� 
areChildrenHidden
�� (
;
��( )&
HideOrShowChildrenHelper
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 
void
�� 
HideChildren
��
(
�� 
)
�� 
{
�� 
areChildrenHidden
�� 
=
�� 
true
�� 
;
�� &
HideOrShowChildrenHelper
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
void
��	 
HideOrShowChildrenHelper
�� &
(
��& '
)
��' (
{
��) *
foreach
�� 	
(
��
 
Quadrant
�� 
quadrant
�� 
in
�� 
	quadrants
��  )
)
��) *
{
��+ ,
quadrant
�� 
.
�� 
sr
�� 
.
�� 

gameObject
�� 
.
�� 
	hideFlags
�� #
=
��$ %
areChildrenHidden
��& 7
?
��8 9
	HideFlags
��: C
.
��C D
HideInHierarchy
��D S
:
��T U
	HideFlags
��V _
.
��_ `
None
��` d
;
��d e
}
�� 
}
�� 
public
�� 
bool
�� 
AreChildrenHidden
��
(
�� 
)
��  
{
��! "
return
�� 
areChildrenHidden
��	 
;
�� 
}
�� 
private
�� 
void
�� 
SetSnap
�� 
(
�� 
)
�� 
{
�� 
if
�� 

(
�� 
snap
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� !
;
��! "
}
��" #
snap
�� 
=
��
GetComponent
�� 
<
�� 
ZST_SnapToGrid
�� *
>
��* +
(
��+ ,
)
��, -
;
��- .
snap
�� 
.
�� 
	hideFlags
��
=
�� 
	HideFlags
�� "
.
��" #
HideInInspector
��# 2
;
��2 3
}
�� 
}�� �
aC:\Users\Public\Documents\Unity Projects\wine-game\Assets\ZSmartTile\Components\ZST_SnapToGrid.cs
[ 
ExecuteInEditMode 
] 
public 
class 
ZST_SnapToGrid
: 

{, -
public 
float 
gridSideLength 
= 
$num #
;# $
void		 
Update		 
(		
)		 
{		 
if 
( 
Application 
. 
	isPlaying 
) 
{ 
return $
;$ %
}% &
	transform 
. 

=  !
GetSnappedPosition" 4
(4 5
	transform5 >
.> ?

)L M
;M N
} 
public 
Vector3 
GetGridPosition 
(  
)  !
{" #
return 
GetSnappedPosition	 
( 
	transform %
.% &
position& .
). /
;/ 0
} 
public 
Vector3 
GetSnappedPosition "
(" #
Vector3# *
position+ 3
)3 4
{5 6
if 
( 
gridSideLength 
== 
$num 
) 
{ 
return "
position# +
;+ ,
}, -
Vector3 	
gridPosition
 
= 
new 
Vector3 $
($ %
gridSideLength 
* 
Mathf 
. 
Round 
(  
position  (
.( )
x) *
/+ ,
gridSideLength- ;
); <
,< =
gridSideLength 
* 
Mathf 
. 
Round 
(  
position  (
.( )
y) *
/+ ,
gridSideLength- ;
); <
,< =
gridSideLength 
* 
Mathf 
. 
Round 
(  
position  (
.( )
z) *
/+ ,
gridSideLength- ;
); <
) 
; 
return 
gridPosition	 
; 
}   
}!! �
YC:\Users\Public\Documents\Unity Projects\wine-game\Assets\ZSmartTile\Editor\ZST_Editor.cs
public 
class 

ZST_Editor
: 

{( )
[ 
UnityEditor 
.
	Callbacks 
. 
DidReloadScripts (
]( )
private 
static	 
void 
OnDidReloadScripts '
(' (
)( )
{* +
ZST_MapManager		 
.		 
SharedInstance		 
.		  
HardReloadTiles		  /
(		/ 0
)		0 1
;		1 2
}

 
} 