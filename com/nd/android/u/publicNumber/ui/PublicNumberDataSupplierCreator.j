.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/PublicNumberDataSupplierCreator
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
new com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/<init>(Ljava/lang/String;)V
areturn
.limit locals 6
.limit stack 5
.end method
