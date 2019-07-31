.bytecode 50.0
.class final synchronized com/flurry/android/b
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Landroid/content/Context;

.field final synthetic 'b' Lcom/flurry/android/FlurryAgent;

.field private synthetic 'c' Z

.method <init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V
aload 0
aload 1
putfield com/flurry/android/b/b Lcom/flurry/android/FlurryAgent;
aload 0
iload 2
putfield com/flurry/android/b/c Z
aload 0
aload 3
putfield com/flurry/android/b/a Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public final run()V
aload 0
getfield com/flurry/android/b/b Lcom/flurry/android/FlurryAgent;
invokestatic com/flurry/android/FlurryAgent/b(Lcom/flurry/android/FlurryAgent;)V
aload 0
getfield com/flurry/android/b/b Lcom/flurry/android/FlurryAgent;
invokestatic com/flurry/android/FlurryAgent/c(Lcom/flurry/android/FlurryAgent;)V
aload 0
getfield com/flurry/android/b/c Z
ifne L0
aload 0
getfield com/flurry/android/b/b Lcom/flurry/android/FlurryAgent;
invokestatic com/flurry/android/FlurryAgent/d(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;
new com/flurry/android/l
dup
aload 0
invokespecial com/flurry/android/l/<init>(Lcom/flurry/android/b;)V
invokestatic com/flurry/android/FlurryAgent/i()J
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L0:
invokestatic com/flurry/android/FlurryAgent/j()Z
ifeq L1
aload 0
getfield com/flurry/android/b/b Lcom/flurry/android/FlurryAgent;
invokestatic com/flurry/android/FlurryAgent/e(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/v;
invokevirtual com/flurry/android/v/c()V
L1:
return
.limit locals 1
.limit stack 4
.end method
