.bytecode 50.0
.class public final synchronized com/flurry/android/CallbackEvent
.super java/lang/Object

.field public static final 'ADS_LOADED_FROM_CACHE' I = 201


.field public static final 'ADS_UPDATED' I = 202


.field public static final 'ERROR_MARKET_LAUNCH' I = 101


.field private 'a' I

.field private 'b' J

.field private 'c' Ljava/lang/String;

.method <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/flurry/android/CallbackEvent/a I
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/flurry/android/CallbackEvent/b J
return
.limit locals 2
.limit stack 3
.end method

.method public final getMessage()Ljava/lang/String;
aload 0
getfield com/flurry/android/CallbackEvent/c Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTimestamp()J
aload 0
getfield com/flurry/android/CallbackEvent/b J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getType()I
aload 0
getfield com/flurry/android/CallbackEvent/a I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setMessage(Ljava/lang/String;)V
aload 0
aload 1
putfield com/flurry/android/CallbackEvent/c Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setTimestamp(J)V
aload 0
lload 1
putfield com/flurry/android/CallbackEvent/b J
return
.limit locals 3
.limit stack 3
.end method
