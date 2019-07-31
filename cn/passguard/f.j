.bytecode 50.0
.class final synchronized cn/passguard/F
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/E;

.method <init>(Lcn/passguard/E;)V
aload 0
aload 1
putfield cn/passguard/F/a Lcn/passguard/E;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield cn/passguard/F/a Lcn/passguard/E;
invokestatic cn/passguard/E/a(Lcn/passguard/E;)Lcn/passguard/D;
invokestatic cn/passguard/D/b(Lcn/passguard/D;)V
return
.limit locals 1
.limit stack 1
.end method
