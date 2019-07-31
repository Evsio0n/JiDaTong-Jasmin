.bytecode 50.0
.class public synchronized cn/passguard/PassGuardEdit
.super android/widget/EditText

.field public static 'KEY_CHAOS_PRESS_KEY' I

.field public static 'KEY_CHAOS_SWITCH_VIEW' I

.field public static 'KEY_NONE_CHAOS' I

.field public static 'm_tag' Ljava/lang/String;

.field private 'a' Lcn/passguard/k;

.field private 'b' Ljava/util/HashMap;

.field private 'c' Landroid/content/Context;

.field private 'd' Z

.field private 'e' Landroid/view/View;

.field private 'f' Z

.field private 'g' I

.field public 'm_strid' Ljava/lang/String;

.field public 'm_webview' Landroid/webkit/WebView;

.method static <clinit>()V
iconst_0
putstatic cn/passguard/PassGuardEdit/KEY_NONE_CHAOS I
iconst_1
putstatic cn/passguard/PassGuardEdit/KEY_CHAOS_SWITCH_VIEW I
iconst_2
putstatic cn/passguard/PassGuardEdit/KEY_CHAOS_PRESS_KEY I
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
aconst_null
putfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
aload 0
aconst_null
putfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
aload 0
aconst_null
putfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
aload 0
iconst_0
putfield cn/passguard/PassGuardEdit/d Z
aload 0
aconst_null
putfield cn/passguard/PassGuardEdit/e Landroid/view/View;
aload 0
aconst_null
putfield cn/passguard/PassGuardEdit/m_webview Landroid/webkit/WebView;
aload 0
ldc ""
putfield cn/passguard/PassGuardEdit/m_strid Ljava/lang/String;
aload 0
iconst_1
putfield cn/passguard/PassGuardEdit/f Z
aload 0
iconst_0
putfield cn/passguard/PassGuardEdit/g I
aload 1
invokestatic cn/passguard/g/a(Landroid/content/Context;)V
aload 0
aload 1
putfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
aload 0
iconst_0
invokevirtual cn/passguard/PassGuardEdit/setInputType(I)V
invokestatic cn/passguard/PassGuardEdit/a()Z
ifeq L0
aload 0
iconst_1
invokevirtual cn/passguard/PassGuardEdit/setRawInputType(I)V
aload 0
iconst_1
invokevirtual cn/passguard/PassGuardEdit/setTextIsSelectable(Z)V
aload 0
iconst_0
invokevirtual cn/passguard/PassGuardEdit/setCursorVisible(Z)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic a(Lcn/passguard/PassGuardEdit;I)V
aload 0
iload 1
putfield cn/passguard/PassGuardEdit/g I
return
.limit locals 2
.limit stack 2
.end method

.method private static a()Z
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/PassGuardEdit;)Z
aload 0
getfield cn/passguard/PassGuardEdit/d Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic b(Lcn/passguard/PassGuardEdit;)Z
aload 0
getfield cn/passguard/PassGuardEdit/f Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic c(Lcn/passguard/PassGuardEdit;)Landroid/view/View;
aload 0
getfield cn/passguard/PassGuardEdit/e Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic d(Lcn/passguard/PassGuardEdit;)I
iconst_0
istore 1
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
iconst_2
newarray int
astore 2
aload 0
aload 2
invokevirtual cn/passguard/PassGuardEdit/getLocationOnScreen([I)V
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 3
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/l()I
aload 3
invokevirtual android/view/Display/getHeight()I
aload 2
iconst_1
iaload
isub
aload 0
invokevirtual cn/passguard/PassGuardEdit/getHeight()I
isub
isub
istore 1
L0:
iload 1
ireturn
.limit locals 4
.limit stack 4
.end method

.method static synthetic e(Lcn/passguard/PassGuardEdit;)Landroid/content/Context;
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic f(Lcn/passguard/PassGuardEdit;)I
aload 0
getfield cn/passguard/PassGuardEdit/g I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic g(Lcn/passguard/PassGuardEdit;)Lcn/passguard/k;
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getSynKeyboardInput()Ljava/lang/String;
getstatic cn/passguard/PassGuardEdit/m_tag Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static setLicense(Ljava/lang/String;)V
invokestatic cn/passguard/D/a()Lcn/passguard/D;
aload 0
invokevirtual cn/passguard/D/a(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public static synKeyboardInput(Ljava/lang/String;)V
aload 0
putstatic cn/passguard/PassGuardEdit/m_tag Ljava/lang/String;
return
.limit locals 1
.limit stack 1
.end method

.method public EditTextAlwaysShow(Z)V
aload 0
iload 1
putfield cn/passguard/PassGuardEdit/d Z
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/e Lcn/passguard/y;
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public StartPassGuardKeyBoard()V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/h()Z
ifne L0
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/isFinishing()Z
ifne L0
invokestatic cn/passguard/PassGuardEdit/a()Z
ifeq L1
aload 0
iconst_1
invokevirtual cn/passguard/PassGuardEdit/setCursorVisible(Z)V
L1:
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual cn/passguard/PassGuardEdit/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/i()V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public StopPassGuardKeyBoard()V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/h()Z
ifeq L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/j()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public checkMatch()Z
iconst_0
istore 1
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/f()Z
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public clear()V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/e()V
aload 0
ldc ""
invokevirtual cn/passguard/PassGuardEdit/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public destory()V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/m()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getOutput0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 4
aload 4
astore 3
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 4
astore 3
invokestatic cn/passguard/D/a()Lcn/passguard/D;
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
invokevirtual cn/passguard/D/a(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
aload 1
aload 2
invokevirtual cn/passguard/k/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getOutput1(Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 3
aload 3
astore 2
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 3
astore 2
invokestatic cn/passguard/D/a()Lcn/passguard/D;
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
invokevirtual cn/passguard/D/a(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
aload 1
invokevirtual cn/passguard/k/a(Ljava/lang/String;)Ljava/lang/String;
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public getOutput2()Ljava/lang/String;
aconst_null
astore 2
aload 2
astore 1
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 2
astore 1
invokestatic cn/passguard/D/a()Lcn/passguard/D;
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
invokevirtual cn/passguard/D/a(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/d()Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public getOutput3()I
iconst_0
istore 2
iload 2
istore 1
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
iload 2
istore 1
invokestatic cn/passguard/D/a()Lcn/passguard/D;
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
invokevirtual cn/passguard/D/a(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/c()I
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getPassLevel()[I
iconst_1
newarray int
astore 1
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/g()[I
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 1
.end method

.method public initPassGuardKeyBoard()V
aload 0
new cn/passguard/k
dup
aload 0
getfield cn/passguard/PassGuardEdit/c Landroid/content/Context;
new cn/passguard/h
dup
aload 0
invokespecial cn/passguard/h/<init>(Lcn/passguard/PassGuardEdit;)V
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
invokespecial cn/passguard/k/<init>(Landroid/content/Context;Lcn/passguard/f;Ljava/util/HashMap;)V
putfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
aload 0
getfield cn/passguard/PassGuardEdit/m_strid Ljava/lang/String;
putfield cn/passguard/k/d Ljava/lang/String;
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
aload 0
getfield cn/passguard/PassGuardEdit/m_webview Landroid/webkit/WebView;
putfield cn/passguard/k/c Landroid/webkit/WebView;
aload 0
aconst_null
putfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
return
.limit locals 1
.limit stack 7
.end method

.method public isKeyBoardShowing()Z
iconst_0
istore 1
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/h()Z
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public needScrollView(Z)V
aload 0
iload 1
putfield cn/passguard/PassGuardEdit/f Z
return
.limit locals 2
.limit stack 2
.end method

.method protected onDetachedFromWindow()V
aload 0
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
aload 0
invokespecial android/widget/EditText/onDetachedFromWindow()V
return
.limit locals 1
.limit stack 1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
iload 1
ifne L0
invokestatic cn/passguard/PassGuardEdit/a()Z
ifeq L1
aload 0
iconst_0
invokevirtual cn/passguard/PassGuardEdit/setCursorVisible(Z)V
L1:
aload 0
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
L2:
aload 0
iload 1
iload 2
aload 3
invokespecial android/widget/EditText/onFocusChanged(ZILandroid/graphics/Rect;)V
return
L0:
aload 0
invokevirtual cn/passguard/PassGuardEdit/StartPassGuardKeyBoard()V
goto L2
.limit locals 4
.limit stack 4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iconst_0
istore 4
iload 1
tableswitch 4
L0
default : L1
L1:
iconst_1
istore 3
L2:
iload 3
ireturn
L0:
iload 4
istore 3
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L2
iload 4
istore 3
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/h()Z
ifeq L2
aload 0
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
goto L1
.limit locals 5
.limit stack 1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
instanceof android/os/Bundle
ifeq L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 1
checkcast android/os/Bundle
astore 1
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
aload 1
ldc "keyBoard"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
invokevirtual cn/passguard/k/a(Landroid/os/Parcelable;)V
aload 0
aload 1
ldc "instanceState"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
invokespecial android/widget/EditText/onRestoreInstanceState(Landroid/os/Parcelable;)V
return
L0:
aload 0
aload 1
invokespecial android/widget/EditText/onRestoreInstanceState(Landroid/os/Parcelable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "instanceState"
aload 0
invokespecial android/widget/EditText/onSaveInstanceState()Landroid/os/Parcelable;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
ldc "keyBoard"
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
invokevirtual cn/passguard/k/k()Landroid/os/Parcelable;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
areturn
L0:
aload 0
invokespecial android/widget/EditText/onSaveInstanceState()Landroid/os/Parcelable;
areturn
.limit locals 2
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
aload 1
invokespecial android/widget/EditText/onTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 1
L0
default : L1
L1:
iload 2
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getX()F
aload 0
invokevirtual cn/passguard/PassGuardEdit/getWidth()I
i2f
fcmpg
ifgt L2
aload 1
invokevirtual android/view/MotionEvent/getX()F
fconst_0
fcmpl
iflt L2
aload 1
invokevirtual android/view/MotionEvent/getY()F
aload 0
invokevirtual cn/passguard/PassGuardEdit/getHeight()I
i2f
fcmpg
ifgt L2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fconst_0
fcmpl
iflt L2
aload 0
invokevirtual cn/passguard/PassGuardEdit/StartPassGuardKeyBoard()V
iload 2
ireturn
L2:
invokestatic cn/passguard/PassGuardEdit/a()Z
ifeq L1
aload 0
iconst_0
invokevirtual cn/passguard/PassGuardEdit/setCursorVisible(Z)V
iload 2
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected onWindowVisibilityChanged(I)V
iload 1
lookupswitch
4 : L0
8 : L0
default : L1
L1:
aload 0
iload 1
invokespecial android/widget/EditText/onWindowVisibilityChanged(I)V
return
L0:
aload 0
invokevirtual cn/passguard/PassGuardEdit/StopPassGuardKeyBoard()V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public setButtonPress(Z)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/c Lcn/passguard/y;
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setCipherKey(Ljava/lang/String;)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
getstatic cn/passguard/y/n Lcn/passguard/y;
aload 1
invokevirtual cn/passguard/k/a(Lcn/passguard/y;Ljava/lang/Object;)V
return
L0:
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/n Lcn/passguard/y;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public setEncrypt(Z)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/b Lcn/passguard/y;
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setInputRegex(Ljava/lang/String;)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/l Lcn/passguard/y;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setKeyBoardHideAction(Lcn/passguard/doAction;)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
getstatic cn/passguard/y/k Lcn/passguard/y;
aload 1
invokevirtual cn/passguard/k/a(Lcn/passguard/y;Ljava/lang/Object;)V
return
L0:
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/k Lcn/passguard/y;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public setKeyBoardShowAction(Lcn/passguard/doAction;)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
getstatic cn/passguard/y/j Lcn/passguard/y;
aload 1
invokevirtual cn/passguard/k/a(Lcn/passguard/y;Ljava/lang/Object;)V
return
L0:
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/j Lcn/passguard/y;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public setMatchRegex(Ljava/lang/String;)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/m Lcn/passguard/y;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setMaxLength(I)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
iload 1
ifle L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/i Lcn/passguard/y;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setNumberORLetterPad(Z)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/f Lcn/passguard/y;
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setPublicKey(Ljava/lang/String;)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnull L0
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
getstatic cn/passguard/y/o Lcn/passguard/y;
aload 1
invokevirtual cn/passguard/k/a(Lcn/passguard/y;Ljava/lang/Object;)V
return
L0:
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/o Lcn/passguard/y;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public setReorder(I)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/h Lcn/passguard/y;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setScrollView(Landroid/view/View;)V
aload 0
aload 1
putfield cn/passguard/PassGuardEdit/e Landroid/view/View;
return
.limit locals 2
.limit stack 2
.end method

.method public setShowPassword(Z)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/a Lcn/passguard/y;
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setWatchOutside(Z)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/g Lcn/passguard/y;
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public useNumberPad(Z)V
aload 0
getfield cn/passguard/PassGuardEdit/a Lcn/passguard/k;
ifnonnull L0
aload 0
getfield cn/passguard/PassGuardEdit/b Ljava/util/HashMap;
getstatic cn/passguard/y/d Lcn/passguard/y;
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 3
.end method
