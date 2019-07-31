.bytecode 50.0
.class final synchronized cn/passguard/n
.super java/lang/Object
.implements android/view/View$OnTouchListener

.field private synthetic 'a' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/n/a Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 4
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
getfield cn/passguard/n/a Lcn/passguard/k;
getstatic cn/passguard/y/g Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L1
aload 0
getfield cn/passguard/n/a Lcn/passguard/k;
invokevirtual cn/passguard/k/j()V
goto L1
.limit locals 3
.limit stack 2
.end method
