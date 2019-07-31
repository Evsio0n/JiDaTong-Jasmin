.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/assist/FailReason
.super java/lang/Object
.inner class public static final enum FailType inner com/nostra13/universalimageloader/core/assist/FailReason$FailType outer com/nostra13/universalimageloader/core/assist/FailReason

.field private final 'cause' Ljava/lang/Throwable;

.field private final 'type' Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.method public <init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/FailReason/type Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/assist/FailReason/cause Ljava/lang/Throwable;
return
.limit locals 3
.limit stack 2
.end method

.method public getCause()Ljava/lang/Throwable;
aload 0
getfield com/nostra13/universalimageloader/core/assist/FailReason/cause Ljava/lang/Throwable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aload 0
getfield com/nostra13/universalimageloader/core/assist/FailReason/type Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
areturn
.limit locals 1
.limit stack 1
.end method
