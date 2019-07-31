.bytecode 50.0
.class public synchronized com/nd/android/u/controller4xy/XYPeronDataSupplier
.super com/nd/android/u/controller/dataSupplier/PersonDataSupplier

.field private 'messageSource' Ljava/lang/String;

.method public <init>(J)V
aload 0
lload 1
invokespecial com/nd/android/u/controller/dataSupplier/PersonDataSupplier/<init>(J)V
aload 0
ldc ""
putfield com/nd/android/u/controller4xy/XYPeronDataSupplier/messageSource Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public getMessageSource()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller4xy/XYPeronDataSupplier/messageSource Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc ""
putfield com/nd/android/u/controller4xy/XYPeronDataSupplier/messageSource Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller4xy/XYPeronDataSupplier/messageSource Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/android/u/controller4xy/XYPeronDataSupplier/messageSource Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public setMessageSource(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller4xy/XYPeronDataSupplier/messageSource Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
