.bytecode 50.0
.class public synchronized com/nd/android/u/contact/util/HiddenLoveParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/nd/android/u/contact/util/HiddenLoveParser/parse(Lorg/json/JSONObject;)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final parse(Lorg/json/JSONObject;)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
.throws org/json/JSONException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
new com/nd/android/u/contact/dataStructure/HiddenLoveInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/HiddenLoveInfo/<init>()V
astore 2
aload 1
ifnull L7
L0:
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/uid J
L1:
aload 1
ldc "begintime"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 2
aload 1
ldc "begintime"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/begintime Ljava/lang/String;
L3:
aload 1
ldc "begintime2"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 2
aload 1
ldc "begintime2"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/begintime2 Ljava/lang/String;
L4:
aload 1
ldc "mutual"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L5
aload 2
aload 1
ldc "mutual"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/mutual I
L5:
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
aload 2
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/nickname Ljava/lang/String;
L6:
aload 1
ldc "endtime"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 2
aload 1
ldc "endtime"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/endtime Ljava/lang/String;
L7:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/nd/android/u/contact/dataStructure/HiddenLoveInfo
invokevirtual com/nd/android/u/contact/util/HiddenLoveParser/toJSONObject(Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final toJSONObject(Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
