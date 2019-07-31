.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener
.super java/lang/Object
.implements android/view/View$OnTouchListener
.inner class public static ShowInputTouchListener inner com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener outer com/android/u/weibo/weibo/utils/WeiboUtil

.field private static final 'LIMIT' I = 20


.field private 'context' Landroid/content/Context;

.field private 'down_x' F

.field private 'down_y' F

.field private 'editText' Landroid/widget/EditText;

.field private 'mSmileyLayout' Landroid/widget/LinearLayout;

.field private 'up_x' F

.field private 'up_y' F

.method public <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
fconst_0
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_x F
aload 0
fconst_0
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_y F
aload 0
fconst_0
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_x F
aload 0
fconst_0
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_y F
aload 0
aload 2
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/editText Landroid/widget/EditText;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/context Landroid/content/Context;
aload 0
aload 3
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/mSmileyLayout Landroid/widget/LinearLayout;
return
.limit locals 4
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
default : L3
L3:
iconst_0
ireturn
L0:
aload 0
aload 2
invokevirtual android/view/MotionEvent/getX()F
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_x F
aload 0
aload 2
invokevirtual android/view/MotionEvent/getY()F
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_y F
aload 0
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_x F
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_x F
aload 0
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_y F
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_y F
goto L3
L2:
aload 2
invokevirtual android/view/MotionEvent/getX()F
fstore 3
fload 3
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_x F
fsub
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_x F
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_x F
fsub
invokestatic java/lang/Math/abs(F)F
fcmpl
ifle L4
aload 0
fload 3
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_x F
L4:
aload 2
invokevirtual android/view/MotionEvent/getY()F
fstore 3
fload 3
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_y F
fsub
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_y F
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_y F
fsub
invokestatic java/lang/Math/abs(F)F
fcmpl
ifle L3
aload 0
fload 3
putfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_y F
goto L3
L1:
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_x F
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_x F
fsub
invokestatic java/lang/Math/abs(F)F
ldc_w 20.0F
fcmpg
iflt L5
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/up_y F
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/down_y F
fsub
invokestatic java/lang/Math/abs(F)F
ldc_w 20.0F
fcmpg
ifge L3
L5:
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/context Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/editText Landroid/widget/EditText;
invokestatic com/common/android/utils/InputMethodUtils/showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/mSmileyLayout Landroid/widget/LinearLayout;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/mSmileyLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/isShown()Z
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/mSmileyLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L3
.limit locals 4
.limit stack 3
.end method
