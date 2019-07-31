.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/OapAddOrgParamsIn
.super java/lang/Object

.field private 'account' Ljava/lang/String;

.field private 'email' Ljava/lang/String;

.field private 'flag' I

.field private 'idcard' Ljava/lang/String;

.field private 'mobile' Ljava/lang/String;

.field private 'name' Ljava/lang/String;

.field private 'password' Ljava/lang/String;

.field private 'specialty' Ljava/lang/String;

.field private 'unitName' Ljava/lang/String;

.field public 'unitlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"

.field private 'verifyCode' Ljava/lang/String;

.field private 'verifyCodeforjoin' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/account Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/password Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/mobile Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/email Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/verifyCode Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/verifyCodeforjoin Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/flag I
aload 0
ldc ""
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/unitName Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/unitlist Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public getAccount()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/account Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEmail()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/email Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFlag()I
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/flag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIdcard()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/idcard Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMobile()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/mobile Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPassword()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/password Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSpecialty()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/specialty Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/unitName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getVerifyCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/verifyCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getVerifyCodeforjoin()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/verifyCodeforjoin Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAccount(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/account Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setEmail(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/email Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFlag(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/flag I
return
.limit locals 2
.limit stack 2
.end method

.method public setIdcard(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/idcard Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMobile(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/mobile Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPassword(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/password Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSpecialty(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/specialty Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/unitName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setVerifyCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/verifyCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setVerifyCodeforjoin(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/verifyCodeforjoin Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
