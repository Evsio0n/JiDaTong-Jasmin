.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/Base64Helper
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static encodeToString([BI)Ljava/lang/String;
.annotation invisible Landroid/annotation/TargetApi;
value I = 8
.end annotation
aload 0
iload 1
invokestatic android/util/Base64/encodeToString([BI)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
