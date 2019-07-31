.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapSecretLoveCom
.super com/nd/android/u/contact/com/base/OapSecretLoveSupportCom

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSecretLoveSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final addMyHiddenLove(JLjava/lang/StringBuilder;)Z
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/addMyLove(J)Lorg/json/JSONObject;
astore 5
aload 5
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 4
iload 4
sipush 200
if_icmpeq L0
aload 3
aload 5
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
sipush 200
iload 4
if_icmpne L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 6
.limit stack 3
.end method

.method public final delMyHiddenLove(J)Z
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/delMyLove(J)Lorg/json/JSONObject;
astore 4
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
iload 3
sipush 200
if_icmpne L0
iconst_1
ireturn
L0:
new com/common/android/utils/http/HttpException
dup
aload 4
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 3
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public final getHiddenLoveMeCount(Ljava/util/ArrayList;)I
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;>;)I"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getLoveMeInfo()Lorg/json/JSONObject;
astore 4
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
sipush 200
iload 2
if_icmpne L5
aload 4
ldc "result"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 4
aload 1
ifnull L6
aload 4
ldc "mutual"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
new com/nd/android/u/contact/util/HiddenLoveParser
dup
invokespecial com/nd/android/u/contact/util/HiddenLoveParser/<init>()V
astore 6
iconst_0
istore 2
L0:
aload 5
invokevirtual org/json/JSONArray/length()I
istore 3
L1:
iload 2
iload 3
if_icmpge L6
L3:
aload 1
aload 6
aload 5
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/util/HiddenLoveParser/parse(Lorg/json/JSONObject;)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L6:
aload 4
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
ireturn
L5:
new com/common/android/utils/http/HttpException
dup
aload 4
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 2
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
.limit locals 7
.limit stack 4
.end method

.method public final getHiddenLoveRandAd()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpException from L0 to L1 using L5
.catch org/json/JSONException from L0 to L1 using L6
.catch com/common/android/utils/http/HttpAuthException from L7 to L8 using L2
.catch com/common/android/utils/http/ResponseException from L7 to L8 using L3
.catch com/common/android/utils/http/HttpServerException from L7 to L8 using L4
.catch com/common/android/utils/http/HttpException from L7 to L8 using L5
.catch org/json/JSONException from L7 to L8 using L6
.catch com/common/android/utils/http/HttpAuthException from L8 to L9 using L10
.catch com/common/android/utils/http/ResponseException from L8 to L9 using L11
.catch com/common/android/utils/http/HttpServerException from L8 to L9 using L12
.catch com/common/android/utils/http/HttpException from L8 to L9 using L13
.catch org/json/JSONException from L8 to L9 using L14
.catch com/common/android/utils/http/HttpAuthException from L15 to L16 using L10
.catch com/common/android/utils/http/ResponseException from L15 to L16 using L11
.catch com/common/android/utils/http/HttpServerException from L15 to L16 using L12
.catch com/common/android/utils/http/HttpException from L15 to L16 using L13
.catch org/json/JSONException from L15 to L16 using L14
.catch com/common/android/utils/http/HttpAuthException from L17 to L18 using L10
.catch com/common/android/utils/http/ResponseException from L17 to L18 using L11
.catch com/common/android/utils/http/HttpServerException from L17 to L18 using L12
.catch com/common/android/utils/http/HttpException from L17 to L18 using L13
.catch org/json/JSONException from L17 to L18 using L14
aconst_null
astore 2
L0:
aload 0
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getLoveRankAd()Lorg/json/JSONObject;
astore 3
aload 3
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpne L19
aload 3
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 3
L1:
aload 3
ifnull L18
L7:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
L8:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L9:
iconst_0
istore 1
L15:
iload 1
aload 3
invokevirtual org/json/JSONArray/length()I
if_icmpge L17
aload 4
aload 3
iload 1
invokevirtual org/json/JSONArray/getLong(I)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L16:
iload 1
iconst_1
iadd
istore 1
goto L15
L17:
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L18:
aload 2
areturn
L2:
astore 2
L20:
aload 2
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
L19:
aconst_null
areturn
L3:
astore 2
L21:
aload 2
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L19
L4:
astore 2
L22:
aload 2
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L19
L5:
astore 2
L23:
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L19
L6:
astore 2
L24:
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L19
L14:
astore 2
goto L24
L13:
astore 2
goto L23
L12:
astore 2
goto L22
L11:
astore 2
goto L21
L10:
astore 2
goto L20
.limit locals 5
.limit stack 3
.end method

.method public final getHiddenLoveRank(IJIII)Ljava/util/ArrayList;
.signature "(IJIII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpException from L0 to L1 using L5
.catch org/json/JSONException from L0 to L1 using L6
.catch com/common/android/utils/http/HttpAuthException from L7 to L8 using L2
.catch com/common/android/utils/http/ResponseException from L7 to L8 using L3
.catch com/common/android/utils/http/HttpServerException from L7 to L8 using L4
.catch com/common/android/utils/http/HttpException from L7 to L8 using L5
.catch org/json/JSONException from L7 to L8 using L6
.catch com/common/android/utils/http/HttpAuthException from L9 to L10 using L2
.catch com/common/android/utils/http/ResponseException from L9 to L10 using L3
.catch com/common/android/utils/http/HttpServerException from L9 to L10 using L4
.catch com/common/android/utils/http/HttpException from L9 to L10 using L5
.catch org/json/JSONException from L9 to L10 using L6
L0:
aload 0
iload 1
lload 2
iload 4
iload 5
iload 6
iconst_0
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getLoveRank(IJIIII)Lorg/json/JSONObject;
astore 7
aload 7
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpne L11
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 7
ldc "result"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 9
new com/product/android/commonInterface/contact/parser/RankInfoParser
dup
invokespecial com/product/android/commonInterface/contact/parser/RankInfoParser/<init>()V
astore 10
L1:
iconst_0
istore 1
L7:
aload 9
invokevirtual org/json/JSONArray/length()I
istore 4
L8:
aload 8
astore 7
iload 1
iload 4
if_icmpge L12
L9:
aload 8
aload 10
aload 9
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/contact/parser/RankInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/contact/RankInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L10:
iload 1
iconst_1
iadd
istore 1
goto L8
L2:
astore 7
aload 7
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
L11:
aconst_null
astore 7
L12:
aload 7
areturn
L3:
astore 7
aload 7
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L11
L4:
astore 7
aload 7
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L11
L5:
astore 7
aload 7
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L11
L6:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
goto L11
.limit locals 11
.limit stack 8
.end method

.method public final getMyHiddenLoveInfo(Ljava/util/ArrayList;)Lorg/json/JSONObject;
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;>;)Lorg/json/JSONObject;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getMyLoveInfo()Lorg/json/JSONObject;
astore 4
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
sipush 200
iload 2
if_icmpne L5
aload 4
ldc "result"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 4
aload 4
ifnull L6
aload 4
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
pop
aload 4
ldc "info"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 1
ifnull L6
aload 5
ifnull L6
new com/nd/android/u/contact/util/HiddenLoveParser
dup
invokespecial com/nd/android/u/contact/util/HiddenLoveParser/<init>()V
astore 6
iconst_0
istore 2
L0:
aload 5
invokevirtual org/json/JSONArray/length()I
istore 3
L1:
iload 2
iload 3
if_icmpge L6
L3:
aload 1
aload 6
aload 5
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/util/HiddenLoveParser/parse(Lorg/json/JSONObject;)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L6:
aload 4
areturn
L5:
new com/common/android/utils/http/HttpException
dup
aload 4
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 2
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
.limit locals 7
.limit stack 4
.end method
