.bytecode 50.0
.class public synchronized abstract com/nd/android/u/publicNumber/business/db/AbstracPublicNumberDb
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IDbCreator

.field protected 'mDbOperation' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public clear()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/business/db/AbstracPublicNumberDb/mDbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
return
.limit locals 1
.limit stack 2
.end method
