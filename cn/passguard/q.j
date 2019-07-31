.bytecode 50.0
.class final synchronized cn/passguard/q
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/p;

.method <init>(Lcn/passguard/p;)V
aload 0
aload 1
putfield cn/passguard/q/a Lcn/passguard/p;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield cn/passguard/q/a Lcn/passguard/p;
invokestatic cn/passguard/p/a(Lcn/passguard/p;)Lcn/passguard/o;
invokestatic cn/passguard/o/a(Lcn/passguard/o;)Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
invokeinterface cn/passguard/f/h()V 0
return
.limit locals 1
.limit stack 1
.end method
