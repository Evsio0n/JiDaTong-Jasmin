.bytecode 50.0
.class final synchronized com/flurry/android/ae
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' I

.field private synthetic 'b' Lcom/flurry/android/v;

.method <init>(Lcom/flurry/android/v;I)V
aload 0
aload 1
putfield com/flurry/android/ae/b Lcom/flurry/android/v;
aload 0
iload 2
putfield com/flurry/android/ae/a I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
new com/flurry/android/CallbackEvent
dup
aload 0
getfield com/flurry/android/ae/a I
invokespecial com/flurry/android/CallbackEvent/<init>(I)V
astore 1
aload 0
getfield com/flurry/android/ae/b Lcom/flurry/android/v;
invokestatic com/flurry/android/v/a(Lcom/flurry/android/v;)Lcom/flurry/android/AppCircleCallback;
aload 1
invokeinterface com/flurry/android/AppCircleCallback/onAdsUpdated(Lcom/flurry/android/CallbackEvent;)V 1
return
.limit locals 2
.limit stack 3
.end method
