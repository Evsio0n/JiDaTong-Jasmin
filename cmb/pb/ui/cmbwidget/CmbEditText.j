.bytecode 50.0
.class public synchronized cmb/pb/ui/cmbwidget/CmbEditText
.super android/widget/EditText

.field private static 'c' Ljava/lang/String;

.field private static 'm' Landroid/widget/PopupWindow;

.field public 'a' Z

.field public 'b' Z

.field private 'd' I

.field private 'e' I

.field private 'f' Z

.field private 'g' Z

.field private 'h' Lcmb/pb/ui/cmbwidget/b;

.field private 'i' Lcmb/pb/ui/cmbwidget/d;

.field private 'j' Lcmb/pb/ui/cmbwidget/e;

.field private 'k' Landroid/graphics/drawable/Drawable;

.field private 'l' Z

.field private 'n' Landroid/app/Activity;

.field private 'o' Ljava/lang/String;

.method static <clinit>()V
ldc "CmbEditText"
putstatic cmb/pb/ui/cmbwidget/CmbEditText/c Ljava/lang/String;
aconst_null
putstatic cmb/pb/ui/cmbwidget/CmbEditText/m Landroid/widget/PopupWindow;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/EditText/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/a Z
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/b Z
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/d I
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/e I
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/g Z
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/h Lcmb/pb/ui/cmbwidget/b;
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/i Lcmb/pb/ui/cmbwidget/d;
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/l Z
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/n Landroid/app/Activity;
aload 0
ldc ""
putfield cmb/pb/ui/cmbwidget/CmbEditText/o Ljava/lang/String;
aload 0
aload 1
aload 2
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/a(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/a()V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/EditText/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/a Z
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/b Z
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/d I
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/e I
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/g Z
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/h Lcmb/pb/ui/cmbwidget/b;
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/i Lcmb/pb/ui/cmbwidget/d;
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/l Z
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/CmbEditText/n Landroid/app/Activity;
aload 0
ldc ""
putfield cmb/pb/ui/cmbwidget/CmbEditText/o Ljava/lang/String;
aload 0
aload 1
aload 2
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/a(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/a()V
return
.limit locals 4
.limit stack 4
.end method

.method private a(I)V
aload 0
iload 1
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setSelection(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
L0:
aload 2
invokeinterface android/util/AttributeSet/getAttributeCount()I 0
istore 4
L1:
iconst_0
istore 3
goto L9
L3:
aload 2
iload 3
invokeinterface android/util/AttributeSet/getAttributeName(I)Ljava/lang/String; 1
astore 1
aload 2
iload 3
invokeinterface android/util/AttributeSet/getAttributeValue(I)Ljava/lang/String; 1
astore 5
aload 1
ldc "KeyBoardType"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
aload 5
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield cmb/pb/ui/cmbwidget/CmbEditText/d I
L4:
goto L10
L5:
aload 1
ldc "Length"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
aload 5
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield cmb/pb/ui/cmbwidget/CmbEditText/e I
L6:
goto L10
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L7:
aload 1
ldc "isPassword"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
aload 0
aload 5
invokestatic java/lang/Boolean/parseBoolean(Ljava/lang/String;)Z
putfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
L8:
goto L10
L9:
iload 3
iload 4
if_icmplt L3
return
L10:
iload 3
iconst_1
iadd
istore 3
goto L9
.limit locals 6
.limit stack 2
.end method

.method private a(Landroid/view/View;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
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
return
.limit locals 3
.limit stack 3
.end method

.method private a(Landroid/widget/EditText;)V
aload 1
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 1
aload 1
instanceof android/text/Spannable
ifeq L0
aload 1
checkcast android/text/Spannable
aload 1
invokeinterface java/lang/CharSequence/length()I 0
invokestatic android/text/Selection/setSelection(Landroid/text/Spannable;I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
aload 0
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/e()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/view/View;)V
aload 0
aload 1
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/a(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/widget/EditText;)V
aload 0
aload 1
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/a(Landroid/widget/EditText;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
aload 0
iload 1
putfield cmb/pb/ui/cmbwidget/CmbEditText/l Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic b(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
aload 0
iload 1
putfield cmb/pb/ui/cmbwidget/CmbEditText/g Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic b(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/g Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic c(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/graphics/drawable/Drawable;
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/l Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/n Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method private e()V
aload 0
aload 0
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/f()I
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/a(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private f()I
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/length()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private g()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L3 to L5 using L6
aload 0
ifnonnull L7
return
L7:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmpgt L0
aload 0
iconst_0
invokevirtual android/widget/EditText/setInputType(I)V
return
L0:
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getContext()Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getWindow()Landroid/view/Window;
iconst_3
invokevirtual android/view/Window/setSoftInputMode(I)V
L1:
ldc android/widget/EditText
ldc "setSoftInputShownOnFocus"
iconst_1
anewarray java/lang/Class
dup
iconst_0
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 1
aload 1
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
aload 1
aload 0
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
ldc android/widget/EditText
ldc "setShowSoftInputOnFocus"
iconst_1
anewarray java/lang/Class
dup
iconst_0
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 1
aload 1
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
aload 1
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L5:
return
L6:
astore 1
return
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 6
.end method

.method private h()Ljava/lang/String;
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
ifeq L0
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
ifnull L0
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
invokevirtual cmb/pb/ui/cmbwidget/e/b()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public a()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
new cmb/pb/ui/cmbwidget/b
dup
aload 0
invokespecial cmb/pb/ui/cmbwidget/b/<init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
putfield cmb/pb/ui/cmbwidget/CmbEditText/h Lcmb/pb/ui/cmbwidget/b;
aload 0
new cmb/pb/ui/cmbwidget/d
dup
aload 0
invokespecial cmb/pb/ui/cmbwidget/d/<init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
putfield cmb/pb/ui/cmbwidget/CmbEditText/i Lcmb/pb/ui/cmbwidget/d;
aload 0
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/g()V
aload 0
invokestatic android/text/method/PasswordTransformationMethod/getInstance()Landroid/text/method/PasswordTransformationMethod;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setTransformationMethod(Landroid/text/method/TransformationMethod;)V
aload 0
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
iconst_2
aaload
putfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
ifnonnull L1
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getContext()Landroid/content/Context;
ldc "drawable"
ldc "cmbkb_emotionstore_progresscancelbtn"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 1
aload 0
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
L1:
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
iconst_0
iconst_0
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
iconst_0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/a(Z)V
aload 0
new cmb/pb/ui/cmbwidget/a
dup
aload 0
aconst_null
invokespecial cmb/pb/ui/cmbwidget/a/<init>(Lcmb/pb/ui/cmbwidget/CmbEditText;Lcmb/pb/ui/cmbwidget/a;)V
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
aload 0
new cmb/pb/ui/cmbwidget/c
dup
aload 0
aconst_null
invokespecial cmb/pb/ui/cmbwidget/c/<init>(Lcmb/pb/ui/cmbwidget/CmbEditText;Lcmb/pb/ui/cmbwidget/c;)V
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
ifeq L3
aload 0
new cmb/pb/ui/cmbwidget/e
dup
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/e I
ldc ""
invokespecial cmb/pb/ui/cmbwidget/e/<init>(ILjava/lang/String;)V
putfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
L3:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 5
.end method

.method protected a(Z)V
iload 1
ifeq L0
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/k Landroid/graphics/drawable/Drawable;
astore 2
L1:
aload 0
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
iconst_0
aaload
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
iconst_1
aaload
aload 2
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
iconst_3
aaload
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return
L0:
aconst_null
astore 2
goto L1
.limit locals 3
.limit stack 6
.end method

.method public b()V
aload 0
ldc ""
invokespecial android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
ifeq L0
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
ifnull L0
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
invokevirtual cmb/pb/ui/cmbwidget/e/c()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public c()V
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/n Landroid/app/Activity;
ifnull L0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
putstatic cmb/pb/cmbsafe/b/a Ljava/lang/Boolean;
aconst_null
aload 0
invokestatic cmb/pb/cmbsafe/b/a(Landroid/app/Application;Lcmb/pb/ui/cmbwidget/CmbEditText;)V
ldc "showCMBKeyboardWindow2"
invokestatic cmb/pb/cmbsafe/b/a(Ljava/lang/String;)V
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/n Landroid/app/Activity;
new android/content/Intent
dup
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/n Landroid/app/Activity;
ldc cmb/pb/cmbsafe/CmbService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/app/Activity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
L0:
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/showCMBKeyboardWindow2()V
return
.limit locals 1
.limit stack 5
.end method

.method public d()V
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/CmbEditText/g Z
return
.limit locals 1
.limit stack 2
.end method

.method public getEnctyptText()Ljava/lang/String;
aload 0
invokespecial cmb/pb/ui/cmbwidget/CmbEditText/h()Ljava/lang/String;
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/o Ljava/lang/String;
invokestatic cmb/pb/util/h/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getInputLength()I
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
invokevirtual cmb/pb/ui/cmbwidget/e/a()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 1
invokeinterface java/lang/CharSequence/length()I 0
ifle L0
iconst_1
istore 5
L1:
aload 0
iload 5
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/a(Z)V
return
L0:
iconst_0
istore 5
goto L1
.limit locals 6
.limit stack 2
.end method

.method public setInputType(I)V
aload 0
iconst_0
invokespecial android/widget/EditText/setInputType(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setRecvTouchEventActivity(Landroid/app/Activity;)V
aload 0
aload 1
putfield cmb/pb/ui/cmbwidget/CmbEditText/n Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method public setSessionID(Ljava/lang/String;)V
aload 0
aload 1
putfield cmb/pb/ui/cmbwidget/CmbEditText/o Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public showCMBKeyboardWindow2()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/g Z
ifeq L4
return
L4:
aload 0
iconst_1
putfield cmb/pb/ui/cmbwidget/CmbEditText/g Z
L0:
aload 0
iconst_1
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setCursorVisible(Z)V
aload 0
iconst_1
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setFocusable(Z)V
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/requestFocus()Z
pop
ldc2_w 100L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/h Lcmb/pb/ui/cmbwidget/b;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Landroid/os/Handler;)V
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
ifeq L1
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/j Lcmb/pb/ui/cmbwidget/e;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/cmbwidget/e;)V
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 1
ldc "IsPassword"
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/f Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "Hint"
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getHint()Ljava/lang/CharSequence;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
pop
aload 1
ldc "KeyboardType"
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/d I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "Length"
aload 0
getfield cmb/pb/ui/cmbwidget/CmbEditText/e I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "OldText"
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/toString()Ljava/lang/String; 0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "UseHandler"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getContext()Landroid/content/Context;
ldc cmb/pb/ui/PBKeyboardActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getContext()Landroid/content/Context;
checkcast android/app/Activity
aload 1
getstatic cmb/pb/ui/PBKeyboardActivity/c I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L3:
return
L2:
astore 1
return
.limit locals 2
.limit stack 3
.end method
