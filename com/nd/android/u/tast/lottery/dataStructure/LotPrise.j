.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/dataStructure/LotPrise
.super java/lang/Object

.field private 'cate_id' J

.field private 'cate_name' Ljava/lang/String;

.field private 'category' I

.field private 'prize_id' J

.field private 'prize_name' Ljava/lang/String;

.field private 'rank' I

.field private 'short_name' Ljava/lang/String;

.field private 'status' I

.field private 'type' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_id J
aload 0
lconst_0
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_id J
aload 0
ldc ""
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/short_name Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public getCate_id()J
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCate_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCategory()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/category I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPrize_id()J
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPrize_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRank()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/rank I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getShort_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/short_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStatus()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/status I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public parseJson(Lorg/json/JSONObject;)Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L8 to L9 using L2
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
ldc "cate_id"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "cate_id"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_id J
L1:
aload 1
ldc "prize_id"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "prize_id"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_id J
L3:
aload 1
ldc "rank"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 1
ldc "rank"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/rank I
L4:
aload 1
ldc "cate_name"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L5
aload 0
aload 1
ldc "cate_name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_name Ljava/lang/String;
L5:
aload 1
ldc "prize_name"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
ldc "prize_name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_name Ljava/lang/String;
L6:
aload 1
ldc "short_name"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 0
aload 1
ldc "short_name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/short_name Ljava/lang/String;
L7:
aload 1
ldc "status"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L8
aload 0
aload 1
ldc "status"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/status I
L8:
aload 1
ldc "category"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L9
aload 0
aload 1
ldc "category"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/category I
L9:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public parseJsonString(Ljava/lang/String;)Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L8 to L9 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "cate_id"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "cate_id"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_id J
L1:
aload 1
ldc "prize_id"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "prize_id"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_id J
L3:
aload 1
ldc "rank"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 1
ldc "rank"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/rank I
L4:
aload 1
ldc "prize_name"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L5
aload 0
aload 1
ldc "prize_name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_name Ljava/lang/String;
L5:
aload 1
ldc "cate_name"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
ldc "cate_name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_name Ljava/lang/String;
L6:
aload 1
ldc "short_name"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 0
aload 1
ldc "short_name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/short_name Ljava/lang/String;
L7:
aload 1
ldc "status"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L8
aload 0
aload 1
ldc "status"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/status I
L8:
aload 1
ldc "category"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L9
aload 0
aload 1
ldc "category"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/category I
L9:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public setCate_id(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setCate_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/cate_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCategory(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/category I
return
.limit locals 2
.limit stack 2
.end method

.method public setPrize_id(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPrize_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/prize_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRank(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/rank I
return
.limit locals 2
.limit stack 2
.end method

.method public setShort_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/short_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setStatus(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/status I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/dataStructure/LotPrise/type I
return
.limit locals 2
.limit stack 2
.end method
