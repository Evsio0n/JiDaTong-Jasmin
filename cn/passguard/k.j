.bytecode 50.0
.class public final synchronized cn/passguard/k
.super java/lang/Object

.field private static synthetic 'G' [I

.field public static 'a' I

.field public static 'b' Landroid/widget/EditText;

.field private static 'f' I

.field private static 'g' I

.field private 'A' Z

.field private 'B' Z

.field private 'C' Ljava/lang/String;

.field private 'D' Ljava/lang/Thread;

.field private 'E' Lcn/passguard/I;

.field private 'F' I

.field public 'c' Landroid/webkit/WebView;

.field public 'd' Ljava/lang/String;

.field public 'e' Ljava/lang/String;

.field private 'h' Lcn/passguard/f;

.field private 'i' Lcn/passguard/f;

.field private 'j' Lcn/passguard/f;

.field private 'k' Landroid/content/Context;

.field private 'l' Landroid/widget/LinearLayout;

.field private 'm' Landroid/widget/LinearLayout;

.field private 'n' Landroid/widget/LinearLayout;

.field private 'o' Landroid/widget/LinearLayout;

.field private 'p' Landroid/widget/LinearLayout;

.field private 'q' Landroid/view/View$OnClickListener;

.field private 'r' Landroid/view/View$OnLongClickListener;

.field private 's' Landroid/view/View$OnTouchListener;

.field private 't' Landroid/view/View$OnTouchListener;

.field private 'u' Landroid/view/View$OnTouchListener;

.field private 'v' Ljava/util/HashMap;

.field private 'w' Z

.field private 'x' Z

.field private 'y' Z

.field private 'z' Z

.method static <clinit>()V
iconst_0
putstatic cn/passguard/k/f I
iconst_1
putstatic cn/passguard/k/g I
iconst_2
putstatic cn/passguard/k/a I
aconst_null
putstatic cn/passguard/k/b Landroid/widget/EditText;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Lcn/passguard/f;Ljava/util/HashMap;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield cn/passguard/k/h Lcn/passguard/f;
aload 0
aconst_null
putfield cn/passguard/k/i Lcn/passguard/f;
aload 0
aconst_null
putfield cn/passguard/k/j Lcn/passguard/f;
aload 0
aconst_null
putfield cn/passguard/k/k Landroid/content/Context;
aload 0
aconst_null
putfield cn/passguard/k/l Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield cn/passguard/k/m Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield cn/passguard/k/n Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield cn/passguard/k/o Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield cn/passguard/k/p Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield cn/passguard/k/q Landroid/view/View$OnClickListener;
aload 0
aconst_null
putfield cn/passguard/k/r Landroid/view/View$OnLongClickListener;
aload 0
aconst_null
putfield cn/passguard/k/s Landroid/view/View$OnTouchListener;
aload 0
aconst_null
putfield cn/passguard/k/t Landroid/view/View$OnTouchListener;
aload 0
aconst_null
putfield cn/passguard/k/u Landroid/view/View$OnTouchListener;
aload 0
aconst_null
putfield cn/passguard/k/v Ljava/util/HashMap;
aload 0
iconst_0
putfield cn/passguard/k/w Z
aload 0
iconst_0
putfield cn/passguard/k/x Z
aload 0
iconst_0
putfield cn/passguard/k/y Z
aload 0
iconst_0
putfield cn/passguard/k/z Z
aload 0
iconst_0
putfield cn/passguard/k/A Z
aload 0
iconst_0
putfield cn/passguard/k/B Z
aload 0
aconst_null
putfield cn/passguard/k/C Ljava/lang/String;
aload 0
aconst_null
putfield cn/passguard/k/D Ljava/lang/Thread;
aload 0
aconst_null
putfield cn/passguard/k/E Lcn/passguard/I;
aload 0
aconst_null
putfield cn/passguard/k/c Landroid/webkit/WebView;
aload 0
ldc ""
putfield cn/passguard/k/d Ljava/lang/String;
aload 0
iconst_0
putfield cn/passguard/k/F I
aload 0
invokestatic cn/passguard/PassGuardEncrypt/makeKey()I
putfield cn/passguard/k/F I
aload 0
aload 1
putfield cn/passguard/k/k Landroid/content/Context;
aload 0
aload 2
putfield cn/passguard/k/h Lcn/passguard/f;
aload 0
aload 2
putfield cn/passguard/k/j Lcn/passguard/f;
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield cn/passguard/k/v Ljava/util/HashMap;
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/a Lcn/passguard/y;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/b Lcn/passguard/y;
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/c Lcn/passguard/y;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/d Lcn/passguard/y;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/g Lcn/passguard/y;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/h Lcn/passguard/y;
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/i Lcn/passguard/y;
bipush 100
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/j Lcn/passguard/y;
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/k Lcn/passguard/y;
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/l Lcn/passguard/y;
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/m Lcn/passguard/y;
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/n Lcn/passguard/y;
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/o Lcn/passguard/y;
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
getstatic cn/passguard/y/f Lcn/passguard/y;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
aload 0
aload 3
invokespecial cn/passguard/k/a(Ljava/util/HashMap;)V
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ifnonnull L1
aload 0
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokestatic cn/passguard/I/a(Landroid/content/Context;)Lcn/passguard/I;
putfield cn/passguard/k/E Lcn/passguard/I;
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L2
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 2
aload 0
getstatic cn/passguard/y/d Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L3
ldc "numpad_l"
astore 1
L4:
aload 0
aload 2
aload 1
aload 0
getstatic cn/passguard/y/c Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
invokevirtual cn/passguard/I/a(Ljava/lang/String;Z)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield cn/passguard/k/l Landroid/widget/LinearLayout;
L5:
aload 0
getstatic cn/passguard/y/d Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L6
aload 0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ldc "LetterGroup"
invokevirtual android/widget/LinearLayout/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield cn/passguard/k/m Landroid/widget/LinearLayout;
aload 0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ldc "NumberGroup"
invokevirtual android/widget/LinearLayout/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield cn/passguard/k/n Landroid/widget/LinearLayout;
aload 0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ldc "SpecialGroup"
invokevirtual android/widget/LinearLayout/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield cn/passguard/k/o Landroid/widget/LinearLayout;
aload 0
getstatic cn/passguard/y/f Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L7
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/o Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L7:
new android/widget/EditText
dup
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokespecial android/widget/EditText/<init>(Landroid/content/Context;)V
astore 1
aload 1
putstatic cn/passguard/k/b Landroid/widget/EditText;
aload 1
iconst_0
invokevirtual android/widget/EditText/setGravity(I)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setLongClickable(Z)V
aload 0
getfield cn/passguard/k/q Landroid/view/View$OnClickListener;
ifnonnull L8
aload 0
new cn/passguard/o
dup
aload 0
invokespecial cn/passguard/o/<init>(Lcn/passguard/k;)V
putfield cn/passguard/k/q Landroid/view/View$OnClickListener;
L8:
aload 0
getfield cn/passguard/k/r Landroid/view/View$OnLongClickListener;
ifnonnull L9
aload 0
new cn/passguard/r
dup
aload 0
invokespecial cn/passguard/r/<init>(Lcn/passguard/k;)V
putfield cn/passguard/k/r Landroid/view/View$OnLongClickListener;
L9:
aload 0
getfield cn/passguard/k/s Landroid/view/View$OnTouchListener;
ifnonnull L10
aload 0
new cn/passguard/u
dup
aload 0
invokespecial cn/passguard/u/<init>(Lcn/passguard/k;)V
putfield cn/passguard/k/s Landroid/view/View$OnTouchListener;
L10:
aload 0
getfield cn/passguard/k/t Landroid/view/View$OnTouchListener;
ifnonnull L11
aload 0
new cn/passguard/v
dup
aload 0
invokespecial cn/passguard/v/<init>(Lcn/passguard/k;)V
putfield cn/passguard/k/t Landroid/view/View$OnTouchListener;
L11:
aload 0
getfield cn/passguard/k/u Landroid/view/View$OnTouchListener;
ifnonnull L12
aload 0
new cn/passguard/w
dup
aload 0
invokespecial cn/passguard/w/<init>(Lcn/passguard/k;)V
putfield cn/passguard/k/u Landroid/view/View$OnTouchListener;
L12:
aload 0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
invokespecial cn/passguard/k/a(Landroid/widget/LinearLayout;)V
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
new cn/passguard/n
dup
aload 0
invokespecial cn/passguard/n/<init>(Lcn/passguard/k;)V
invokevirtual android/widget/LinearLayout/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
L1:
aload 0
getstatic cn/passguard/y/h Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
getstatic cn/passguard/k/g I
iand
ifeq L13
aload 0
invokespecial cn/passguard/k/n()V
L13:
return
L3:
ldc "passguard_l"
astore 1
goto L4
L2:
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 2
aload 0
getstatic cn/passguard/y/d Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L14
ldc "numpad_s"
astore 1
L15:
aload 0
aload 2
aload 1
aload 0
getstatic cn/passguard/y/c Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
invokevirtual cn/passguard/I/a(Ljava/lang/String;Z)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield cn/passguard/k/l Landroid/widget/LinearLayout;
goto L5
L14:
ldc "passguard_s"
astore 1
goto L15
L6:
aload 0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ldc "NumberGroup"
invokevirtual android/widget/LinearLayout/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield cn/passguard/k/p Landroid/widget/LinearLayout;
goto L7
.limit locals 4
.limit stack 5
.end method

.method static synthetic a(Lcn/passguard/k;Landroid/graphics/Point;Landroid/view/View;)Landroid/view/View;
aconst_null
astore 11
aconst_null
astore 10
iconst_m1
istore 5
aload 11
astore 0
aload 2
ifnull L0
aload 11
astore 0
aload 1
ifnull L0
aload 2
checkcast android/widget/LinearLayout
astore 11
aload 11
invokevirtual android/widget/LinearLayout/getChildCount()I
pop
iconst_0
istore 6
aload 10
astore 0
L1:
iload 6
aload 11
invokevirtual android/widget/LinearLayout/getChildCount()I
if_icmplt L2
iload 5
bipush 50
if_icmple L0
aconst_null
astore 0
L0:
aload 0
areturn
L2:
aload 11
iload 6
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/Button
ifeq L3
aload 11
iload 6
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/Button
astore 2
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 10
aload 2
aload 10
invokevirtual android/widget/Button/getGlobalVisibleRect(Landroid/graphics/Rect;)Z
pop
iconst_2
newarray int
astore 12
aload 2
aload 12
invokevirtual android/widget/Button/getLocationOnScreen([I)V
aload 12
iconst_0
iaload
istore 7
aload 10
getfield android/graphics/Rect/right I
aload 10
getfield android/graphics/Rect/left I
isub
iconst_2
idiv
istore 8
aload 12
iconst_1
iaload
istore 9
new android/graphics/Point
dup
iload 7
iload 8
iadd
aload 10
getfield android/graphics/Rect/bottom I
aload 10
getfield android/graphics/Rect/top I
isub
iconst_2
idiv
iload 9
iadd
invokespecial android/graphics/Point/<init>(II)V
astore 10
aload 10
getfield android/graphics/Point/x I
aload 1
getfield android/graphics/Point/x I
isub
invokestatic java/lang/Math/abs(I)I
i2d
ldc2_w 2.0D
invokestatic java/lang/Math/pow(DD)D
aload 10
getfield android/graphics/Point/y I
aload 1
getfield android/graphics/Point/y I
isub
invokestatic java/lang/Math/abs(I)I
i2d
ldc2_w 2.0D
invokestatic java/lang/Math/pow(DD)D
dadd
invokestatic java/lang/Math/sqrt(D)D
dstore 3
iload 5
iconst_m1
if_icmpne L4
dload 3
d2i
istore 5
aload 2
astore 0
L5:
iload 6
iconst_1
iadd
istore 6
goto L1
L4:
dload 3
iload 5
i2d
dcmpg
ifge L3
dload 3
d2i
istore 5
aload 2
astore 0
goto L5
L3:
goto L5
.limit locals 13
.limit stack 6
.end method

.method private a(I)V
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
checkcast android/app/Activity
new cn/passguard/m
dup
aload 0
iload 1
invokespecial cn/passguard/m/<init>(Lcn/passguard/k;I)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method private a(Landroid/widget/LinearLayout;)V
iconst_0
istore 2
L0:
iload 2
aload 1
invokevirtual android/widget/LinearLayout/getChildCount()I
if_icmple L1
return
L1:
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/LinearLayout
ifeq L2
aload 0
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/LinearLayout
invokespecial cn/passguard/k/a(Landroid/widget/LinearLayout;)V
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/Button
ifne L4
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/ImageButton
ifeq L3
L4:
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
aload 0
getfield cn/passguard/k/q Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
aload 0
getfield cn/passguard/k/t Landroid/view/View$OnTouchListener;
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ldc "backspace"
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L5
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
aload 0
getfield cn/passguard/k/r Landroid/view/View$OnLongClickListener;
invokevirtual android/view/View/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 1
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
aload 0
getfield cn/passguard/k/s Landroid/view/View$OnTouchListener;
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
L5:
aload 1
aload 0
getfield cn/passguard/k/u Landroid/view/View$OnTouchListener;
invokevirtual android/widget/LinearLayout/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto L3
.limit locals 3
.limit stack 3
.end method

.method static synthetic a(Lcn/passguard/k;)V
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
ifnull L0
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
astore 3
L1:
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/e()I 0
istore 1
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/f()I 0
istore 2
iload 1
ifne L2
iload 1
iload 2
if_icmpeq L3
L2:
aload 3
astore 4
aload 3
ifnull L4
aload 3
astore 4
aload 3
invokevirtual java/lang/String/length()I
ifle L4
iload 1
iload 2
if_icmpeq L5
new java/lang/StringBuilder
dup
aload 3
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
iload 2
aload 3
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L4:
aload 0
aload 4
invokevirtual java/lang/String/length()I
invokespecial cn/passguard/k/a(I)V
aload 4
ifnull L6
aload 4
invokevirtual java/lang/String/length()I
ifle L6
aload 0
aload 4
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Encrypt(Ljava/lang/String;I)Ljava/lang/String;
putfield cn/passguard/k/C Ljava/lang/String;
L3:
return
L5:
new java/lang/StringBuilder
dup
aload 3
iconst_0
iload 1
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
iload 2
aload 3
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
goto L4
L6:
aload 0
aconst_null
putfield cn/passguard/k/C Ljava/lang/String;
return
L0:
aconst_null
astore 3
goto L1
.limit locals 5
.limit stack 6
.end method

.method static synthetic a(Lcn/passguard/k;Ljava/lang/String;)V
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield cn/passguard/k/o Landroid/widget/LinearLayout;
ifnull L0
aload 1
ldc "changeletter"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/o Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
aload 0
getstatic cn/passguard/y/h Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
getstatic cn/passguard/k/g I
iand
ifeq L2
aload 0
invokespecial cn/passguard/k/n()V
L2:
return
L1:
aload 1
ldc "changenumber"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/o Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L0
L3:
aload 1
ldc "changespecial"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield cn/passguard/k/o Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L0
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/k;Ljava/lang/Thread;)V
aload 0
aload 1
putfield cn/passguard/k/D Ljava/lang/Thread;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/k;Z)V
aload 0
iload 1
putfield cn/passguard/k/x Z
return
.limit locals 2
.limit stack 2
.end method

.method private a(Ljava/util/HashMap;)V
aload 1
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
return
L1:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 2
aload 0
aload 2
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast cn/passguard/y
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual cn/passguard/k/a(Lcn/passguard/y;Ljava/lang/Object;)V
goto L0
.limit locals 3
.limit stack 3
.end method

.method static synthetic b(Lcn/passguard/k;)Lcn/passguard/f;
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic b(Lcn/passguard/k;Z)V
aload 0
iload 1
putfield cn/passguard/k/w Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic b(Lcn/passguard/k;Ljava/lang/String;)Z
aload 0
getstatic cn/passguard/y/l Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
ifnonnull L0
iconst_1
ireturn
L0:
aload 1
aload 0
getstatic cn/passguard/y/l Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/String/matches(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic c(Lcn/passguard/k;Ljava/lang/String;)V
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
ifnull L0
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
astore 4
L1:
aload 1
astore 5
aload 4
ifnull L2
aload 1
astore 5
aload 4
invokevirtual java/lang/String/length()I
ifle L2
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/e()I 0
istore 2
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/f()I 0
istore 3
new java/lang/StringBuilder
dup
aload 4
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
iload 3
aload 4
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L2:
aload 0
aload 5
invokevirtual java/lang/String/length()I
invokespecial cn/passguard/k/a(I)V
aload 5
ifnull L3
aload 5
invokevirtual java/lang/String/length()I
ifle L3
aload 0
aload 5
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Encrypt(Ljava/lang/String;I)Ljava/lang/String;
putfield cn/passguard/k/C Ljava/lang/String;
return
L3:
aload 0
aconst_null
putfield cn/passguard/k/C Ljava/lang/String;
return
L0:
aconst_null
astore 4
goto L1
.limit locals 6
.limit stack 5
.end method

.method static synthetic c(Lcn/passguard/k;Z)V
aload 0
iload 1
putfield cn/passguard/k/z Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic c(Lcn/passguard/k;)Z
aload 0
getfield cn/passguard/k/y Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic d(Lcn/passguard/k;)V
iconst_0
istore 3
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
ifnull L0
iconst_0
istore 1
L1:
iload 1
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmple L2
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
ldc "shift"
invokevirtual android/widget/LinearLayout/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 5
aload 0
getstatic cn/passguard/y/c Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L3
new android/graphics/drawable/StateListDrawable
dup
invokespecial android/graphics/drawable/StateListDrawable/<init>()V
astore 6
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L4
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 7
aload 0
getfield cn/passguard/k/y Z
ifeq L5
ldc "shift_l_press.png"
astore 4
L6:
aload 7
aload 4
invokevirtual cn/passguard/I/b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 4
aload 6
iconst_1
newarray int
dup
iconst_0
ldc_w 16842919
iastore
aload 4
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 7
aload 0
getfield cn/passguard/k/y Z
ifeq L7
ldc "shift_l.png"
astore 4
L8:
aload 7
aload 4
invokevirtual cn/passguard/I/b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 4
aload 6
iconst_0
newarray int
aload 4
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 5
aload 6
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L9:
aload 0
getfield cn/passguard/k/y Z
ifeq L10
L11:
aload 0
iload 3
putfield cn/passguard/k/y Z
L0:
return
L2:
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
iload 1
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 4
iconst_0
istore 2
L12:
iload 2
aload 4
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmple L13
iload 1
iconst_1
iadd
istore 1
goto L1
L13:
aload 4
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/Button
ifeq L14
aload 4
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ldc " "
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L14
aload 4
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/String/length()I
iconst_1
if_icmpgt L14
aload 4
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/Button
astore 5
aload 0
getfield cn/passguard/k/y Z
ifeq L15
aload 5
aload 5
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 5
aload 5
invokevirtual android/widget/Button/getTag()Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
L14:
iload 2
iconst_1
iadd
istore 2
goto L12
L15:
aload 5
aload 5
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 5
aload 5
invokevirtual android/widget/Button/getTag()Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
goto L14
L5:
ldc "shift_l_on_press.png"
astore 4
goto L6
L7:
ldc "shift_l_on.png"
astore 4
goto L8
L4:
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 7
aload 0
getfield cn/passguard/k/y Z
ifeq L16
ldc "shift_press.png"
astore 4
L17:
aload 7
aload 4
invokevirtual cn/passguard/I/b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 4
aload 6
iconst_1
newarray int
dup
iconst_0
ldc_w 16842919
iastore
aload 4
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 7
aload 0
getfield cn/passguard/k/y Z
ifeq L18
ldc "shift.png"
astore 4
L19:
aload 7
aload 4
invokevirtual cn/passguard/I/b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 4
aload 6
iconst_0
newarray int
aload 4
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 5
aload 6
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L9
L16:
ldc "shift_on_press.png"
astore 4
goto L17
L18:
ldc "shift_on.png"
astore 4
goto L19
L3:
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L20
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 6
aload 0
getfield cn/passguard/k/y Z
ifeq L21
ldc "shift_l.png"
astore 4
L22:
aload 5
aload 6
aload 4
invokevirtual cn/passguard/I/b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L9
L21:
ldc "shift_l_on.png"
astore 4
goto L22
L20:
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 6
aload 0
getfield cn/passguard/k/y Z
ifeq L23
ldc "shift.png"
astore 4
L24:
aload 5
aload 6
aload 4
invokevirtual cn/passguard/I/b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L9
L23:
ldc "shift_on.png"
astore 4
goto L24
L10:
iconst_1
istore 3
goto L11
.limit locals 8
.limit stack 5
.end method

.method static synthetic e(Lcn/passguard/k;)Z
aload 0
getfield cn/passguard/k/x Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic f(Lcn/passguard/k;)V
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
ldc "shift"
invokevirtual android/widget/LinearLayout/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 2
aload 0
getstatic cn/passguard/y/c Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L1
new android/graphics/drawable/StateListDrawable
dup
invokespecial android/graphics/drawable/StateListDrawable/<init>()V
astore 3
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L2
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 4
aload 0
getfield cn/passguard/k/w Z
ifeq L3
ldc "shift_l_press.png"
astore 1
L4:
aload 4
aload 1
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 1
aload 3
iconst_1
newarray int
dup
iconst_0
ldc_w 16842919
iastore
aload 1
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 1
aload 0
getfield cn/passguard/k/w Z
ifeq L5
ldc "shift_l.png"
astore 0
L6:
aload 1
aload 0
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 0
aload 3
iconst_0
newarray int
aload 0
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 2
aload 3
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L0:
return
L3:
ldc "caps_l_press.png"
astore 1
goto L4
L5:
ldc "caps_l.png"
astore 0
goto L6
L2:
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 4
aload 0
getfield cn/passguard/k/w Z
ifeq L7
ldc "shift_press.png"
astore 1
L8:
aload 4
aload 1
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 1
aload 3
iconst_1
newarray int
dup
iconst_0
ldc_w 16842919
iastore
aload 1
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 1
aload 0
getfield cn/passguard/k/w Z
ifeq L9
ldc "shift.png"
astore 0
L10:
aload 1
aload 0
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 0
aload 3
iconst_0
newarray int
aload 0
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 2
aload 3
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
L7:
ldc "caps_press.png"
astore 1
goto L8
L9:
ldc "caps.png"
astore 0
goto L10
L1:
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L11
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 1
aload 0
getfield cn/passguard/k/w Z
ifeq L12
ldc "shift_l.png"
astore 0
L13:
aload 2
aload 1
aload 0
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
L12:
ldc "caps_l.png"
astore 0
goto L13
L11:
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
astore 1
aload 0
getfield cn/passguard/k/w Z
ifeq L14
ldc "shift.png"
astore 0
L15:
aload 2
aload 1
aload 0
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/Button/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
L14:
ldc "caps.png"
astore 0
goto L15
.limit locals 5
.limit stack 5
.end method

.method static synthetic g(Lcn/passguard/k;)Z
aload 0
getfield cn/passguard/k/w Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic h(Lcn/passguard/k;)Landroid/widget/LinearLayout;
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic i(Lcn/passguard/k;)Ljava/lang/Thread;
aload 0
getfield cn/passguard/k/D Ljava/lang/Thread;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic j(Lcn/passguard/k;)V
aload 0
invokespecial cn/passguard/k/n()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic k(Lcn/passguard/k;)Z
aload 0
getfield cn/passguard/k/z Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic l(Lcn/passguard/k;)Landroid/content/Context;
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic m(Lcn/passguard/k;)Lcn/passguard/I;
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
areturn
.limit locals 1
.limit stack 1
.end method

.method private n()V
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
bipush 26
anewarray java/lang/String
astore 6
aload 6
iconst_0
ldc "a"
aastore
aload 6
iconst_1
ldc "b"
aastore
aload 6
iconst_2
ldc "c"
aastore
aload 6
iconst_3
ldc "d"
aastore
aload 6
iconst_4
ldc "e"
aastore
aload 6
iconst_5
ldc "f"
aastore
aload 6
bipush 6
ldc "g"
aastore
aload 6
bipush 7
ldc "h"
aastore
aload 6
bipush 8
ldc "i"
aastore
aload 6
bipush 9
ldc "j"
aastore
aload 6
bipush 10
ldc "k"
aastore
aload 6
bipush 11
ldc "l"
aastore
aload 6
bipush 12
ldc "m"
aastore
aload 6
bipush 13
ldc "n"
aastore
aload 6
bipush 14
ldc "o"
aastore
aload 6
bipush 15
ldc "p"
aastore
aload 6
bipush 16
ldc "q"
aastore
aload 6
bipush 17
ldc "r"
aastore
aload 6
bipush 18
ldc "s"
aastore
aload 6
bipush 19
ldc "t"
aastore
aload 6
bipush 20
ldc "u"
aastore
aload 6
bipush 21
ldc "v"
aastore
aload 6
bipush 22
ldc "w"
aastore
aload 6
bipush 23
ldc "x"
aastore
aload 6
bipush 24
ldc "y"
aastore
aload 6
bipush 25
ldc "z"
aastore
aload 6
arraylength
istore 2
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 7
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 4
iconst_1
istore 1
L1:
iload 1
ifne L2
iconst_0
istore 2
iconst_0
istore 1
L3:
iload 2
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmple L4
L0:
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
ifnull L5
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L5
bipush 10
anewarray java/lang/String
astore 4
aload 4
iconst_0
ldc "1"
aastore
aload 4
iconst_1
ldc "2"
aastore
aload 4
iconst_2
ldc "3"
aastore
aload 4
iconst_3
ldc "4"
aastore
aload 4
iconst_4
ldc "5"
aastore
aload 4
iconst_5
ldc "6"
aastore
aload 4
bipush 6
ldc "7"
aastore
aload 4
bipush 7
ldc "8"
aastore
aload 4
bipush 8
ldc "9"
aastore
aload 4
bipush 9
ldc "0"
aastore
aload 4
arraylength
istore 2
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 5
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 6
iconst_1
istore 1
L6:
iload 1
ifne L7
aload 0
getfield cn/passguard/k/n Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 6
iconst_0
istore 2
iconst_0
istore 1
L8:
iload 2
aload 6
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmple L9
L5:
aload 0
getfield cn/passguard/k/p Landroid/widget/LinearLayout;
ifnull L10
bipush 10
anewarray java/lang/String
astore 4
aload 4
iconst_0
ldc "1"
aastore
aload 4
iconst_1
ldc "2"
aastore
aload 4
iconst_2
ldc "3"
aastore
aload 4
iconst_3
ldc "4"
aastore
aload 4
iconst_4
ldc "5"
aastore
aload 4
iconst_5
ldc "6"
aastore
aload 4
bipush 6
ldc "7"
aastore
aload 4
bipush 7
ldc "8"
aastore
aload 4
bipush 8
ldc "9"
aastore
aload 4
bipush 9
ldc "0"
aastore
aload 4
arraylength
istore 2
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 5
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 6
iconst_1
istore 1
L11:
iload 1
ifne L12
iconst_0
istore 2
iconst_0
istore 1
L13:
iload 2
aload 0
getfield cn/passguard/k/p Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmple L14
L10:
return
L2:
aload 4
iload 2
invokevirtual java/util/Random/nextInt(I)I
istore 3
aload 7
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/Vector/contains(Ljava/lang/Object;)Z
ifne L15
aload 7
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L15:
aload 7
invokevirtual java/util/Vector/size()I
iload 2
if_icmpne L1
iconst_0
istore 1
goto L1
L4:
aload 0
getfield cn/passguard/k/m Landroid/widget/LinearLayout;
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 8
iconst_0
istore 3
L16:
iload 3
aload 8
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmple L17
iload 2
iconst_1
iadd
istore 2
goto L3
L17:
aload 8
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/Button
ifeq L18
aload 8
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ldc " "
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L18
aload 8
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/String/length()I
iconst_1
if_icmpgt L18
aload 8
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/Button
astore 9
aload 0
getfield cn/passguard/k/y Z
ifeq L19
aload 6
aload 7
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
astore 4
L20:
aload 0
getfield cn/passguard/k/y Z
ifeq L21
aload 6
aload 7
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
astore 5
L22:
aload 9
aload 4
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 9
aload 5
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iload 1
iconst_1
iadd
istore 1
L23:
iload 3
iconst_1
iadd
istore 3
goto L16
L19:
aload 6
aload 7
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
astore 4
goto L20
L21:
aload 6
aload 7
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
astore 5
goto L22
L7:
aload 6
iload 2
invokevirtual java/util/Random/nextInt(I)I
istore 3
aload 5
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/Vector/contains(Ljava/lang/Object;)Z
ifne L24
aload 5
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L24:
aload 5
invokevirtual java/util/Vector/size()I
iload 2
if_icmpne L6
iconst_0
istore 1
goto L6
L9:
aload 6
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/Button
ifeq L25
aload 6
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/String/length()I
iconst_1
if_icmpgt L25
aload 6
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/Button
astore 7
aload 4
aload 5
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
astore 8
aload 4
aload 5
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
astore 9
aload 7
aload 8
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 7
aload 9
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iload 1
iconst_1
iadd
istore 1
L26:
iload 2
iconst_1
iadd
istore 2
goto L8
L12:
aload 6
iload 2
invokevirtual java/util/Random/nextInt(I)I
istore 3
aload 5
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/Vector/contains(Ljava/lang/Object;)Z
ifne L27
aload 5
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L27:
aload 5
invokevirtual java/util/Vector/size()I
iload 2
if_icmpne L11
iconst_0
istore 1
goto L11
L14:
aload 0
getfield cn/passguard/k/p Landroid/widget/LinearLayout;
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 6
iconst_0
istore 3
L28:
iload 3
aload 6
invokevirtual android/widget/LinearLayout/getChildCount()I
iconst_1
isub
if_icmple L29
iload 2
iconst_1
iadd
istore 2
goto L13
L29:
aload 6
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/Button
ifeq L30
aload 6
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/String/length()I
iconst_1
if_icmpgt L30
aload 6
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast android/widget/Button
astore 7
aload 4
aload 5
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
astore 8
aload 4
aload 5
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aaload
astore 9
aload 7
aload 8
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 7
aload 9
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iload 1
iconst_1
iadd
istore 1
L31:
iload 3
iconst_1
iadd
istore 3
goto L28
L30:
goto L31
L25:
goto L26
L18:
goto L23
.limit locals 10
.limit stack 3
.end method

.method private static synthetic o()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
.catch java/lang/NoSuchFieldError from L9 to L11 using L12
.catch java/lang/NoSuchFieldError from L11 to L13 using L14
.catch java/lang/NoSuchFieldError from L13 to L15 using L16
.catch java/lang/NoSuchFieldError from L15 to L17 using L18
.catch java/lang/NoSuchFieldError from L17 to L19 using L20
.catch java/lang/NoSuchFieldError from L19 to L21 using L22
.catch java/lang/NoSuchFieldError from L21 to L23 using L24
.catch java/lang/NoSuchFieldError from L23 to L25 using L26
.catch java/lang/NoSuchFieldError from L25 to L27 using L28
.catch java/lang/NoSuchFieldError from L27 to L29 using L30
getstatic cn/passguard/k/G [I
astore 0
aload 0
ifnull L31
aload 0
areturn
L31:
invokestatic cn/passguard/y/values()[Lcn/passguard/y;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic cn/passguard/y/n Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 14
iastore
L1:
aload 0
getstatic cn/passguard/y/l Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 12
iastore
L3:
aload 0
getstatic cn/passguard/y/c Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
iconst_3
iastore
L5:
aload 0
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
iconst_2
iastore
L7:
aload 0
getstatic cn/passguard/y/e Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
iconst_5
iastore
L9:
aload 0
getstatic cn/passguard/y/f Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 6
iastore
L11:
aload 0
getstatic cn/passguard/y/d Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
iconst_4
iastore
L13:
aload 0
getstatic cn/passguard/y/a Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
iconst_1
iastore
L15:
aload 0
getstatic cn/passguard/y/h Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 8
iastore
L17:
aload 0
getstatic cn/passguard/y/g Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 7
iastore
L19:
aload 0
getstatic cn/passguard/y/k Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 11
iastore
L21:
aload 0
getstatic cn/passguard/y/j Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 10
iastore
L23:
aload 0
getstatic cn/passguard/y/m Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 13
iastore
L25:
aload 0
getstatic cn/passguard/y/i Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 9
iastore
L27:
aload 0
getstatic cn/passguard/y/o Lcn/passguard/y;
invokevirtual cn/passguard/y/ordinal()I
bipush 15
iastore
L29:
aload 0
putstatic cn/passguard/k/G [I
aload 0
areturn
L30:
astore 1
goto L29
L28:
astore 1
goto L27
L26:
astore 1
goto L25
L24:
astore 1
goto L23
L22:
astore 1
goto L21
L20:
astore 1
goto L19
L18:
astore 1
goto L17
L16:
astore 1
goto L15
L14:
astore 1
goto L13
L12:
astore 1
goto L11
L10:
astore 1
goto L9
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public final a(Lcn/passguard/y;)Ljava/lang/Object;
aconst_null
astore 3
aload 3
astore 2
aload 1
ifnull L0
aload 3
astore 2
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 3
aload 3
astore 2
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
ifnull L0
aload 3
astore 2
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
aload 1
invokestatic cn/passguard/PassGuardEncrypt/getCipherText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 4
aload 4
astore 3
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
ifnull L0
aload 4
astore 3
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
aload 1
aload 2
invokestatic cn/passguard/PassGuardEncrypt/getRSAAESCiphertext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public final a()V
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
checkcast android/app/Activity
new cn/passguard/l
dup
aload 0
invokespecial cn/passguard/l/<init>(Lcn/passguard/k;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method

.method public final a(Landroid/os/Parcelable;)V
aload 1
instanceof android/os/Bundle
ifeq L0
aload 1
checkcast android/os/Bundle
astore 1
aload 0
aload 1
ldc "needTextView"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield cn/passguard/k/A Z
aload 0
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 1
ldc "SaveCiphertext"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
ifnull L1
aload 2
invokevirtual java/lang/String/length()I
ifle L1
aload 0
aload 2
aload 1
ldc "Key"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Encrypt(Ljava/lang/String;I)Ljava/lang/String;
putfield cn/passguard/k/C Ljava/lang/String;
L0:
return
L1:
aload 0
aconst_null
putfield cn/passguard/k/C Ljava/lang/String;
return
.limit locals 3
.limit stack 4
.end method

.method public final a(Lcn/passguard/y;Ljava/lang/Object;)V
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
return
L1:
invokestatic cn/passguard/k/o()[I
aload 1
invokevirtual cn/passguard/y/ordinal()I
iaload
tableswitch 1
L2
L2
L2
L2
L3
L3
L2
L3
L3
L4
L4
L5
L5
L5
L5
default : L6
L6:
aload 1
ifnull L0
aload 2
ifnull L0
aload 0
getfield cn/passguard/k/v Ljava/util/HashMap;
aload 1
aload 2
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
L2:
aload 2
instanceof java/lang/Boolean
ifne L6
return
L3:
aload 2
instanceof java/lang/Integer
ifne L6
return
L4:
aload 2
instanceof cn/passguard/doAction
ifne L6
return
L5:
aload 2
instanceof java/lang/String
ifne L6
aload 2
checkcast java/lang/String
invokevirtual java/lang/String/length()I
ifle L6
return
.limit locals 3
.limit stack 3
.end method

.method public final a(Z)V
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ifnull L0
iload 1
ifne L1
aload 0
getfield cn/passguard/k/A Z
iload 1
if_icmpeq L0
L1:
iload 1
ifeq L2
aload 0
getfield cn/passguard/k/i Lcn/passguard/f;
ifnonnull L3
aload 0
new cn/passguard/x
dup
aload 0
invokespecial cn/passguard/x/<init>(Lcn/passguard/k;)V
putfield cn/passguard/k/i Lcn/passguard/f;
L3:
aload 0
aload 0
getfield cn/passguard/k/i Lcn/passguard/f;
putfield cn/passguard/k/h Lcn/passguard/f;
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/EditText
ifeq L4
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/removeViewAt(I)V
L4:
getstatic cn/passguard/k/b Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setInputType(I)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
astore 3
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L5
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 4
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 5
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
aload 5
invokevirtual android/view/View/getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
aload 4
invokevirtual android/view/Display/getHeight()I
aload 0
invokevirtual cn/passguard/k/l()I
isub
aload 5
getfield android/graphics/Rect/top I
isub
iconst_1
isub
istore 2
L6:
aload 3
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iload 2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/EditText/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
invokeinterface cn/passguard/f/e()I 0
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
invokeinterface cn/passguard/f/f()I 0
invokevirtual android/widget/EditText/setSelection(II)V
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
getstatic cn/passguard/k/b Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;I)V
L7:
aload 0
iload 1
putfield cn/passguard/k/A Z
L0:
return
L5:
bipush -2
istore 2
goto L6
L2:
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/widget/EditText
ifeq L8
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/removeViewAt(I)V
L8:
aload 0
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
putfield cn/passguard/k/h Lcn/passguard/f;
goto L7
.limit locals 6
.limit stack 5
.end method

.method public final b()V
aload 0
getfield cn/passguard/k/D Ljava/lang/Thread;
ifnull L0
aload 0
getfield cn/passguard/k/D Ljava/lang/Thread;
invokevirtual java/lang/Thread/isAlive()Z
ifeq L0
aload 0
getfield cn/passguard/k/D Ljava/lang/Thread;
invokevirtual java/lang/Thread/interrupt()V
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/h()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public final c()I
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final d()Ljava/lang/String;
aload 0
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
ifnull L1
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L1
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
invokestatic cn/passguard/PassGuardEncrypt/getMd5(Ljava/lang/String;)Ljava/lang/String;
areturn
L0:
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/lang/String/length()I
ifle L1
aload 1
invokestatic cn/passguard/PassGuardEncrypt/getMd5(Ljava/lang/String;)Ljava/lang/String;
areturn
L1:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public final e()V
aload 0
aconst_null
putfield cn/passguard/k/C Ljava/lang/String;
getstatic cn/passguard/k/b Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual cn/passguard/k/a()V
return
.limit locals 1
.limit stack 2
.end method

.method public final f()Z
aload 0
getstatic cn/passguard/y/m Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
ifnonnull L0
iconst_1
ireturn
L0:
aload 0
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L1
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
ifnull L2
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L2
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
astore 1
L3:
aload 1
aload 0
getstatic cn/passguard/y/m Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/String/matches(Ljava/lang/String;)Z
ireturn
L2:
iconst_0
ireturn
L1:
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
astore 1
goto L3
.limit locals 2
.limit stack 3
.end method

.method public final g()[I
iconst_2
newarray int
astore 1
aload 1
iconst_1
iconst_3
iastore
aload 0
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
ifnull L1
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L1
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
aload 0
getfield cn/passguard/k/F I
invokestatic cn/passguard/PassGuardEncrypt/Decrypt(Ljava/lang/String;I)Ljava/lang/String;
invokestatic cn/passguard/PassGuardEncrypt/passlevel(Ljava/lang/String;)[I
areturn
L0:
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
ifle L1
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
invokestatic cn/passguard/PassGuardEncrypt/passlevel(Ljava/lang/String;)[I
areturn
L1:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public final h()Z
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield cn/passguard/k/B Z
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final i()V
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/i()V 0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ifnull L0
new android/view/WindowManager$LayoutParams
dup
iconst_m1
bipush -2
iconst_2
ldc_w 262184
iconst_1
invokespecial android/view/WindowManager$LayoutParams/<init>(IIIII)V
astore 1
aload 1
bipush 80
putfield android/view/WindowManager$LayoutParams/gravity I
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
aload 1
invokeinterface android/view/WindowManager/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V 2
aload 0
iconst_1
putfield cn/passguard/k/B Z
aload 0
getstatic cn/passguard/y/j Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
ifnull L0
aload 0
getstatic cn/passguard/y/j Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast cn/passguard/doAction
invokeinterface cn/passguard/doAction/doActionFunction()V 0
L0:
return
.limit locals 2
.limit stack 7
.end method

.method public final j()V
aload 0
getfield cn/passguard/k/h Lcn/passguard/f;
invokeinterface cn/passguard/f/j()V 0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield cn/passguard/k/A Z
ifeq L1
aload 0
getfield cn/passguard/k/i Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
astore 1
aload 1
ifnull L2
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
invokeinterface cn/passguard/f/g()V 0
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
aload 1
invokeinterface cn/passguard/f/a(Ljava/lang/String;)V 1
L3:
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
aload 0
getfield cn/passguard/k/i Lcn/passguard/f;
invokeinterface cn/passguard/f/e()I 0
aload 0
getfield cn/passguard/k/i Lcn/passguard/f;
invokeinterface cn/passguard/f/f()I 0
invokeinterface cn/passguard/f/a(II)V 2
L1:
aload 0
getfield cn/passguard/k/k Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
invokeinterface android/view/WindowManager/removeView(Landroid/view/View;)V 1
aload 0
iconst_0
putfield cn/passguard/k/B Z
aload 0
getstatic cn/passguard/y/k Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
ifnull L0
aload 0
getstatic cn/passguard/y/k Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast cn/passguard/doAction
invokeinterface cn/passguard/doAction/doActionFunction()V 0
L0:
return
L2:
aload 0
getfield cn/passguard/k/j Lcn/passguard/f;
invokeinterface cn/passguard/f/g()V 0
goto L3
.limit locals 2
.limit stack 3
.end method

.method public final k()Landroid/os/Parcelable;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "needTextView"
aload 0
getfield cn/passguard/k/A Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 0
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 1
ldc "SaveCiphertext"
aload 0
getfield cn/passguard/k/C Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "Key"
aload 0
getfield cn/passguard/k/F I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public final l()I
iconst_0
istore 1
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/measure(II)V
aload 0
getfield cn/passguard/k/l Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getMeasuredHeight()I
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public final m()V
aload 0
getfield cn/passguard/k/E Lcn/passguard/I;
invokevirtual cn/passguard/I/a()V
return
.limit locals 1
.limit stack 1
.end method
