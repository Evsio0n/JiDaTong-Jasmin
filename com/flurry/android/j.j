.bytecode 50.0
.class final synchronized com/flurry/android/j
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Ljava/util/List;

.method <init>(Ljava/util/List;)V
aload 0
aload 1
putfield com/flurry/android/j/a Ljava/util/List;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
aload 0
getfield com/flurry/android/j/a Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/flurry/android/o
invokevirtual com/flurry/android/o/a()V
goto L0
L1:
return
.limit locals 2
.limit stack 1
.end method
