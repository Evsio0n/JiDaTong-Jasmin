.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapGroupCom
.super com/nd/android/u/contact/com/base/OapGroupSupportCom

.field private static final 'TAG' Ljava/lang/String; = "OapGroupCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapGroupSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final applyDoGroupEx(JILjava/lang/String;)Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 5
L0:
aload 0
lload 1
iload 3
aload 4
invokespecial com/nd/android/u/contact/com/base/OapGroupSupportCom/applyDoGroup(JILjava/lang/String;)Lorg/json/JSONObject;
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
istore 6
L1:
iload 6
ifne L3
iconst_1
istore 5
L3:
iload 5
ireturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 7
.limit stack 5
.end method

.method public final applyGroupEx(Ljava/lang/String;Ljava/lang/String;)Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 3
L0:
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/contact/com/base/OapGroupSupportCom/applyGroup(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
ldc "applyid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
istore 4
L1:
iload 4
ifeq L3
iconst_1
istore 3
L3:
iload 3
ireturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public getClassGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
aload 0
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getClassGroupList()Lorg/json/JSONObject;
astore 5
iconst_0
istore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 5
ifnull L5
aload 5
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 3
aload 5
ldc "groups"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 7
iload 3
istore 2
aload 7
ifnull L5
aload 7
invokevirtual org/json/JSONArray/length()I
istore 4
iconst_0
istore 1
aconst_null
astore 5
L6:
iload 3
istore 2
iload 1
iload 4
if_icmpge L5
L0:
new com/product/android/commonInterface/contact/OapGroup
dup
aload 7
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
astore 5
L1:
aload 6
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
iload 1
iconst_1
iadd
istore 1
goto L6
L2:
astore 5
L7:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
iload 3
istore 2
L5:
iload 2
aload 6
invokeinterface java/util/List/size()I 0
if_icmpne L8
aload 6
areturn
L8:
aconst_null
areturn
L4:
astore 5
goto L7
.limit locals 8
.limit stack 4
.end method

.method public getDeptGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
aload 0
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getDeptGroupList()Lorg/json/JSONObject;
astore 5
iconst_0
istore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 5
ifnull L5
aload 5
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 3
aload 5
ldc "groups"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 7
iload 3
istore 2
aload 7
ifnull L5
aload 7
invokevirtual org/json/JSONArray/length()I
istore 4
iconst_0
istore 1
aconst_null
astore 5
L6:
iload 3
istore 2
iload 1
iload 4
if_icmpge L5
L0:
new com/product/android/commonInterface/contact/OapGroup
dup
aload 7
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
astore 5
L1:
aload 6
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
iload 1
iconst_1
iadd
istore 1
goto L6
L2:
astore 5
L7:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
iload 3
istore 2
L5:
iload 2
aload 6
invokeinterface java/util/List/size()I 0
if_icmpne L8
aload 6
areturn
L8:
aconst_null
areturn
L4:
astore 5
goto L7
.limit locals 8
.limit stack 4
.end method

.method public final getGroupInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getSupportGroupInfo(J)Lorg/json/JSONObject;
astore 4
aconst_null
astore 3
aload 4
ifnull L0
new com/product/android/commonInterface/contact/OapGroup
dup
aload 4
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
astore 3
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public final getGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.throws com/common/android/utils/http/HttpException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 2
iconst_1
istore 1
L0:
iload 1
istore 3
iload 2
iload 1
if_icmpge L1
aload 0
iconst_m1
iload 2
bipush 50
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getSupportGroupList(III)Lorg/json/JSONObject;
astore 4
aload 4
ifnull L0
aload 4
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
aload 4
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
iload 1
istore 3
aload 4
ifnull L1
iconst_0
istore 3
L2:
iload 3
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
aload 4
iload 3
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 6
aload 6
ldc "membernum"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
ifne L4
ldc "OapGroupCom"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getGroupList membernum=0,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 5
new com/product/android/commonInterface/contact/OapGroup
dup
aload 6
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
iload 2
aload 4
invokevirtual org/json/JSONArray/length()I
iadd
istore 2
goto L0
L1:
aload 5
astore 4
aload 5
invokeinterface java/util/List/size()I 0
iload 3
iconst_5
isub
if_icmpgt L5
aconst_null
astore 4
L5:
aload 4
areturn
.limit locals 7
.limit stack 4
.end method

.method public final getGroupMemberList(JJ)Ljava/util/List;
.signature "(JJ)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
aconst_null
astore 8
iconst_0
istore 5
iconst_1
istore 6
aconst_null
astore 9
L3:
iload 5
iload 6
if_icmpge L4
aload 0
lload 1
iload 5
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getMembers(JII)Lorg/json/JSONObject;
astore 10
aload 10
ifnonnull L5
L4:
aload 8
areturn
L5:
aload 10
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 7
aload 10
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 11
aload 11
ifnull L4
iconst_0
istore 6
L6:
iload 6
aload 11
invokevirtual org/json/JSONArray/length()I
if_icmpge L7
L0:
aload 11
iload 6
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 10
L1:
aload 10
astore 9
L8:
aload 8
astore 10
aload 8
ifnonnull L9
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
L9:
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 8
aload 8
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 8
aload 9
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/initValueByJSON(Lorg/json/JSONObject;J)V
aload 10
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 6
iconst_1
iadd
istore 6
aload 10
astore 8
goto L6
L2:
astore 10
aload 10
invokevirtual org/json/JSONException/printStackTrace()V
goto L8
L7:
iload 5
aload 11
invokevirtual org/json/JSONArray/length()I
iadd
istore 5
iload 7
istore 6
goto L3
.limit locals 12
.limit stack 5
.end method

.method public final getSocietyList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.throws com/common/android/utils/http/HttpException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 1
iconst_1
istore 2
L0:
iload 1
iload 2
if_icmpge L1
aload 0
iload 1
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getSupportSocietyList(II)Lorg/json/JSONObject;
astore 5
aload 5
ifnull L0
aload 5
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
aload 5
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
iload 3
istore 2
aload 5
ifnull L0
iconst_0
istore 2
L2:
iload 2
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
aload 4
new com/product/android/commonInterface/contact/OapGroup
dup
aload 5
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
iload 1
aload 5
invokevirtual org/json/JSONArray/length()I
iadd
istore 1
iload 3
istore 2
goto L0
L1:
aload 4
areturn
.limit locals 6
.limit stack 5
.end method

.method public final queryApplyGroupInfoEx(JLcom/nd/android/u/contact/dataStructure/ApplySocietyInfo;)Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
aload 3
astore 4
aload 3
ifnonnull L1
L0:
new com/nd/android/u/contact/dataStructure/ApplySocietyInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/ApplySocietyInfo/<init>()V
astore 4
L1:
aload 4
aload 0
lload 1
invokespecial com/nd/android/u/contact/com/base/OapGroupSupportCom/queryApplyGroupInfo(J)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/dataStructure/ApplySocietyInfo/LoadFromJson(Lorg/json/JSONObject;)V
L3:
iconst_0
ireturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public final searchGroup(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)I
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;Ljava/lang/String;Ljava/lang/String;II)I"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 3
astore 8
aload 3
ifnull L5
aload 3
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 8
L5:
aload 1
astore 3
aload 1
ifnonnull L6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L6:
aload 0
aload 2
iconst_m1
aload 8
iload 4
iload 5
invokespecial com/nd/android/u/contact/com/base/OapGroupSupportCom/search(Ljava/lang/String;ILjava/lang/String;II)Lorg/json/JSONObject;
astore 2
aload 2
ifnonnull L7
iconst_0
istore 4
L8:
iload 4
ireturn
L7:
aload 2
ldc "groups"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 2
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
iload 6
istore 4
aload 1
ifnull L8
aload 1
invokevirtual org/json/JSONArray/length()I
istore 7
iconst_0
istore 5
L9:
iload 6
istore 4
iload 5
iload 7
if_icmpge L8
L0:
aload 1
iload 5
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 2
L1:
aload 2
ifnull L4
L3:
aload 3
new com/product/android/commonInterface/contact/OapGroup
dup
aload 2
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 5
iconst_1
iadd
istore 5
goto L9
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 9
.limit stack 6
.end method
