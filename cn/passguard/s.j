.bytecode 50.0
.class final synchronized cn/passguard/s
.super java/lang/Thread

.field private synthetic 'a' Lcn/passguard/r;

.method <init>(Lcn/passguard/r;)V
aload 0
aload 1
putfield cn/passguard/s/a Lcn/passguard/r;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/s;)Lcn/passguard/r;
aload 0
getfield cn/passguard/s/a Lcn/passguard/r;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
L0:
aload 0
getfield cn/passguard/s/a Lcn/passguard/r;
invokestatic cn/passguard/r/a(Lcn/passguard/r;)Lcn/passguard/k;
invokestatic cn/passguard/k/k(Lcn/passguard/k;)Z
ifne L3
L1:
return
L3:
aload 0
getfield cn/passguard/s/a Lcn/passguard/r;
invokestatic cn/passguard/r/a(Lcn/passguard/r;)Lcn/passguard/k;
invokestatic cn/passguard/k/h(Lcn/passguard/k;)Landroid/widget/LinearLayout;
new cn/passguard/t
dup
aload 0
invokespecial cn/passguard/t/<init>(Lcn/passguard/s;)V
invokevirtual android/widget/LinearLayout/post(Ljava/lang/Runnable;)Z
pop
ldc2_w 100L
invokestatic cn/passguard/s/sleep(J)V
L4:
goto L0
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method
