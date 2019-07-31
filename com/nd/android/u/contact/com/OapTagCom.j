.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapTagCom
.super com/nd/android/u/contact/com/base/OapTagSupportCom

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapTagSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getTagUserList(IIILjava/util/ArrayList;)I
.signature "(IIILjava/util/ArrayList<Ljava/lang/Long;>;)I"
.throws com/common/android/utils/http/HttpException
aload 0
iload 1
iload 2
iload 3
invokevirtual com/nd/android/u/contact/com/OapTagCom/getTagUsers(III)Lorg/json/JSONObject;
astore 5
aload 5
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
iload 1
sipush 200
if_icmpne L0
aload 5
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 5
aload 5
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
aload 4
ifnull L1
aload 5
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnull L1
iconst_0
istore 1
L2:
iload 1
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 4
aload 5
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
ldc "tuid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L2
L0:
new com/common/android/utils/http/HttpException
dup
aload 5
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 1
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
L1:
iload 2
ireturn
.limit locals 6
.limit stack 4
.end method

.method public final getUserTagsList(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L2 using L2
L0:
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapTagCom/getUserTags(J)Lorg/json/JSONObject;
astore 4
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
L1:
iload 3
sipush 200
if_icmpne L7
L3:
aload 4
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L4:
iconst_0
istore 3
L8:
aload 5
astore 4
L5:
iload 3
aload 6
invokevirtual org/json/JSONArray/length()I
if_icmpge L9
new com/product/android/commonInterface/contact/TagInfo
dup
invokespecial com/product/android/commonInterface/contact/TagInfo/<init>()V
astore 4
aload 4
aload 6
iload 3
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/contact/TagInfo/setJsonObject(Lorg/json/JSONObject;)V
aload 5
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L6:
iload 3
iconst_1
iadd
istore 3
goto L8
L7:
new com/common/android/utils/http/HttpException
dup
aload 4
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 3
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
astore 4
L9:
aload 4
areturn
.limit locals 7
.limit stack 4
.end method

.method public final userChangeTags(Ljava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapTagCom/changeTags(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
iload 2
sipush 200
if_icmpne L0
iconst_1
ireturn
L0:
new com/common/android/utils/http/HttpException
dup
aload 1
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
iload 2
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
.limit locals 3
.limit stack 4
.end method
