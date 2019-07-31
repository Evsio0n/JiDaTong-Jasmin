.bytecode 50.0
.class final synchronized cn/passguard/H
.super java/lang/Object
.implements android/content/DialogInterface$OnDismissListener

.field private synthetic 'a' Lcn/passguard/D;

.method <init>(Lcn/passguard/D;)V
aload 0
aload 1
putfield cn/passguard/H/a Lcn/passguard/D;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
aload 0
getfield cn/passguard/H/a Lcn/passguard/D;
iconst_0
invokestatic cn/passguard/D/a(Lcn/passguard/D;Z)V
return
.limit locals 2
.limit stack 2
.end method
