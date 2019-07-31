.bytecode 50.0
.class final synchronized cn/passguard/j
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/h;

.method <init>(Lcn/passguard/h;)V
aload 0
aload 1
putfield cn/passguard/j/a Lcn/passguard/h;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield cn/passguard/j/a Lcn/passguard/h;
getfield cn/passguard/h/a Lcn/passguard/PassGuardEdit;
invokestatic cn/passguard/PassGuardEdit/c(Lcn/passguard/PassGuardEdit;)Landroid/view/View;
ifnull L0
aload 0
getfield cn/passguard/j/a Lcn/passguard/h;
getfield cn/passguard/h/a Lcn/passguard/PassGuardEdit;
invokestatic cn/passguard/PassGuardEdit/c(Lcn/passguard/PassGuardEdit;)Landroid/view/View;
iconst_0
aload 0
getfield cn/passguard/j/a Lcn/passguard/h;
getfield cn/passguard/h/a Lcn/passguard/PassGuardEdit;
invokestatic cn/passguard/PassGuardEdit/f(Lcn/passguard/PassGuardEdit;)I
ineg
invokevirtual android/view/View/scrollBy(II)V
return
L0:
aload 0
getfield cn/passguard/j/a Lcn/passguard/h;
getfield cn/passguard/h/a Lcn/passguard/PassGuardEdit;
invokevirtual cn/passguard/PassGuardEdit/getParent()Landroid/view/ViewParent;
checkcast android/view/View
iconst_0
aload 0
getfield cn/passguard/j/a Lcn/passguard/h;
getfield cn/passguard/h/a Lcn/passguard/PassGuardEdit;
invokestatic cn/passguard/PassGuardEdit/f(Lcn/passguard/PassGuardEdit;)I
ineg
invokevirtual android/view/View/scrollBy(II)V
return
.limit locals 1
.limit stack 3
.end method
