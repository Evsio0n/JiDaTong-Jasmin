.bytecode 50.0
.class public synchronized cmb/pb/ui/PBKeyboardActivity
.super android/app/Activity

.field private static 'G' Lcmb/pb/ui/PBKeyboardActivity;

.field private static 'N' Lcmb/pb/ui/g;

.field private static synthetic 'O' [I

.field public static 'c' I

.field private static 'i' Lcmb/pb/ui/cmbwidget/e;

.field private static 'w' Landroid/os/Handler;

.field private 'A' Ljava/lang/String;

.field private 'B' Ljava/lang/String;

.field private 'C' Ljava/lang/String;

.field private 'D' Z

.field private 'E' Lcmb/pb/ui/f;

.field private 'F' F

.field private final 'H' Ljava/lang/String;

.field private 'I' Landroid/view/View$OnClickListener;

.field private 'J' Landroid/view/View$OnClickListener;

.field private 'K' Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private 'L' Landroid/view/View$OnFocusChangeListener;

.field private 'M' Landroid/view/View$OnTouchListener;

.field public 'a' Z

.field public 'b' Z

.field private 'd' F

.field private 'e' F

.field private 'f' Landroid/content/Context;

.field private 'g' Landroid/app/Activity;

.field private 'h' Landroid/inputmethodservice/KeyboardView;

.field private 'j' I

.field private 'k' Landroid/inputmethodservice/Keyboard;

.field private 'l' Landroid/inputmethodservice/Keyboard;

.field private 'm' Landroid/inputmethodservice/Keyboard;

.field private 'n' Landroid/inputmethodservice/Keyboard;

.field private 'o' Landroid/inputmethodservice/Keyboard;

.field private 'p' Landroid/inputmethodservice/Keyboard;

.field private 'q' Landroid/inputmethodservice/Keyboard;

.field private 'r' Landroid/inputmethodservice/Keyboard;

.field private 's' Landroid/inputmethodservice/Keyboard;

.field private 't' Landroid/inputmethodservice/Keyboard;

.field private 'u' Landroid/widget/EditText;

.field private 'v' Landroid/widget/TextView;

.field private 'x' Lcmb/pb/ui/f;

.field private 'y' Z

.field private 'z' I

.method static <clinit>()V
aconst_null
putstatic cmb/pb/ui/PBKeyboardActivity/i Lcmb/pb/ui/cmbwidget/e;
aconst_null
putstatic cmb/pb/ui/PBKeyboardActivity/w Landroid/os/Handler;
aconst_null
putstatic cmb/pb/ui/PBKeyboardActivity/G Lcmb/pb/ui/PBKeyboardActivity;
sipush 9555
putstatic cmb/pb/ui/PBKeyboardActivity/c I
aconst_null
putstatic cmb/pb/ui/PBKeyboardActivity/N Lcmb/pb/ui/g;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
fconst_0
putfield cmb/pb/ui/PBKeyboardActivity/d F
aload 0
fconst_0
putfield cmb/pb/ui/PBKeyboardActivity/e F
aload 0
iconst_0
putfield cmb/pb/ui/PBKeyboardActivity/j I
aload 0
iconst_0
putfield cmb/pb/ui/PBKeyboardActivity/a Z
aload 0
iconst_0
putfield cmb/pb/ui/PBKeyboardActivity/b Z
aload 0
aconst_null
putfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
aload 0
getstatic cmb/pb/ui/f/a Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
aload 0
iconst_0
putfield cmb/pb/ui/PBKeyboardActivity/y Z
aload 0
iconst_0
putfield cmb/pb/ui/PBKeyboardActivity/z I
aload 0
aconst_null
putfield cmb/pb/ui/PBKeyboardActivity/A Ljava/lang/String;
aload 0
aconst_null
putfield cmb/pb/ui/PBKeyboardActivity/B Ljava/lang/String;
aload 0
aconst_null
putfield cmb/pb/ui/PBKeyboardActivity/C Ljava/lang/String;
aload 0
iconst_0
putfield cmb/pb/ui/PBKeyboardActivity/D Z
aload 0
getstatic cmb/pb/ui/f/a Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
aload 0
fconst_0
putfield cmb/pb/ui/PBKeyboardActivity/F F
aload 0
ldc "PBKeyboardActivity"
putfield cmb/pb/ui/PBKeyboardActivity/H Ljava/lang/String;
aload 0
new cmb/pb/ui/a
dup
aload 0
invokespecial cmb/pb/ui/a/<init>(Lcmb/pb/ui/PBKeyboardActivity;)V
putfield cmb/pb/ui/PBKeyboardActivity/I Landroid/view/View$OnClickListener;
aload 0
new cmb/pb/ui/b
dup
aload 0
invokespecial cmb/pb/ui/b/<init>(Lcmb/pb/ui/PBKeyboardActivity;)V
putfield cmb/pb/ui/PBKeyboardActivity/J Landroid/view/View$OnClickListener;
aload 0
new cmb/pb/ui/c
dup
aload 0
invokespecial cmb/pb/ui/c/<init>(Lcmb/pb/ui/PBKeyboardActivity;)V
putfield cmb/pb/ui/PBKeyboardActivity/K Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
aload 0
new cmb/pb/ui/d
dup
aload 0
invokespecial cmb/pb/ui/d/<init>(Lcmb/pb/ui/PBKeyboardActivity;)V
putfield cmb/pb/ui/PBKeyboardActivity/L Landroid/view/View$OnFocusChangeListener;
aload 0
new cmb/pb/ui/e
dup
aload 0
invokespecial cmb/pb/ui/e/<init>(Lcmb/pb/ui/PBKeyboardActivity;)V
putfield cmb/pb/ui/PBKeyboardActivity/M Landroid/view/View$OnTouchListener;
return
.limit locals 1
.limit stack 4
.end method

.method private a(Landroid/inputmethodservice/Keyboard;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 1
invokevirtual android/inputmethodservice/Keyboard/getKeys()Ljava/util/List;
astore 1
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/b Z
ifeq L6
aload 0
iconst_0
putfield cmb/pb/ui/PBKeyboardActivity/b Z
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L7:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L8
L9:
return
L8:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/inputmethodservice/Keyboard$Key
astore 3
aload 3
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
ifnull L10
aload 0
aload 3
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokespecial cmb/pb/ui/PBKeyboardActivity/a(Ljava/lang/String;)Z
ifeq L10
aload 3
aload 3
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
putfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
aload 3
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
aload 3
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
bipush 32
iadd
iastore
L10:
aload 3
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
iconst_m1
if_icmpne L7
L0:
aload 0
ldc "drawable"
ldc "cmbkb_shift_normal"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 2
aload 3
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getResources()Landroid/content/res/Resources;
iload 2
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield android/inputmethodservice/Keyboard$Key/icon Landroid/graphics/drawable/Drawable;
L1:
goto L7
L2:
astore 3
goto L7
L6:
aload 0
iconst_1
putfield cmb/pb/ui/PBKeyboardActivity/b Z
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L11:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/inputmethodservice/Keyboard$Key
astore 3
aload 3
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
ifnull L12
aload 0
aload 3
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokespecial cmb/pb/ui/PBKeyboardActivity/a(Ljava/lang/String;)Z
ifeq L12
aload 3
aload 3
getfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
putfield android/inputmethodservice/Keyboard$Key/label Ljava/lang/CharSequence;
aload 3
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
aload 3
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
bipush 32
isub
iastore
L12:
aload 3
getfield android/inputmethodservice/Keyboard$Key/codes [I
iconst_0
iaload
iconst_m1
if_icmpne L11
L3:
aload 0
ldc "drawable"
ldc "cmbkb_shift_actived"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 2
aload 3
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getResources()Landroid/content/res/Resources;
iload 2
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield android/inputmethodservice/Keyboard$Key/icon Landroid/graphics/drawable/Drawable;
L4:
goto L11
L5:
astore 3
goto L11
.limit locals 4
.limit stack 4
.end method

.method public static a(Landroid/os/Handler;)V
aload 0
putstatic cmb/pb/ui/PBKeyboardActivity/w Landroid/os/Handler;
return
.limit locals 1
.limit stack 1
.end method

.method private a(Landroid/view/View;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 0
ldc "input_method"
invokevirtual cmb/pb/ui/PBKeyboardActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
astore 2
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 2
aload 1
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;)V
aload 0
invokespecial cmb/pb/ui/PBKeyboardActivity/j()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 1
invokespecial cmb/pb/ui/PBKeyboardActivity/a(Landroid/inputmethodservice/Keyboard;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/view/View;)V
aload 0
aload 1
invokespecial cmb/pb/ui/PBKeyboardActivity/a(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
aload 0
aload 1
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
.limit locals 2
.limit stack 2
.end method

.method public static a(Lcmb/pb/ui/cmbwidget/e;)V
aload 0
putstatic cmb/pb/ui/PBKeyboardActivity/i Lcmb/pb/ui/cmbwidget/e;
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Lcmb/pb/ui/g;)V
aload 0
putstatic cmb/pb/ui/PBKeyboardActivity/N Lcmb/pb/ui/g;
return
.limit locals 1
.limit stack 1
.end method

.method private a(Ljava/lang/String;)Z
ldc "abcdefghijklmnopqrstuvwxyz"
aload 1
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmple L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic c(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/app/Activity;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/g Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static c()Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/PBKeyboardActivity/G Lcmb/pb/ui/PBKeyboardActivity;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static d()I
iconst_0
ireturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic d(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/view/View$OnClickListener;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/I Landroid/view/View$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic e()Lcmb/pb/ui/cmbwidget/e;
getstatic cmb/pb/ui/PBKeyboardActivity/i Lcmb/pb/ui/cmbwidget/e;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic f(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/o Landroid/inputmethodservice/Keyboard;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic f()Landroid/os/Handler;
getstatic cmb/pb/ui/PBKeyboardActivity/w Landroid/os/Handler;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic g()[I
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
getstatic cmb/pb/ui/PBKeyboardActivity/O [I
astore 0
aload 0
ifnull L23
aload 0
areturn
L23:
invokestatic cmb/pb/ui/f/values()[Lcmb/pb/ui/f;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic cmb/pb/ui/f/a Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
iconst_1
iastore
L1:
aload 0
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
bipush 10
iastore
L3:
aload 0
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
bipush 9
iastore
L5:
aload 0
getstatic cmb/pb/ui/f/k Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
bipush 11
iastore
L7:
aload 0
getstatic cmb/pb/ui/f/b Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
iconst_2
iastore
L9:
aload 0
getstatic cmb/pb/ui/f/c Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
iconst_3
iastore
L11:
aload 0
getstatic cmb/pb/ui/f/g Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
bipush 7
iastore
L13:
aload 0
getstatic cmb/pb/ui/f/f Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
bipush 6
iastore
L15:
aload 0
getstatic cmb/pb/ui/f/d Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
iconst_4
iastore
L17:
aload 0
getstatic cmb/pb/ui/f/e Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
iconst_5
iastore
L19:
aload 0
getstatic cmb/pb/ui/f/h Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
bipush 8
iastore
L21:
aload 0
putstatic cmb/pb/ui/PBKeyboardActivity/O [I
aload 0
areturn
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

.method private h()V
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "KeyboardType"
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/a()I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
invokestatic cmb/pb/ui/f/a(I)Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
aload 0
aload 1
ldc "IsPassword"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield cmb/pb/ui/PBKeyboardActivity/y Z
aload 0
aload 1
ldc "Length"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield cmb/pb/ui/PBKeyboardActivity/z I
aload 0
aload 1
ldc "Hint"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield cmb/pb/ui/PBKeyboardActivity/A Ljava/lang/String;
aload 0
aload 1
ldc "Label"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield cmb/pb/ui/PBKeyboardActivity/B Ljava/lang/String;
aload 0
aload 1
ldc "OldText"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield cmb/pb/ui/PBKeyboardActivity/C Ljava/lang/String;
aload 0
aload 1
ldc "UseHandler"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield cmb/pb/ui/PBKeyboardActivity/D Z
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic h(Lcmb/pb/ui/PBKeyboardActivity;)Z
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/y Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
areturn
.limit locals 1
.limit stack 1
.end method

.method private i()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L5 to L6 using L7
aload 0
invokestatic cmb/pb/ui/PBKeyboardActivity/d()I
i2f
putfield cmb/pb/ui/PBKeyboardActivity/F F
aload 0
putstatic cmb/pb/ui/PBKeyboardActivity/G Lcmb/pb/ui/PBKeyboardActivity;
aload 0
aload 0
putfield cmb/pb/ui/PBKeyboardActivity/g Landroid/app/Activity;
aload 0
aload 0
putfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
aload 0
aload 0
aload 0
ldc "id"
ldc "edit_cmbinput"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual cmb/pb/ui/PBKeyboardActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
ldc "PBKeyboardActivity"
new java/lang/StringBuilder
dup
ldc "android.os.Build.VERSION.SDK_INT:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic android/os/Build$VERSION/SDK_INT I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmpgt L8
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setInputType(I)V
L9:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/y Z
ifeq L10
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
sipush 129
invokevirtual android/widget/EditText/setInputType(I)V
L11:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/z I
ifle L12
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new android/text/InputFilter$LengthFilter
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/z I
invokespecial android/text/InputFilter$LengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
L12:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/A Ljava/lang/String;
ifnull L5
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/A Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L5
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/A Ljava/lang/String;
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
L13:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/B Ljava/lang/String;
ifnull L14
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/B Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifle L14
aload 0
aload 0
ldc "id"
ldc "cmbkb_tvLabel_id"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual cmb/pb/ui/PBKeyboardActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 8
aload 8
ifnull L14
aload 8
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/B Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L14:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/C Ljava/lang/String;
ifnull L15
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/C Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 8
aload 8
instanceof android/text/Spannable
ifeq L15
aload 8
checkcast android/text/Spannable
aload 8
invokeinterface java/lang/CharSequence/length()I 0
invokestatic android/text/Selection/setSelection(Landroid/text/Spannable;I)V
L15:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/L Landroid/view/View$OnFocusChangeListener;
invokevirtual android/widget/EditText/setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/M Landroid/view/View$OnTouchListener;
invokevirtual android/widget/EditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/D Z
ifeq L16
aload 0
aload 0
ldc "id"
ldc "cmbkb_tvLabel"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual cmb/pb/ui/PBKeyboardActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 8
aload 8
ifnull L17
aload 8
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L17:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
ifnull L18
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
bipush 8
invokevirtual android/widget/EditText/setVisibility(I)V
L18:
ldc ""
astore 8
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/C Ljava/lang/String;
ifnull L19
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/C Ljava/lang/String;
astore 8
L19:
getstatic cmb/pb/ui/PBKeyboardActivity/w Landroid/os/Handler;
astore 9
aload 9
ifnull L16
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 10
aload 10
iconst_1
putfield android/os/Message/what I
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 11
aload 11
ldc "KeyString"
aload 8
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 10
aload 11
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 9
aload 10
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L16:
aload 0
aload 0
ldc "id"
ldc "cmbkb_safeSign"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual cmb/pb/ui/PBKeyboardActivity/findViewById(I)Landroid/view/View;
astore 8
aload 8
ifnull L20
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/d Lcmb/pb/ui/f;
if_acmpeq L21
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/e Lcmb/pb/ui/f;
if_acmpeq L21
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/f Lcmb/pb/ui/f;
if_acmpne L22
L21:
aload 8
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L20:
aload 0
aload 0
aload 0
ldc "id"
ldc "cmbkb_tvComplete"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual cmb/pb/ui/PBKeyboardActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
ifnull L23
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/d Lcmb/pb/ui/f;
if_acmpeq L24
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/e Lcmb/pb/ui/f;
if_acmpeq L24
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/f Lcmb/pb/ui/f;
if_acmpeq L24
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
if_acmpeq L24
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/k Lcmb/pb/ui/f;
if_acmpeq L24
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
if_acmpne L25
L24:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/I Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L23:
aload 0
ldc "xml"
ldc "cmbkb_number"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 1
aload 0
ldc "xml"
ldc "cmbkb_number_symbols"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 2
aload 0
ldc "xml"
ldc "cmbkb_number_with_dot"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 3
aload 0
ldc "xml"
ldc "cmbkb_number_with_x"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 4
aload 0
ldc "xml"
ldc "cmbkb_number_with_change"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 5
aload 0
ldc "xml"
ldc "cmbkb_symbols"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 6
aload 0
ldc "xml"
ldc "cmbkb_qwerty"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 7
aload 0
new android/inputmethodservice/Keyboard
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
iload 1
invokespecial android/inputmethodservice/Keyboard/<init>(Landroid/content/Context;I)V
putfield cmb/pb/ui/PBKeyboardActivity/k Landroid/inputmethodservice/Keyboard;
aload 0
new android/inputmethodservice/Keyboard
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
iload 2
invokespecial android/inputmethodservice/Keyboard/<init>(Landroid/content/Context;I)V
putfield cmb/pb/ui/PBKeyboardActivity/l Landroid/inputmethodservice/Keyboard;
aload 0
new android/inputmethodservice/Keyboard
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
iload 3
invokespecial android/inputmethodservice/Keyboard/<init>(Landroid/content/Context;I)V
putfield cmb/pb/ui/PBKeyboardActivity/m Landroid/inputmethodservice/Keyboard;
aload 0
new android/inputmethodservice/Keyboard
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
iload 4
invokespecial android/inputmethodservice/Keyboard/<init>(Landroid/content/Context;I)V
putfield cmb/pb/ui/PBKeyboardActivity/n Landroid/inputmethodservice/Keyboard;
aload 0
new android/inputmethodservice/Keyboard
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
iload 5
invokespecial android/inputmethodservice/Keyboard/<init>(Landroid/content/Context;I)V
putfield cmb/pb/ui/PBKeyboardActivity/o Landroid/inputmethodservice/Keyboard;
aload 0
new android/inputmethodservice/Keyboard
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
iload 6
invokespecial android/inputmethodservice/Keyboard/<init>(Landroid/content/Context;I)V
putfield cmb/pb/ui/PBKeyboardActivity/p Landroid/inputmethodservice/Keyboard;
aload 0
new android/inputmethodservice/Keyboard
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/f Landroid/content/Context;
iload 7
invokespecial android/inputmethodservice/Keyboard/<init>(Landroid/content/Context;I)V
putfield cmb/pb/ui/PBKeyboardActivity/q Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/k Landroid/inputmethodservice/Keyboard;
invokestatic cmb/pb/cmbsafe/a/a(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/l Landroid/inputmethodservice/Keyboard;
invokestatic cmb/pb/cmbsafe/a/a(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/m Landroid/inputmethodservice/Keyboard;
invokestatic cmb/pb/cmbsafe/a/a(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/n Landroid/inputmethodservice/Keyboard;
invokestatic cmb/pb/cmbsafe/a/a(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/o Landroid/inputmethodservice/Keyboard;
invokestatic cmb/pb/cmbsafe/a/a(Landroid/inputmethodservice/Keyboard;)V
aload 0
ldc "id"
ldc "cmbkeyboard_view"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 1
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/g Landroid/app/Activity;
iload 1
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/inputmethodservice/KeyboardView
putfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
iconst_1
invokevirtual android/inputmethodservice/KeyboardView/setEnabled(Z)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
iconst_0
invokevirtual android/inputmethodservice/KeyboardView/setPreviewEnabled(Z)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/K Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
invokevirtual android/inputmethodservice/KeyboardView/setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
invokestatic cmb/pb/ui/PBKeyboardActivity/g()[I
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
invokevirtual cmb/pb/ui/f/ordinal()I
iaload
tableswitch 2
L26
L27
L28
L29
L30
L31
L32
L33
L34
L35
default : L36
L36:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/s Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L8:
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getWindow()Landroid/view/Window;
iconst_3
invokevirtual android/view/Window/setSoftInputMode(I)V
L0:
ldc android/widget/EditText
ldc "setSoftInputShownOnFocus"
iconst_1
anewarray java/lang/Class
dup
iconst_0
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 8
aload 8
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
aload 8
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
ldc android/widget/EditText
ldc "setShowSoftInputOnFocus"
iconst_1
anewarray java/lang/Class
dup
iconst_0
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 8
aload 8
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
aload 8
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L3:
goto L9
L4:
astore 8
goto L9
L10:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
sipush 144
invokevirtual android/widget/EditText/setInputType(I)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
goto L11
L5:
aload 0
ldc "string"
ldc "cmbkb_please_input"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 1
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 8
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
aload 8
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
L6:
goto L13
L7:
astore 8
goto L13
L22:
aload 8
iconst_0
invokevirtual android/view/View/setVisibility(I)V
goto L20
L25:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/v Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L23
L26:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/q Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L31:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/l Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
L32:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/p Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L27:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/k Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L28:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/m Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L29:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/n Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L30:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/o Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L34:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/r Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L35:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/t Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
return
L33:
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/s Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/x Lcmb/pb/ui/f;
putfield cmb/pb/ui/PBKeyboardActivity/E Lcmb/pb/ui/f;
goto L36
L2:
astore 8
goto L1
.limit locals 12
.limit stack 7
.end method

.method static synthetic j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/q Landroid/inputmethodservice/Keyboard;
areturn
.limit locals 1
.limit stack 1
.end method

.method private j()V
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/a()V
aconst_null
astore 2
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 3
aload 2
astore 1
aload 3
ifnull L0
aload 2
astore 1
aload 3
invokeinterface android/text/Editable/length()I 0
ifle L0
aload 3
invokeinterface android/text/Editable/toString()Ljava/lang/String; 0
astore 1
L0:
aload 1
invokestatic cmb/pb/util/a/b(Ljava/lang/String;)Z
ifne L1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "text4set"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 2
invokevirtual cmb/pb/ui/PBKeyboardActivity/setResult(ILandroid/content/Intent;)V
L1:
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/finish()V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/r Landroid/inputmethodservice/Keyboard;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic l(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/p Landroid/inputmethodservice/Keyboard;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic m(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/l Landroid/inputmethodservice/Keyboard;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic n(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/view/View$OnClickListener;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/J Landroid/view/View$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic o(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/s Landroid/inputmethodservice/Keyboard;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic p(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/t Landroid/inputmethodservice/Keyboard;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic q(Lcmb/pb/ui/PBKeyboardActivity;)Z
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/D Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic r(Lcmb/pb/ui/PBKeyboardActivity;)I
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/z I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public a()V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
invokevirtual android/inputmethodservice/KeyboardView/getVisibility()I
ifne L0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/h Landroid/inputmethodservice/KeyboardView;
iconst_4
invokevirtual android/inputmethodservice/KeyboardView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public b()V
aload 0
aconst_null
putfield cmb/pb/ui/PBKeyboardActivity/C Ljava/lang/String;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/u Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
ldc "layout"
ldc "cmbkeyboard"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual cmb/pb/ui/PBKeyboardActivity/setContentView(I)V
aload 0
invokespecial cmb/pb/ui/PBKeyboardActivity/h()V
aload 0
invokespecial cmb/pb/ui/PBKeyboardActivity/i()V
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 1
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
astore 2
aload 2
aload 1
invokevirtual android/view/Display/getWidth()I
i2d
dconst_1
dmul
d2i
putfield android/view/WindowManager$LayoutParams/width I
aload 2
fconst_1
putfield android/view/WindowManager$LayoutParams/alpha F
aload 2
fconst_0
putfield android/view/WindowManager$LayoutParams/dimAmount F
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getWindow()Landroid/view/Window;
sipush 2006
invokevirtual android/view/Window/setType(I)V
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/getWindow()Landroid/view/Window;
aload 2
invokevirtual android/view/Window/setAttributes(Landroid/view/WindowManager$LayoutParams;)V
aload 0
invokestatic cmb/pb/util/i/a(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onDestroy()V
getstatic cmb/pb/ui/PBKeyboardActivity/w Landroid/os/Handler;
ifnull L0
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "rawX"
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/d F
invokevirtual android/os/Bundle/putFloat(Ljava/lang/String;F)V
aload 2
ldc "rawY"
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/e F
invokevirtual android/os/Bundle/putFloat(Ljava/lang/String;F)V
aload 1
aload 2
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
getstatic cmb/pb/ui/PBKeyboardActivity/w Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aconst_null
putstatic cmb/pb/ui/PBKeyboardActivity/w Landroid/os/Handler;
L0:
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/g Landroid/app/Activity;
new android/content/Intent
dup
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/g Landroid/app/Activity;
ldc cmb/pb/cmbsafe/CmbService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/app/Activity/stopService(Landroid/content/Intent;)Z
pop
return
.limit locals 3
.limit stack 5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
aload 1
invokevirtual android/view/MotionEvent/getRawX()F
putfield cmb/pb/ui/PBKeyboardActivity/d F
aload 0
aload 1
invokevirtual android/view/MotionEvent/getRawY()F
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/F F
fsub
putfield cmb/pb/ui/PBKeyboardActivity/e F
aload 0
invokevirtual cmb/pb/ui/PBKeyboardActivity/finish()V
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onWindowFocusChanged(Z)V
iload 1
ifeq L0
getstatic cmb/pb/ui/PBKeyboardActivity/N Lcmb/pb/ui/g;
ifnull L0
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/j I
ifne L1
aload 0
aload 0
aload 0
ldc "id"
ldc "cmbkb_contentLayout"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual cmb/pb/ui/PBKeyboardActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
invokevirtual android/widget/LinearLayout/getMeasuredHeight()I
putfield cmb/pb/ui/PBKeyboardActivity/j I
L1:
getstatic cmb/pb/ui/PBKeyboardActivity/N Lcmb/pb/ui/g;
aload 0
getfield cmb/pb/ui/PBKeyboardActivity/j I
invokeinterface cmb/pb/ui/g/a(I)V 1
L0:
return
.limit locals 2
.limit stack 5
.end method
