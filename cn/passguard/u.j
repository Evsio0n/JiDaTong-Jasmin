.bytecode 50.0
.class final synchronized cn/passguard/u
.super java/lang/Object
.implements android/view/View$OnTouchListener

.field private synthetic 'a' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/u/a Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 1
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
getfield cn/passguard/u/a Lcn/passguard/k;
iconst_0
invokestatic cn/passguard/k/c(Lcn/passguard/k;Z)V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
