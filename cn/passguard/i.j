.bytecode 50.0
.class public final synchronized cn/passguard/I
.super java/lang/Object

.field private static 'a' Lcn/passguard/I;

.field private static 'b' Ljava/lang/Object;

.field private 'c' Lorg/xmlpull/v1/XmlPullParser;

.field private 'd' Landroid/content/Context;

.field private 'e' Ljava/lang/String;

.field private 'f' [Ljava/lang/String;

.field private 'g' Z

.field private 'h' F

.field private 'i' F

.field private 'j' F

.field private 'k' I

.field private 'l' Landroid/util/DisplayMetrics;

.field private 'm' Ljava/util/HashMap;

.field private 'n' Ljava/util/HashMap;

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic cn/passguard/I/b Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
aconst_null
putfield cn/passguard/I/d Landroid/content/Context;
aload 0
aconst_null
putfield cn/passguard/I/e Ljava/lang/String;
aload 0
aconst_null
putfield cn/passguard/I/f [Ljava/lang/String;
aload 0
iconst_1
putfield cn/passguard/I/g Z
aload 0
fconst_1
putfield cn/passguard/I/h F
aload 0
fconst_1
putfield cn/passguard/I/i F
aload 0
fconst_1
putfield cn/passguard/I/j F
aload 0
iconst_1
putfield cn/passguard/I/k I
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield cn/passguard/I/m Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield cn/passguard/I/n Ljava/util/HashMap;
aload 0
aload 1
putfield cn/passguard/I/d Landroid/content/Context;
aload 1
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 2
aload 0
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
putfield cn/passguard/I/l Landroid/util/DisplayMetrics;
aload 2
aload 0
getfield cn/passguard/I/l Landroid/util/DisplayMetrics;
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/orientation I
iconst_2
if_icmpne L0
aload 0
aload 0
getfield cn/passguard/I/l Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
sipush 480
idiv
i2d
invokestatic cn/passguard/I/a(D)I
putfield cn/passguard/I/k I
L1:
aload 0
aload 0
getfield cn/passguard/I/l Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
putfield cn/passguard/I/h F
aload 0
ldc_w 13.0F
putfield cn/passguard/I/j F
aload 0
ldc_w 0.9F
aload 0
getfield cn/passguard/I/k I
i2f
fmul
putfield cn/passguard/I/i F
return
L0:
aload 0
aload 0
getfield cn/passguard/I/l Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
sipush 480
idiv
i2d
invokestatic cn/passguard/I/a(D)I
putfield cn/passguard/I/k I
goto L1
.limit locals 3
.limit stack 3
.end method

.method private static a(D)I
new java/math/BigDecimal
dup
dload 0
invokespecial java/math/BigDecimal/<init>(D)V
iconst_4
iconst_4
invokevirtual java/math/BigDecimal/setScale(II)Ljava/math/BigDecimal;
astore 2
aload 2
invokevirtual java/math/BigDecimal/intValue()I
ifeq L0
aload 2
invokevirtual java/math/BigDecimal/intValue()I
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method private static a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 1
aload 1
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
putfield android/graphics/BitmapFactory$Options/inPreferredConfig Landroid/graphics/Bitmap$Config;
aload 0
aconst_null
aload 1
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static a(Landroid/content/Context;)Lcn/passguard/I;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L5
getstatic cn/passguard/I/a Lcn/passguard/I;
ifnonnull L6
getstatic cn/passguard/I/b Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
new cn/passguard/I
dup
aload 0
invokespecial cn/passguard/I/<init>(Landroid/content/Context;)V
putstatic cn/passguard/I/a Lcn/passguard/I;
aload 1
monitorexit
L1:
getstatic cn/passguard/I/a Lcn/passguard/I;
areturn
L2:
astore 0
aload 1
monitorexit
aload 0
athrow
L6:
getstatic cn/passguard/I/b Ljava/lang/Object;
astore 1
aload 1
monitorenter
L3:
getstatic cn/passguard/I/a Lcn/passguard/I;
aload 0
putfield cn/passguard/I/d Landroid/content/Context;
aload 1
monitorexit
L4:
goto L1
L5:
astore 0
aload 1
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 3
.end method

.method private a(Landroid/view/View;)V
aload 0
aload 1
ldc "background"
invokespecial cn/passguard/I/a(Landroid/view/View;Ljava/lang/String;)V
aload 0
aload 1
ldc "src"
invokespecial cn/passguard/I/a(Landroid/view/View;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
aload 2
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 4
aload 4
ifnull L0
aload 4
iconst_0
invokevirtual java/lang/String/charAt(I)C
bipush 35
if_icmpne L1
aload 2
ldc "background"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
aload 1
aload 4
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/view/View/setBackgroundColor(I)V
L1:
aload 4
iconst_0
invokevirtual java/lang/String/charAt(I)C
bipush 64
if_icmpne L0
aload 4
ldc "/"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 4
aload 4
ldc "/"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
aload 4
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 6
aconst_null
astore 4
aload 0
getfield cn/passguard/I/f [Ljava/lang/String;
ifnonnull L2
aload 0
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getAssets()Landroid/content/res/AssetManager;
ldc ""
invokevirtual android/content/res/AssetManager/list(Ljava/lang/String;)[Ljava/lang/String;
putfield cn/passguard/I/f [Ljava/lang/String;
L2:
iconst_0
istore 3
L3:
iload 3
aload 0
getfield cn/passguard/I/f [Ljava/lang/String;
arraylength
iconst_1
isub
if_icmple L4
L5:
aload 4
ifnull L0
aload 0
getfield cn/passguard/I/g Z
ifeq L6
aload 1
instanceof android/widget/Button
ifne L7
aload 1
instanceof android/widget/ImageButton
ifeq L6
L7:
aload 2
ldc "background"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
new android/graphics/drawable/StateListDrawable
dup
invokespecial android/graphics/drawable/StateListDrawable/<init>()V
astore 5
new java/lang/StringBuilder
dup
aload 6
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 6
aload 4
ldc ".9"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L8
ldc "_press.9.png"
astore 2
L9:
aload 0
aload 6
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 2
aload 5
iconst_1
newarray int
dup
iconst_0
ldc_w 16842919
iastore
aload 2
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 0
aload 4
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 2
aload 5
iconst_0
newarray int
aload 2
invokevirtual android/graphics/drawable/StateListDrawable/addState([ILandroid/graphics/drawable/Drawable;)V
aload 1
aload 5
invokevirtual android/view/View/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L0:
return
L4:
aload 0
getfield cn/passguard/I/f [Ljava/lang/String;
iload 3
aaload
ldc "."
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L10
aload 0
getfield cn/passguard/I/f [Ljava/lang/String;
iload 3
aaload
iconst_0
aload 0
getfield cn/passguard/I/f [Ljava/lang/String;
iload 3
aaload
ldc "."
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
aload 6
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L10
aload 0
getfield cn/passguard/I/f [Ljava/lang/String;
iload 3
aaload
ldc ".pak"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L10
aload 0
getfield cn/passguard/I/f [Ljava/lang/String;
iload 3
aaload
astore 4
goto L5
L10:
iload 3
iconst_1
iadd
istore 3
goto L3
L8:
ldc "_press.png"
astore 2
goto L9
L6:
aload 1
instanceof android/widget/ImageButton
ifeq L11
aload 2
ldc "src"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L11
aload 1
checkcast android/widget/ImageButton
astore 2
aload 4
ldc ".9"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L12
aload 0
aload 4
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 1
L13:
aload 2
aload 1
invokevirtual android/widget/ImageButton/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
L12:
aload 0
aload 4
invokevirtual cn/passguard/I/b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 1
goto L13
L11:
aload 1
aload 0
aload 4
invokevirtual cn/passguard/I/a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual android/view/View/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 7
.limit stack 5
.end method

.method private b()Landroid/view/View;
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L7 to L8 using L9
.catch java/io/IOException from L7 to L8 using L10
.catch org/xmlpull/v1/XmlPullParserException from L11 to L12 using L9
.catch java/io/IOException from L11 to L12 using L10
.catch org/xmlpull/v1/XmlPullParserException from L13 to L14 using L9
.catch java/io/IOException from L13 to L14 using L10
.catch org/xmlpull/v1/XmlPullParserException from L15 to L16 using L17
.catch java/io/IOException from L15 to L16 using L18
.catch org/xmlpull/v1/XmlPullParserException from L19 to L20 using L2
.catch java/io/IOException from L19 to L20 using L3
.catch org/xmlpull/v1/XmlPullParserException from L20 to L21 using L22
.catch java/io/IOException from L20 to L21 using L23
.catch org/xmlpull/v1/XmlPullParserException from L24 to L25 using L22
.catch java/io/IOException from L24 to L25 using L23
.catch org/xmlpull/v1/XmlPullParserException from L26 to L27 using L22
.catch java/io/IOException from L26 to L27 using L23
.catch org/xmlpull/v1/XmlPullParserException from L28 to L29 using L2
.catch java/io/IOException from L28 to L29 using L3
.catch org/xmlpull/v1/XmlPullParserException from L29 to L30 using L31
.catch java/io/IOException from L29 to L30 using L32
.catch org/xmlpull/v1/XmlPullParserException from L33 to L34 using L31
.catch java/io/IOException from L33 to L34 using L32
.catch org/xmlpull/v1/XmlPullParserException from L35 to L36 using L31
.catch java/io/IOException from L35 to L36 using L32
.catch org/xmlpull/v1/XmlPullParserException from L37 to L38 using L2
.catch java/io/IOException from L37 to L38 using L3
.catch org/xmlpull/v1/XmlPullParserException from L38 to L39 using L40
.catch java/io/IOException from L38 to L39 using L41
.catch org/xmlpull/v1/XmlPullParserException from L42 to L43 using L2
.catch java/io/IOException from L42 to L43 using L3
aconst_null
astore 3
iconst_1
istore 1
L0:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
iconst_3
if_icmpne L4
L1:
aload 3
areturn
L4:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
iconst_2
if_icmpne L43
L5:
iload 1
ifeq L44
L6:
aload 0
ldc "http://schemas.android.com/apk/res/android"
putfield cn/passguard/I/e Ljava/lang/String;
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "LinearLayout"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L19
new android/widget/LinearLayout
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 4
L7:
aload 4
checkcast android/widget/LinearLayout
astore 3
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "orientation"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 5
L8:
aload 5
ifnull L45
L11:
aload 5
ldc "vertical"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L45
L12:
iconst_1
istore 2
L13:
aload 3
iload 2
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 4
aload 0
invokespecial cn/passguard/I/c()Landroid/widget/LinearLayout$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 4
checkcast android/widget/LinearLayout
aload 0
invokespecial cn/passguard/I/e()I
invokevirtual android/widget/LinearLayout/setGravity(I)V
aload 0
aload 4
invokespecial cn/passguard/I/b(Landroid/view/View;)V
aload 4
aload 0
ldc "tag"
invokespecial cn/passguard/I/h(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 0
aload 4
invokespecial cn/passguard/I/a(Landroid/view/View;)V
aload 4
aload 0
invokespecial cn/passguard/I/d()I
invokevirtual android/view/View/setVisibility(I)V
L14:
iload 1
ifeq L46
iconst_0
istore 1
L47:
aload 4
astore 3
L15:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
L16:
goto L0
L19:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "TextView"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L28
new android/widget/TextView
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 4
L20:
aload 4
aload 0
invokespecial cn/passguard/I/c()Landroid/widget/LinearLayout$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 4
checkcast android/widget/TextView
astore 3
aload 0
invokespecial cn/passguard/I/e()I
ifne L26
L21:
bipush 17
istore 2
L24:
aload 3
iload 2
invokevirtual android/widget/TextView/setGravity(I)V
aload 4
checkcast android/widget/TextView
aload 0
ldc "textColor"
invokespecial cn/passguard/I/g(Ljava/lang/String;)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 4
checkcast android/widget/TextView
aload 0
invokespecial cn/passguard/I/f()Landroid/graphics/Typeface;
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
aload 4
checkcast android/widget/TextView
iconst_1
aload 0
invokespecial cn/passguard/I/g()F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
aload 4
invokespecial cn/passguard/I/a(Landroid/view/View;)V
L25:
goto L14
L26:
aload 0
invokespecial cn/passguard/I/e()I
istore 2
L27:
goto L24
L28:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "Button"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L48
new cn/passguard/d
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokespecial cn/passguard/d/<init>(Landroid/content/Context;)V
astore 4
L29:
aload 4
checkcast android/widget/Button
aload 0
ldc "text"
invokespecial cn/passguard/I/h(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 4
checkcast android/widget/Button
aload 0
ldc "textColor"
invokespecial cn/passguard/I/g(Ljava/lang/String;)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 4
checkcast android/widget/Button
astore 3
aload 0
invokespecial cn/passguard/I/e()I
ifne L35
L30:
bipush 17
istore 2
L33:
aload 3
iload 2
invokevirtual android/widget/Button/setGravity(I)V
aload 4
aload 0
ldc "tag"
invokespecial cn/passguard/I/h(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 4
checkcast android/widget/Button
iconst_1
aload 0
invokespecial cn/passguard/I/g()F
invokevirtual android/widget/Button/setTextSize(IF)V
aload 4
checkcast android/widget/Button
aload 0
invokespecial cn/passguard/I/f()Landroid/graphics/Typeface;
invokevirtual android/widget/Button/setTypeface(Landroid/graphics/Typeface;)V
aload 4
aload 0
invokespecial cn/passguard/I/c()Landroid/widget/LinearLayout$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 4
aload 0
invokespecial cn/passguard/I/d()I
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 4
invokespecial cn/passguard/I/b(Landroid/view/View;)V
aload 0
aload 4
invokespecial cn/passguard/I/a(Landroid/view/View;)V
L34:
goto L14
L35:
aload 0
invokespecial cn/passguard/I/e()I
istore 2
L36:
goto L33
L48:
aload 3
astore 4
L37:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "ImageButton"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L14
new cn/passguard/e
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokespecial cn/passguard/e/<init>(Landroid/content/Context;)V
astore 4
L38:
aload 4
aload 0
ldc "tag"
invokespecial cn/passguard/I/h(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 4
aload 0
invokespecial cn/passguard/I/c()Landroid/widget/LinearLayout$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 4
invokespecial cn/passguard/I/a(Landroid/view/View;)V
aload 4
checkcast android/widget/ImageButton
getstatic android/widget/ImageView$ScaleType/CENTER_INSIDE Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageButton/setScaleType(Landroid/widget/ImageView$ScaleType;)V
L39:
goto L14
L46:
iconst_1
istore 1
goto L47
L44:
aload 3
ifnull L43
L42:
aload 3
checkcast android/view/ViewGroup
aload 0
invokespecial cn/passguard/I/b()Landroid/view/View;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
L43:
goto L15
L9:
astore 5
aload 4
astore 3
aload 5
astore 4
L49:
aload 4
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
aload 3
areturn
L10:
astore 5
aload 4
astore 3
aload 5
astore 4
L50:
aload 4
invokevirtual java/io/IOException/printStackTrace()V
aload 3
areturn
L23:
astore 5
aload 4
astore 3
aload 5
astore 4
goto L50
L32:
astore 5
aload 4
astore 3
aload 5
astore 4
goto L50
L41:
astore 5
aload 4
astore 3
aload 5
astore 4
goto L50
L18:
astore 4
goto L50
L3:
astore 4
goto L50
L22:
astore 5
aload 4
astore 3
aload 5
astore 4
goto L49
L31:
astore 5
aload 4
astore 3
aload 5
astore 4
goto L49
L40:
astore 5
aload 4
astore 3
aload 5
astore 4
goto L49
L17:
astore 4
goto L49
L2:
astore 4
goto L49
L45:
iconst_0
istore 2
goto L13
.limit locals 6
.limit stack 3
.end method

.method private b(Landroid/view/View;)V
iconst_0
istore 5
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "padding"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 6
aload 6
ifnull L0
aload 1
aload 0
aload 6
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
aload 0
aload 6
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
aload 0
aload 6
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
aload 0
aload 6
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
invokevirtual android/view/View/setPadding(IIII)V
return
L0:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "paddingTop"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 6
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "paddingLeft"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 7
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "paddingBottom"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 8
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "paddingRight"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 9
aload 6
ifnull L1
aload 0
aload 6
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
istore 2
L2:
aload 7
ifnull L3
aload 0
aload 7
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
istore 3
L4:
aload 8
ifnull L5
aload 0
aload 8
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
istore 4
L6:
aload 9
ifnull L7
aload 0
aload 9
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
istore 5
L7:
aload 1
iload 3
iload 2
iload 5
iload 4
invokevirtual android/view/View/setPadding(IIII)V
return
L5:
iconst_0
istore 4
goto L6
L3:
iconst_0
istore 3
goto L4
L1:
iconst_0
istore 2
goto L2
.limit locals 10
.limit stack 6
.end method

.method private c()Landroid/widget/LinearLayout$LayoutParams;
fconst_1
fstore 1
aload 0
ldc "layout_width"
invokespecial cn/passguard/I/d(Ljava/lang/String;)I
istore 3
iload 3
iconst_m1
if_icmpeq L0
iload 3
bipush -2
if_icmpeq L0
iload 3
i2f
fstore 2
aload 0
getfield cn/passguard/I/k I
i2f
aload 0
getfield cn/passguard/I/h F
fdiv
fconst_1
fcmpg
ifge L1
L2:
fload 1
fload 2
fmul
f2i
istore 3
L3:
aload 0
ldc "layout_height"
invokespecial cn/passguard/I/d(Ljava/lang/String;)I
istore 5
iload 5
istore 4
iload 5
iconst_m1
if_icmpeq L4
iload 5
istore 4
iload 5
bipush -2
if_icmpeq L4
aload 0
getfield cn/passguard/I/l Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
bipush 6
imul
bipush 47
idiv
istore 4
L4:
fconst_0
fstore 1
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "layout_weight"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 6
aload 6
ifnull L5
aload 6
ldc "fill_parent"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
ldc_w -1.0F
fstore 1
L5:
new android/widget/LinearLayout$LayoutParams
dup
iload 3
iload 4
fload 1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(IIF)V
astore 6
aload 0
ldc "layout_marginTop"
invokespecial cn/passguard/I/d(Ljava/lang/String;)I
istore 3
aload 6
aload 0
ldc "layout_marginLeft"
invokespecial cn/passguard/I/d(Ljava/lang/String;)I
iload 3
aload 0
ldc "layout_marginRight"
invokespecial cn/passguard/I/d(Ljava/lang/String;)I
aload 0
ldc "layout_marginBottom"
invokespecial cn/passguard/I/d(Ljava/lang/String;)I
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 6
areturn
L1:
aload 0
getfield cn/passguard/I/k I
i2f
aload 0
getfield cn/passguard/I/h F
fdiv
fstore 1
goto L2
L6:
aload 6
ldc "wrap_content"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
ldc_w -2.0F
fstore 1
goto L5
L7:
aload 0
aload 6
invokespecial cn/passguard/I/f(Ljava/lang/String;)F
fstore 1
goto L5
L0:
goto L3
.limit locals 7
.limit stack 6
.end method

.method private d()I
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "visibility"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 1
aload 1
ifnull L0
aload 1
ldc "visible"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
aload 1
ldc "invisible"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
iconst_4
ireturn
L2:
aload 1
ldc "gone"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L0
bipush 8
ireturn
.limit locals 2
.limit stack 3
.end method

.method private d(Ljava/lang/String;)I
iconst_0
istore 2
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 1
aload 1
ifnull L0
aload 1
ldc "fill_parent"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
iconst_m1
istore 2
L0:
iload 2
ireturn
L1:
aload 1
ldc "wrap_content"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
bipush -2
ireturn
L2:
aload 0
aload 1
invokespecial cn/passguard/I/e(Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method private e()I
iconst_0
istore 1
iconst_0
istore 2
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "layout_gravity"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "gravity"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 3
L0:
aload 3
ifnull L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L2:
aload 3
ldc "|"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpne L3
aload 4
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
iload 2
istore 1
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L5
L1:
iload 1
ireturn
L3:
aload 4
aload 3
iconst_0
aload 3
ldc "|"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 3
ldc "|"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 3
goto L2
L5:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 4
ldc "center"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
iload 1
bipush 17
ior
istore 1
goto L4
L6:
aload 4
ldc "CENTER_HORIZONTAL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
iload 1
iconst_1
ior
istore 1
goto L4
L7:
aload 4
ldc "CENTER_VERTICAL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L8
iload 1
bipush 16
ior
istore 1
goto L4
L8:
aload 4
ldc "LEFT"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L9
iload 1
iconst_3
ior
istore 1
goto L4
L9:
aload 4
ldc "RIGHT"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L10
iload 1
iconst_5
ior
istore 1
goto L4
L10:
aload 4
ldc "BOTTOM"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L11
iload 1
bipush 80
ior
istore 1
goto L4
L11:
aload 4
ldc "TOP"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L12
iload 1
bipush 48
ior
istore 1
goto L4
L12:
aload 4
ldc "CLIP_HORIZONTAL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L13
iload 1
bipush 8
ior
istore 1
goto L4
L13:
aload 4
ldc "CLIP_VERTICAL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L14
iload 1
sipush 128
ior
istore 1
goto L4
L14:
aload 4
ldc "FILL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L15
iload 1
bipush 119
ior
istore 1
goto L4
L15:
aload 4
ldc "FILL_HORIZONTAL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L16
iload 1
bipush 7
ior
istore 1
goto L4
L16:
aload 4
ldc "FILL_VERTICAL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
iload 1
bipush 112
ior
istore 1
goto L4
.limit locals 5
.limit stack 5
.end method

.method private e(Ljava/lang/String;)I
aload 1
ldc "dp"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
ldc "dip"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
aload 1
ldc "dip"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
aload 1
invokevirtual java/lang/String/length()I
iconst_3
isub
istore 2
L3:
iconst_1
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
ireturn
L2:
aload 1
invokevirtual java/lang/String/length()I
iconst_2
isub
istore 2
goto L3
L1:
aload 1
ldc "sp"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
iconst_2
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
ireturn
L4:
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 5
.end method

.method private f(Ljava/lang/String;)F
aload 1
ldc "dp"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
ldc "dip"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
aload 1
ldc "dip"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
aload 1
invokevirtual java/lang/String/length()I
iconst_3
isub
istore 2
L3:
iconst_1
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
freturn
L2:
aload 1
invokevirtual java/lang/String/length()I
iconst_2
isub
istore 2
goto L3
L1:
aload 1
ldc "sp"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
iconst_2
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2f
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
freturn
L4:
aload 1
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
freturn
.limit locals 3
.limit stack 5
.end method

.method private f()Landroid/graphics/Typeface;
iconst_0
istore 1
getstatic android/graphics/Typeface/DEFAULT Landroid/graphics/Typeface;
astore 3
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "textStyle"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 2
aload 2
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L1:
aload 2
ldc "|"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpne L2
aload 3
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
getstatic android/graphics/Typeface/DEFAULT Landroid/graphics/Typeface;
iload 1
invokestatic android/graphics/Typeface/create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
areturn
L2:
aload 3
aload 2
iconst_0
aload 2
ldc "|"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
aload 2
ldc "|"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 2
goto L1
L4:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 3
ldc "BOLD"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
iload 1
iconst_1
ior
istore 1
goto L3
L5:
aload 3
ldc "ITALIC"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
iload 1
iconst_2
ior
istore 1
goto L3
L6:
aload 3
ldc "NORMAL"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
goto L3
L0:
aload 3
areturn
.limit locals 4
.limit stack 5
.end method

.method private g()F
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
ldc "textSize"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 2
fconst_0
fstore 1
aload 2
ifnull L0
aload 2
ldc "sp"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
ldc "dp"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
ldc "dip"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
L1:
aload 0
aload 2
invokespecial cn/passguard/I/f(Ljava/lang/String;)F
aload 0
getfield cn/passguard/I/h F
fdiv
aload 0
getfield cn/passguard/I/k I
i2f
fmul
aload 0
getfield cn/passguard/I/h F
fdiv
aload 0
getfield cn/passguard/I/j F
fadd
fstore 1
L0:
fload 1
freturn
L2:
aload 0
aload 2
invokespecial cn/passguard/I/f(Ljava/lang/String;)F
aload 0
getfield cn/passguard/I/k I
i2f
fmul
aload 0
getfield cn/passguard/I/h F
fdiv
aload 0
getfield cn/passguard/I/j F
fadd
freturn
.limit locals 3
.limit stack 3
.end method

.method private g(Ljava/lang/String;)I
iconst_0
istore 2
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 1
aload 1
ifnull L0
aload 1
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
istore 2
L0:
iload 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
aload 0
getfield cn/passguard/I/e Ljava/lang/String;
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 2
aload 2
ifnull L0
aload 2
astore 1
aload 2
iconst_0
invokevirtual java/lang/String/charAt(I)C
bipush 92
if_icmpne L1
aload 2
astore 1
aload 2
invokevirtual java/lang/String/length()I
iconst_1
if_icmple L1
aload 2
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L0:
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L6
.catch all from L4 to L5 using L7
.catch java/io/IOException from L5 to L8 using L9
.catch all from L5 to L8 using L7
.catch java/io/IOException from L10 to L11 using L12
.catch java/io/IOException from L13 to L14 using L6
.catch all from L13 to L14 using L7
.catch all from L15 to L16 using L17
.catch java/io/IOException from L18 to L19 using L20
.catch java/io/IOException from L21 to L22 using L23
aconst_null
astore 2
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 1
ldc ".9"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L24
new android/graphics/drawable/NinePatchDrawable
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
invokevirtual android/graphics/Bitmap/getNinePatchChunk()[B
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
aconst_null
invokespecial android/graphics/drawable/NinePatchDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
astore 4
L25:
aload 4
areturn
L24:
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
areturn
L0:
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getAssets()Landroid/content/res/AssetManager;
aload 1
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 3
L1:
aload 3
astore 2
L4:
aload 2
invokestatic cn/passguard/I/a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 4
aload 1
ldc ".9"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L13
new android/graphics/drawable/NinePatchDrawable
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 4
aload 4
invokevirtual android/graphics/Bitmap/getNinePatchChunk()[B
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
aconst_null
invokespecial android/graphics/drawable/NinePatchDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
astore 3
L5:
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
aload 4
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L8:
aload 3
astore 4
aload 2
ifnull L25
L10:
aload 2
invokevirtual java/io/InputStream/close()V
L11:
aload 3
areturn
L12:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aload 3
areturn
L13:
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 4
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 3
L14:
goto L5
L6:
astore 3
aconst_null
astore 1
L15:
aload 3
invokevirtual java/io/IOException/printStackTrace()V
L16:
aload 1
astore 4
aload 2
ifnull L25
L18:
aload 2
invokevirtual java/io/InputStream/close()V
L19:
aload 1
areturn
L20:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
aload 1
areturn
L3:
astore 1
aconst_null
astore 2
L26:
aload 2
ifnull L22
L21:
aload 2
invokevirtual java/io/InputStream/close()V
L22:
aload 1
athrow
L23:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L22
L7:
astore 1
goto L26
L17:
astore 1
goto L26
L2:
astore 3
aconst_null
astore 1
goto L15
L9:
astore 4
aload 3
astore 1
aload 4
astore 3
goto L15
.limit locals 5
.limit stack 7
.end method

.method public final a(Ljava/lang/String;Z)Landroid/view/View;
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch org/xmlpull/v1/XmlPullParserException from L5 to L6 using L7
.catch java/io/IOException from L5 to L6 using L8
.catch all from L5 to L6 using L9
.catch org/xmlpull/v1/XmlPullParserException from L10 to L11 using L7
.catch java/io/IOException from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch org/xmlpull/v1/XmlPullParserException from L12 to L13 using L7
.catch java/io/IOException from L12 to L13 using L8
.catch all from L12 to L13 using L9
.catch org/xmlpull/v1/XmlPullParserException from L14 to L15 using L7
.catch java/io/IOException from L14 to L15 using L8
.catch all from L14 to L15 using L9
.catch org/xmlpull/v1/XmlPullParserException from L16 to L17 using L7
.catch java/io/IOException from L16 to L17 using L8
.catch all from L16 to L17 using L9
.catch org/xmlpull/v1/XmlPullParserException from L18 to L19 using L7
.catch java/io/IOException from L18 to L19 using L8
.catch all from L18 to L19 using L9
.catch org/xmlpull/v1/XmlPullParserException from L20 to L21 using L22
.catch java/io/IOException from L20 to L21 using L23
.catch all from L20 to L21 using L9
.catch java/io/IOException from L24 to L25 using L26
.catch org/xmlpull/v1/XmlPullParserException from L27 to L28 using L7
.catch java/io/IOException from L27 to L28 using L8
.catch all from L27 to L28 using L9
.catch all from L29 to L30 using L9
.catch java/io/IOException from L31 to L32 using L33
.catch org/xmlpull/v1/XmlPullParserException from L34 to L35 using L22
.catch java/io/IOException from L34 to L35 using L23
.catch all from L34 to L35 using L9
.catch org/xmlpull/v1/XmlPullParserException from L36 to L37 using L38
.catch java/io/IOException from L36 to L37 using L39
.catch all from L36 to L37 using L9
.catch org/xmlpull/v1/XmlPullParserException from L40 to L41 using L22
.catch java/io/IOException from L40 to L41 using L23
.catch all from L40 to L41 using L9
.catch org/xmlpull/v1/XmlPullParserException from L42 to L43 using L22
.catch java/io/IOException from L42 to L43 using L23
.catch all from L42 to L43 using L9
.catch all from L44 to L45 using L9
.catch java/io/IOException from L46 to L47 using L48
.catch java/io/IOException from L49 to L50 using L51
aload 0
iload 2
putfield cn/passguard/I/g Z
aload 0
invokestatic android/util/Xml/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
putfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
L0:
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getAssets()Landroid/content/res/AssetManager;
aload 1
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 4
L1:
aload 4
astore 5
L5:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 4
ldc "UTF-8"
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/lang/String;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 1
L6:
aload 4
astore 5
L10:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
L11:
aload 4
astore 5
L12:
aload 1
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 7
L13:
aload 7
ifnonnull L52
aload 4
astore 5
L14:
aload 1
invokevirtual java/io/BufferedReader/close()V
L15:
aload 4
astore 5
L16:
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L17:
aload 4
astore 5
L18:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
new java/io/StringReader
dup
aload 1
invokestatic cn/passguard/PassGuardEncrypt/Decrypt2(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/Reader;)V 1
L19:
aconst_null
astore 1
L53:
aload 4
astore 5
L20:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 3
L21:
iload 3
iconst_1
if_icmpne L54
aload 1
astore 5
aload 4
ifnull L55
L24:
aload 4
invokevirtual java/io/InputStream/close()V
L25:
aload 1
astore 5
L55:
aload 5
areturn
L52:
aload 4
astore 5
L27:
aload 6
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L28:
goto L11
L7:
astore 6
aconst_null
astore 1
L56:
aload 4
astore 5
L29:
aload 6
invokevirtual org/xmlpull/v1/XmlPullParserException/printStackTrace()V
L30:
aload 1
astore 5
aload 4
ifnull L55
L31:
aload 4
invokevirtual java/io/InputStream/close()V
L32:
aload 1
areturn
L33:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
aload 1
areturn
L54:
aload 4
astore 5
L34:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 3
L35:
iload 3
tableswitch 0
L57
default : L58
L58:
aload 4
astore 5
L36:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
L37:
goto L53
L57:
aload 4
astore 5
L40:
aload 0
getfield cn/passguard/I/c Lorg/xmlpull/v1/XmlPullParser;
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
L41:
aload 4
astore 5
L42:
aload 0
invokespecial cn/passguard/I/b()Landroid/view/View;
astore 6
L43:
aload 6
astore 1
goto L58
L3:
astore 6
aconst_null
astore 4
aconst_null
astore 1
L59:
aload 4
astore 5
L44:
aload 6
invokevirtual java/io/IOException/printStackTrace()V
L45:
aload 1
astore 5
aload 4
ifnull L55
L46:
aload 4
invokevirtual java/io/InputStream/close()V
L47:
aload 1
areturn
L48:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
aload 1
areturn
L4:
astore 1
aconst_null
astore 5
L60:
aload 5
ifnull L50
L49:
aload 5
invokevirtual java/io/InputStream/close()V
L50:
aload 1
athrow
L51:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
goto L50
L26:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
aload 1
areturn
L9:
astore 1
goto L60
L8:
astore 6
aconst_null
astore 1
goto L59
L39:
astore 6
goto L59
L23:
astore 6
goto L59
L2:
astore 6
aconst_null
astore 4
aconst_null
astore 1
goto L56
L38:
astore 6
goto L56
L22:
astore 6
goto L56
.limit locals 8
.limit stack 6
.end method

.method public final a()V
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
invokestatic java/lang/System/gc()V
return
L1:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
invokevirtual android/graphics/Bitmap/recycle()V
goto L0
.limit locals 2
.limit stack 1
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L6
.catch all from L4 to L5 using L7
.catch java/io/IOException from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/io/IOException from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/io/IOException from L12 to L13 using L14
.catch all from L12 to L13 using L7
.catch java/io/IOException from L15 to L16 using L17
.catch all from L18 to L19 using L7
.catch java/io/IOException from L20 to L21 using L22
.catch java/io/IOException from L23 to L24 using L25
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 3
L26:
aload 3
areturn
L0:
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getAssets()Landroid/content/res/AssetManager;
aload 1
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 2
L1:
aload 2
astore 3
L4:
aload 2
invokestatic cn/passguard/I/a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 4
L5:
aload 2
astore 3
L8:
aload 4
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
aload 0
getfield cn/passguard/I/i F
fmul
f2d
invokestatic cn/passguard/I/a(D)I
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
aload 0
getfield cn/passguard/I/i F
fmul
f2d
invokestatic cn/passguard/I/a(D)I
iconst_1
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
astore 5
L9:
aload 2
astore 3
L10:
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 5
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 4
L11:
aload 2
astore 3
L12:
aload 0
getfield cn/passguard/I/m Ljava/util/HashMap;
aload 1
aload 5
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L13:
aload 4
astore 3
aload 2
ifnull L26
L15:
aload 2
invokevirtual java/io/InputStream/close()V
L16:
aload 4
areturn
L17:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aload 4
areturn
L2:
astore 4
aconst_null
astore 2
aconst_null
astore 1
L27:
aload 2
astore 3
L18:
aload 4
invokevirtual java/io/IOException/printStackTrace()V
L19:
aload 1
astore 3
aload 2
ifnull L26
L20:
aload 2
invokevirtual java/io/InputStream/close()V
L21:
aload 1
areturn
L22:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
aload 1
areturn
L3:
astore 1
aconst_null
astore 3
L28:
aload 3
ifnull L24
L23:
aload 3
invokevirtual java/io/InputStream/close()V
L24:
aload 1
athrow
L25:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L24
L7:
astore 1
goto L28
L6:
astore 4
aconst_null
astore 1
goto L27
L14:
astore 3
aload 4
astore 1
aload 3
astore 4
goto L27
.limit locals 6
.limit stack 5
.end method

.method public final c(Ljava/lang/String;)V
aload 0
getfield cn/passguard/I/n Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/view/View
astore 2
aload 2
ifnull L0
aload 0
getfield cn/passguard/I/d Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
aload 2
invokeinterface android/view/WindowManager/removeView(Landroid/view/View;)V 1
aload 0
getfield cn/passguard/I/n Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 3
.limit stack 2
.end method
