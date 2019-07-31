.bytecode 50.0
.class final synchronized com/flurry/android/ah
.super java/lang/Object

.field private 'a' Ljava/util/List;

.field private 'b' Landroid/os/Handler;

.field private 'c' Landroid/os/Handler;

.field private 'd' I

.field private 'e' Ljava/lang/Runnable;

.method <init>(Landroid/os/Handler;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/flurry/android/ah/a Ljava/util/List;
aload 0
aload 1
putfield com/flurry/android/ah/b Landroid/os/Handler;
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield com/flurry/android/ah/c Landroid/os/Handler;
aload 0
iload 2
putfield com/flurry/android/ah/d I
aload 0
new com/flurry/android/k
dup
aload 0
invokespecial com/flurry/android/k/<init>(Lcom/flurry/android/ah;)V
putfield com/flurry/android/ah/e Ljava/lang/Runnable;
aload 0
invokespecial com/flurry/android/ah/b()V
return
.limit locals 3
.limit stack 4
.end method

.method private a()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
monitorenter
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/flurry/android/ah/a Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/ref/WeakReference
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/flurry/android/o
astore 3
L3:
aload 3
ifnull L1
L4:
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
goto L1
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L6:
aload 0
getfield com/flurry/android/ah/c Landroid/os/Handler;
new com/flurry/android/j
dup
aload 1
invokespecial com/flurry/android/j/<init>(Ljava/util/List;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
aload 0
invokespecial com/flurry/android/ah/b()V
L7:
aload 0
monitorexit
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic a(Lcom/flurry/android/ah;)V
aload 0
invokespecial com/flurry/android/ah/a()V
return
.limit locals 1
.limit stack 1
.end method

.method private b()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/flurry/android/ah/a Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/ref/WeakReference
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
ifnonnull L1
aload 1
invokeinterface java/util/Iterator/remove()V 0
L3:
goto L1
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L4:
aload 0
getfield com/flurry/android/ah/b Landroid/os/Handler;
aload 0
getfield com/flurry/android/ah/e Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 0
getfield com/flurry/android/ah/b Landroid/os/Handler;
aload 0
getfield com/flurry/android/ah/e Ljava/lang/Runnable;
aload 0
getfield com/flurry/android/ah/d I
i2l
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L5:
aload 0
monitorexit
return
.limit locals 2
.limit stack 4
.end method

.method final a(Lcom/flurry/android/o;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 1
invokevirtual com/flurry/android/o/a()V
aload 0
getfield com/flurry/android/ah/a Ljava/util/List;
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 4
.end method
