.bytecode 50.0
.class final synchronized cn/passguard/z
.super java/lang/Object
.implements cn/passguard/doAction

.field private synthetic 'a' Lcn/passguard/PassGuardManager;

.field private final synthetic 'b' Ljava/lang/String;

.method <init>(Lcn/passguard/PassGuardManager;Ljava/lang/String;)V
aload 0
aload 1
putfield cn/passguard/z/a Lcn/passguard/PassGuardManager;
aload 0
aload 2
putfield cn/passguard/z/b Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/z;)Lcn/passguard/PassGuardManager;
aload 0
getfield cn/passguard/z/a Lcn/passguard/PassGuardManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final doActionFunction()V
invokestatic cn/passguard/PassGuardManager/a()Landroid/content/Context;
checkcast android/app/Activity
new cn/passguard/A
dup
aload 0
aload 0
getfield cn/passguard/z/b Ljava/lang/String;
invokespecial cn/passguard/A/<init>(Lcn/passguard/z;Ljava/lang/String;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 5
.end method
