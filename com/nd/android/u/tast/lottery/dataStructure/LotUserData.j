.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/dataStructure/LotUserData
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'cate_id' J

.field private 'create_dt' Ljava/lang/String;

.field private 'depart' Ljava/lang/String;

.field private 'errorcode' I

.field private 'flag' I

.field private 'headImg' Ljava/lang/String;

.field private 'id' J

.field private 'prize_id' J

.field private 'prize_name' Ljava/lang/String;

.field private 'rank' I

.field private 'short_name' Ljava/lang/String;

.field private 'uid' J

.field private 'user_name' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/id J
aload 0
lconst_0
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/uid J
aload 0
lconst_0
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/prize_id J
aload 0
lconst_0
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/cate_id J
aload 0
ldc ""
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/depart Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/initLotUser(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCate_id()J
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/cate_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCreate_dt()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/create_dt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDepart()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/depart Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getErrorcode()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/errorcode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFlag()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/flag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHeadImg()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/headImg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPrize_id()J
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/prize_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPrize_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/prize_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRank()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/rank I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getShort_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/short_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUser_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/user_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initLotUser(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/id J
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/uid J
aload 0
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/uid J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/getUserDepart(J)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/depart Ljava/lang/String;
aload 0
aload 1
ldc "user_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/user_name Ljava/lang/String;
aload 0
aload 1
ldc "rank"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/rank I
aload 0
aload 1
ldc "prize_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/prize_name Ljava/lang/String;
aload 0
aload 1
ldc "short_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/short_name Ljava/lang/String;
aload 1
ldc "create_dt"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 2
lload 2
lconst_0
lcmp
ifle L0
aload 0
new java/text/SimpleDateFormat
dup
ldc "MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
ldc2_w 1000L
lload 2
lmul
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/create_dt Ljava/lang/String;
L0:
aload 0
aload 1
ldc "prize_id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/prize_id J
aload 0
aload 1
ldc "cate_id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/cate_id J
aload 0
aload 1
ldc "flag"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/flag I
return
.limit locals 4
.limit stack 8
.end method

.method public setCate_id(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/cate_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setCreate_dt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/create_dt Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDepart(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/depart Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setErrorcode(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/errorcode I
return
.limit locals 2
.limit stack 2
.end method

.method public setFlag(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/flag I
return
.limit locals 2
.limit stack 2
.end method

.method public setHeadImg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/headImg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPrize_id(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/prize_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPrize_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/prize_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRank(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/rank I
return
.limit locals 2
.limit stack 2
.end method

.method public setShort_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/short_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUser_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotUserData/user_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
