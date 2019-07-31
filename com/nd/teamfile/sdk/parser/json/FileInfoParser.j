.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/parser/json/FileInfoParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/nd/teamfile/sdk/type/FileInfo;>;"

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
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/FileInfo;
.throws org/json/JSONException
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 2
aload 2
aload 1
ldc "fid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setId(Ljava/lang/String;)V
aload 2
aload 1
ldc "name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setName(Ljava/lang/String;)V
aload 2
aload 1
ldc "ctime"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateTime(J)V
aload 2
aload 1
ldc "size"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setSize(J)V
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreaterUid(J)V
aload 2
aload 1
ldc "cflag"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 2
aload 1
ldc "md5"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setMd5(Ljava/lang/String;)V
aload 2
aload 1
ldc "sha1"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setSha1(Ljava/lang/String;)V
aload 2
getstatic com/nd/teamfile/Env/gid J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setGid(J)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/nd/teamfile/sdk/type/FileInfo
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoParser/toJSONObject(Lcom/nd/teamfile/sdk/type/FileInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/nd/teamfile/sdk/type/FileInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
