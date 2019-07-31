.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/RankFilterInfo
.super java/lang/Object
.implements java/io/Serializable
.inner class public Gender inner com/product/android/commonInterface/contact/RankFilterInfo$Gender outer com/product/android/commonInterface/contact/RankFilterInfo
.inner class public TimeCondition inner com/product/android/commonInterface/contact/RankFilterInfo$TimeCondition outer com/product/android/commonInterface/contact/RankFilterInfo

.field private static final 'serialVersionUID' J = 5233156540343771586L


.field private 'departid' I

.field private 'genderSelect' I

.field private 'orgSelectName' Ljava/lang/String;

.field private 'timeSelect' I

.field private 'unitid' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/RankFilterInfo/departid I
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/RankFilterInfo/orgSelectName Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/RankFilterInfo/genderSelect I
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/RankFilterInfo/timeSelect I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankFilterInfo/orgSelectName Ljava/lang/String;
return
L0:
aload 0
ldc "\u5168\u516c\u53f8"
putfield com/product/android/commonInterface/contact/RankFilterInfo/orgSelectName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getDepartid()I
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/departid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGenderSelect()I
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/genderSelect I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOrgSelectName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/orgSelectName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTimeSelect()I
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/timeSelect I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitid()I
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDefault()Z
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/departid I
ifne L0
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/genderSelect I
ifne L0
aload 0
getfield com/product/android/commonInterface/contact/RankFilterInfo/timeSelect I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setDepartid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/RankFilterInfo/departid I
return
.limit locals 2
.limit stack 2
.end method

.method public setGenderSelect(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/RankFilterInfo/genderSelect I
return
.limit locals 2
.limit stack 2
.end method

.method public setOrgSelectName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/RankFilterInfo/orgSelectName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTimeSelect(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/RankFilterInfo/timeSelect I
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/RankFilterInfo/unitid I
return
.limit locals 2
.limit stack 2
.end method
