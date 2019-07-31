.bytecode 50.0
.class final synchronized cn/passguard/r
.super java/lang/Object
.implements android/view/View$OnLongClickListener

.field private synthetic 'a' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/r/a Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/r;)Lcn/passguard/k;
aload 0
getfield cn/passguard/r/a Lcn/passguard/k;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final onLongClick(Landroid/view/View;)Z
aload 0
getfield cn/passguard/r/a Lcn/passguard/k;
iconst_1
invokestatic cn/passguard/k/c(Lcn/passguard/k;Z)V
new cn/passguard/s
dup
aload 0
invokespecial cn/passguard/s/<init>(Lcn/passguard/r;)V
invokevirtual java/lang/Thread/start()V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method
