.bytecode 50.0
.class final synchronized com/flurry/android/af
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Ljava/lang/String;

.field private synthetic 'b' Lcom/flurry/android/v;

.method <init>(Lcom/flurry/android/v;Ljava/lang/String;)V
aload 0
aload 1
putfield com/flurry/android/af/b Lcom/flurry/android/v;
aload 0
aload 2
putfield com/flurry/android/af/a Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
new com/flurry/android/CallbackEvent
dup
bipush 101
invokespecial com/flurry/android/CallbackEvent/<init>(I)V
astore 1
aload 1
aload 0
getfield com/flurry/android/af/a Ljava/lang/String;
invokevirtual com/flurry/android/CallbackEvent/setMessage(Ljava/lang/String;)V
aload 0
getfield com/flurry/android/af/b Lcom/flurry/android/v;
invokestatic com/flurry/android/v/a(Lcom/flurry/android/v;)Lcom/flurry/android/AppCircleCallback;
ifnull L0
aload 0
getfield com/flurry/android/af/b Lcom/flurry/android/v;
invokestatic com/flurry/android/v/a(Lcom/flurry/android/v;)Lcom/flurry/android/AppCircleCallback;
aload 1
invokeinterface com/flurry/android/AppCircleCallback/onMarketAppLaunchError(Lcom/flurry/android/CallbackEvent;)V 1
L0:
return
.limit locals 2
.limit stack 3
.end method
