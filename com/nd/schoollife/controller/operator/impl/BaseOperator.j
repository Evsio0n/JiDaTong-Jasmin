.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/BaseOperator
.super java/lang/Object

.field public 'context' Landroid/content/Context;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/BaseOperator/context Landroid/content/Context;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
putfield com/nd/schoollife/controller/operator/impl/BaseOperator/context Landroid/content/Context;
return
.limit locals 1
.limit stack 2
.end method
