.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/dataStructure/LotUsersData
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'lotUser1' Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;

.field private 'lotUser2' Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser1 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 0
aconst_null
putfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser2 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
return
.limit locals 1
.limit stack 2
.end method

.method public getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser1 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser2 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initLotUser1(Lorg/json/JSONObject;)V
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser1 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
ifnonnull L0
aload 0
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
putfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser1 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
L0:
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser1 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/initLotUser(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 3
.end method

.method public initLotUser2(Lorg/json/JSONObject;)V
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser2 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
ifnonnull L0
aload 0
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
putfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser2 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
L0:
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser2 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/initLotUser(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setLotUser1(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser1 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
return
.limit locals 2
.limit stack 2
.end method

.method public setLotUser2(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUsersData/lotUser2 Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
return
.limit locals 2
.limit stack 2
.end method
