.bytecode 50.0
.class public synchronized com/nd/android/u/controller4xy/XYPeronDataSupplierCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IDataSupplierCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getDataSupplier(IJILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
new com/nd/android/u/controller4xy/XYPeronDataSupplier
dup
lload 2
invokespecial com/nd/android/u/controller4xy/XYPeronDataSupplier/<init>(J)V
areturn
.limit locals 6
.limit stack 4
.end method
