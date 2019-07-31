.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/business/comm/NdFlowerSdk
.super com/android/u/weibo/weibo/business/comm/NdBaseSdk

.field public static final 'FLOWER_ITEM_TYPE' I = 20000


.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/business/comm/NdBaseSdk/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static delFlowerMessage(Landroid/content/Context;II)I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/DELETE_FLOWER_MESSAGE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?mtype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&dtype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
aload 3
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 1
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 1
sipush 200
if_icmpeq L0
ldc "delFollowMessage"
aload 0
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_m1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 5
.end method

.method public static getFlowerInfoRecv(Landroid/content/Context;JJIILjava/lang/String;Ljava/util/ArrayList;)I
.signature "(Landroid/content/Context;JJIILjava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;)I"
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_INFO_RECV Ljava/lang/String;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
lload 1
lconst_0
lcmp
ifeq L0
aload 10
ldc "tuid"
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
lload 3
lconst_0
lcmp
ifeq L1
aload 10
ldc "fuid"
lload 3
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 10
ldc "total"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "pos"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
iload 6
ifeq L2
aload 10
ldc "size"
iload 6
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 7
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 10
ldc "order"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 0
aload 10
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 5
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 5
sipush 200
if_icmpne L4
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
aload 0
ldc "flowertotal"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 6
aload 0
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 7
aload 7
ifnonnull L5
L6:
iload 6
ireturn
L5:
aload 8
astore 0
aload 8
ifnonnull L7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
L7:
iconst_0
istore 5
aload 7
invokevirtual org/json/JSONArray/length()I
istore 9
L8:
iload 5
iload 9
if_icmpge L6
aload 7
iload 5
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 8
new com/product/android/commonInterface/contact/RankInfo
dup
invokespecial com/product/android/commonInterface/contact/RankInfo/<init>()V
astore 10
aload 10
aload 8
ldc "count"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/RankInfo/setTotal(I)V
aload 10
aload 8
ldc "fuid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/product/android/commonInterface/contact/RankInfo/setUid(J)V
aload 10
aload 8
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
aload 10
aload 8
ldc "sysavatar"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/RankInfo/sysAvatarId I
aload 0
aload 10
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 5
iconst_1
iadd
istore 5
goto L8
L4:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 5
aload 0
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 11
.limit stack 5
.end method

.method public static getFlowerInfoSend(Landroid/content/Context;JIILjava/lang/String;Ljava/util/ArrayList;)I
.signature "(Landroid/content/Context;JIILjava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;)I"
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_INFO_SEND Ljava/lang/String;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
lload 1
lconst_0
lcmp
ifeq L0
aload 8
ldc "tuid"
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
iload 4
ifeq L1
aload 8
ldc "size"
iload 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 8
ldc "pos"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 5
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 8
ldc "order"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 0
aload 8
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 3
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 3
sipush 200
if_icmpne L3
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
aload 0
ldc "number"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 4
aload 0
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnonnull L4
L5:
iload 4
ireturn
L4:
aload 6
astore 0
aload 6
ifnonnull L6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
L6:
iconst_0
istore 3
aload 5
invokevirtual org/json/JSONArray/length()I
istore 7
L7:
iload 3
iload 7
if_icmpge L5
aload 5
iload 3
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
new com/product/android/commonInterface/contact/RankInfo
dup
invokespecial com/product/android/commonInterface/contact/RankInfo/<init>()V
astore 8
aload 8
aload 6
ldc "count"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/RankInfo/setTotal(I)V
aload 8
aload 6
ldc "tuid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/product/android/commonInterface/contact/RankInfo/setUid(J)V
aload 8
aload 6
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
aload 8
aload 6
ldc "sysavatar"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/RankInfo/sysAvatarId I
aload 0
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L7
L3:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 3
aload 0
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 9
.limit stack 5
.end method

.method public static getFlowerLeft(Landroid/content/Context;I)I
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWERLEFT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
aload 2
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 1
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 1
sipush 200
if_icmpne L1
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "item_sum"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
ireturn
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 1
aload 0
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L0:
iconst_m1
ireturn
.limit locals 3
.limit stack 5
.end method

.method public static getFlowerMessage(Landroid/content/Context;JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/GET_FLOWER_MESSAGE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?mtype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&fuid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
aload 5
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 4
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 5
aconst_null
astore 0
iload 4
sipush 200
if_icmpne L0
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
aload 5
invokevirtual org/json/JSONObject/length()I
ifeq L1
new com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse
dup
invokespecial com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse/<init>()V
aload 5
invokevirtual com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 0
aload 0
lload 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setUid(J)V
aload 0
iload 3
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setType(I)V
L1:
aload 0
areturn
L0:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 4
aload 5
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method

.method public static getFriendFlowersDesc(Landroid/content/Context;IIII)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;IIII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FRIEND_FLOWER_DESC Ljava/lang/String;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "gender"
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "count"
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 3
ifeq L0
aload 5
ldc "rank_min"
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 1
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 1
sipush 200
if_icmpne L2
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "result"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 0
aload 0
ifnull L3
new com/product/android/commonInterface/contact/parser/RankInfoListParser
dup
invokespecial com/product/android/commonInterface/contact/parser/RankInfoListParser/<init>()V
aload 0
invokevirtual com/product/android/commonInterface/contact/parser/RankInfoListParser/parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
areturn
L0:
aload 5
ldc "rank_max"
iload 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
goto L1
L3:
aconst_null
areturn
L2:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 1
aload 0
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method

.method public static getRankAdData(Landroid/content/Context;)Ljava/util/List;
.signature "(Landroid/content/Context;)Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
aconst_null
astore 4
aload 4
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/RANK_AD Ljava/lang/String;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 1
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 1
sipush 200
if_icmpne L1
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
aload 4
astore 3
aload 0
ifnull L0
aload 0
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 4
astore 3
aload 5
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
iconst_0
istore 1
L2:
aload 0
astore 3
iload 1
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
new org/json/JSONArray
dup
aload 5
iload 1
invokevirtual org/json/JSONArray/get(I)Ljava/lang/Object;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 2
L3:
iload 2
aload 3
invokevirtual org/json/JSONArray/length()I
if_icmpge L4
aload 4
aload 3
iload 2
invokevirtual org/json/JSONArray/getLong(I)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
aload 0
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L2
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 1
aload 0
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L0:
aload 3
areturn
.limit locals 6
.limit stack 5
.end method

.method public static getUserFlowerInfo(Landroid/content/Context;JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/GET_USER_FLOWER_INFO Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?fuid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&short="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
aload 4
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 3
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 4
iload 3
sipush 200
if_icmpne L1
new com/product/android/commonInterface/weibo/FlowerMessageInfo
dup
invokespecial com/product/android/commonInterface/weibo/FlowerMessageInfo/<init>()V
astore 0
new org/json/JSONObject
dup
aload 4
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 4
aload 0
aload 4
ldc "flower"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
aload 4
ldc "message"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 4
ldc "message"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
L2:
aload 4
ldc "voiceurl"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 4
ldc "voiceurl"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
aload 0
aload 0
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice_local Ljava/lang/String;
aload 0
iconst_1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
L3:
aload 0
aload 4
ldc "issend"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/isSend I
aload 0
lload 1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/uid J
aload 0
iconst_1
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
aload 0
areturn
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 3
aload 4
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L0:
aconst_null
areturn
.limit locals 5
.limit stack 5
.end method

.method public static getUserFlowersRank(Landroid/content/Context;IJIIJJ)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;IJIIJJ)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/USER_FLOWERS_RANK Ljava/lang/String;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
aload 10
ldc "history"
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "deptid"
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "gender"
iload 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "count"
iload 5
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
lload 6
lconst_0
lcmp
ifeq L0
aload 10
ldc "rank_min"
lload 6
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
aload 10
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 1
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 1
sipush 200
if_icmpne L2
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 0
aload 0
ifnull L3
aload 0
invokevirtual org/json/JSONArray/length()I
ifle L3
new com/product/android/commonInterface/contact/parser/RankInfoListParser
dup
invokespecial com/product/android/commonInterface/contact/parser/RankInfoListParser/<init>()V
aload 0
invokevirtual com/product/android/commonInterface/contact/parser/RankInfoListParser/parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
areturn
L0:
aload 10
ldc "rank_max"
lload 8
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
goto L1
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L2:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 1
aload 0
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 11
.limit stack 5
.end method

.method public static sendBatchFlower(Landroid/content/Context;JIJI)Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
aload 7
ldc "amount"
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
aload 8
ldc "tuid"
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
lload 4
lconst_0
lcmp
ifeq L0
aload 7
ldc "itemid"
lload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 7
ldc "sendflower"
aload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/SEND_BATCH_FLOWER Ljava/lang/String;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
aload 7
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 3
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 0
iload 3
sipush 200
if_icmpne L2
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 8
aload 8
ldc "sendflower"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
new com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo
dup
invokespecial com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/<init>()V
astore 7
aload 7
aload 8
ldc "sendflower"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/loadFromJson(Lorg/json/JSONObject;)V
aload 7
astore 0
aload 8
ldc "servertime"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 8
ldc "servertime"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 1
aload 7
astore 0
aload 8
ldc "itemids"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 8
ldc "itemids"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
aload 7
astore 0
aload 8
ifnull L4
aload 7
astore 0
aload 8
invokevirtual org/json/JSONArray/length()I
ifle L4
aload 7
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
ifnonnull L5
aload 7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
L5:
iconst_0
istore 3
L6:
aload 7
astore 0
iload 3
aload 8
invokevirtual org/json/JSONArray/length()I
if_icmpge L4
aload 8
iload 3
invokevirtual org/json/JSONArray/optJSONObject(I)Lorg/json/JSONObject;
astore 0
new com/product/android/commonInterface/backpack/BackPackItem
dup
invokespecial com/product/android/commonInterface/backpack/BackPackItem/<init>()V
astore 9
aload 9
aload 0
ldc "itemid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/backpack/BackPackItem/itemid J
aload 9
aload 0
ldc "amount"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/backpack/BackPackItem/amount I
aload 9
aload 0
ldc "itemtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/backpack/BackPackItem/itemtype I
aload 9
aload 0
ldc "del_time"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/backpack/BackPackItem/del_time J
aload 9
lload 1
putfield com/product/android/commonInterface/backpack/BackPackItem/server_time J
aload 7
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L6
L0:
iload 6
ifeq L7
aload 7
ldc "itemtype"
iload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
goto L1
L7:
aload 7
ldc "itemtype"
sipush 20000
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
goto L1
L3:
aconst_null
astore 0
L4:
aload 0
areturn
L2:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 3
aload 0
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 10
.limit stack 5
.end method

.method public static setFlowerMesasge(Landroid/content/Context;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
aload 0
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/SET_FLOWER_MESSAGE Ljava/lang/String;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "mtype"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
iconst_1
if_icmpne L0
aload 5
ldc "voicedata"
new java/io/File
dup
aload 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic com/product/android/utils/FileHelper/tansferToByteArrayBASE64Encode(Ljava/io/File;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokestatic com/common/android/utils/FileUtils/getFileExtensionName(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
astore 0
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc "amr"
astore 0
L1:
aload 5
ldc "voiceext"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 4
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
istore 2
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 3
aconst_null
astore 0
iload 2
sipush 200
if_icmpne L3
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
aload 3
invokevirtual org/json/JSONObject/length()I
ifeq L4
new com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse
dup
invokespecial com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse/<init>()V
aload 3
invokevirtual com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 0
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setUid(J)V
aload 0
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setType(I)V
L4:
aload 0
areturn
L0:
aload 5
ldc "message"
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
goto L2
L3:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 2
aload 3
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method
