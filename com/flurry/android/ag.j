.bytecode 50.0
.class final synchronized com/flurry/android/ag
.super java/lang/Object

.field private 'a' Ljava/util/LinkedHashMap;

.field private 'b' I

.method <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 100
putfield com/flurry/android/ag/b I
aload 0
new com/flurry/android/h
dup
aload 0
bipush 100
i2f
ldc_w 0.75F
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
iconst_1
iadd
ldc_w 0.75F
invokespecial com/flurry/android/h/<init>(Lcom/flurry/android/ag;IF)V
putfield com/flurry/android/ag/a Ljava/util/LinkedHashMap;
return
.limit locals 2
.limit stack 6
.end method

.method static synthetic a(Lcom/flurry/android/ag;)I
aload 0
getfield com/flurry/android/ag/b I
ireturn
.limit locals 1
.limit stack 1
.end method

.method final a()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/flurry/android/ag/a Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/size()I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method final a(Ljava/lang/Object;)Ljava/lang/Object;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/flurry/android/ag/a Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
L1:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/flurry/android/ag/a Ljava/util/LinkedHashMap;
aload 1
aload 2
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.limit locals 3
.limit stack 3
.end method

.method final b()Ljava/util/List;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
new java/util/ArrayList
dup
aload 0
getfield com/flurry/android/ag/a Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/entrySet()Ljava/util/Set;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
astore 1
L1:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method final c()Ljava/util/Set;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/flurry/android/ag/a Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/keySet()Ljava/util/Set;
astore 1
L1:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method
