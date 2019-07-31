.bytecode 50.0
.class final synchronized cn/passguard/E
.super java/lang/Thread

.field private synthetic 'a' Lcn/passguard/D;

.method <init>(Lcn/passguard/D;)V
aload 0
aload 1
putfield cn/passguard/E/a Lcn/passguard/D;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/E;)Lcn/passguard/D;
aload 0
getfield cn/passguard/E/a Lcn/passguard/D;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
L0:
ldc2_w 300000L
invokestatic cn/passguard/E/sleep(J)V
aload 0
getfield cn/passguard/E/a Lcn/passguard/D;
invokestatic cn/passguard/D/a(Lcn/passguard/D;)Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/isFinishing()Z
ifne L0
aload 0
getfield cn/passguard/E/a Lcn/passguard/D;
invokestatic cn/passguard/D/a(Lcn/passguard/D;)Landroid/content/Context;
checkcast android/app/Activity
new cn/passguard/F
dup
aload 0
invokespecial cn/passguard/F/<init>(Lcn/passguard/E;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
L1:
goto L0
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L0
.limit locals 2
.limit stack 4
.end method
