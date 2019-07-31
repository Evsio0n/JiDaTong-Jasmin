.bytecode 50.0
.class final synchronized cn/passguard/p
.super java/lang/Thread

.field private synthetic 'a' Lcn/passguard/o;

.method <init>(Lcn/passguard/o;)V
aload 0
aload 1
putfield cn/passguard/p/a Lcn/passguard/o;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/p;)Lcn/passguard/o;
aload 0
getfield cn/passguard/p/a Lcn/passguard/o;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
L0:
ldc2_w 500L
invokestatic cn/passguard/p/sleep(J)V
aload 0
getfield cn/passguard/p/a Lcn/passguard/o;
invokestatic cn/passguard/o/a(Lcn/passguard/o;)Lcn/passguard/k;
invokestatic cn/passguard/k/h(Lcn/passguard/k;)Landroid/widget/LinearLayout;
new cn/passguard/q
dup
aload 0
invokespecial cn/passguard/q/<init>(Lcn/passguard/p;)V
invokevirtual android/widget/LinearLayout/post(Ljava/lang/Runnable;)Z
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method
