.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/OapAddOrgParamsOut
.super java/lang/Object

.field private 'sid' Ljava/lang/String;

.field private 'unitlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsOut/sid Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsOut/unitlist Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public getSid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsOut/sid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitlist()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsOut/unitlist Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setSid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsOut/sid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitlist(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsOut/unitlist Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
