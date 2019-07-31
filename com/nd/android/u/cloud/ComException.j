.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ComException
.super java/lang/Exception

.field private static final 'serialVersionUID' J = -6420605310824534225L


.field private 'mCode' I

.field private 'mErrorMsg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Exception/<init>()V
aload 0
sipush 500
putfield com/nd/android/u/cloud/ComException/mCode I
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
ldc_w 2131495475
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/ComException/mErrorMsg Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Exception/<init>()V
aload 0
sipush 500
putfield com/nd/android/u/cloud/ComException/mCode I
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
ldc_w 2131495475
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/ComException/mErrorMsg Ljava/lang/String;
aload 0
iload 1
putfield com/nd/android/u/cloud/ComException/mCode I
aload 0
aload 2
putfield com/nd/android/u/cloud/ComException/mErrorMsg Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public getCode()I
aload 0
getfield com/nd/android/u/cloud/ComException/mCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getErrorMsg()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ComException/mErrorMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/ComException/mCode I
return
.limit locals 2
.limit stack 2
.end method

.method public setErrorMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ComException/mErrorMsg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
