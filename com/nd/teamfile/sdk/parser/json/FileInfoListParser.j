.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/parser/json/FileInfoListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/nd/teamfile/sdk/type/FileInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/nd/teamfile/sdk/type/FileInfoList;
.throws org/json/JSONException
new com/nd/teamfile/sdk/type/FileInfoList
dup
invokespecial com/nd/teamfile/sdk/type/FileInfoList/<init>()V
astore 4
new com/nd/teamfile/sdk/parser/json/FileInfoParser
dup
invokespecial com/nd/teamfile/sdk/parser/json/FileInfoParser/<init>()V
astore 5
iconst_0
istore 2
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
L0:
iload 2
iload 3
if_icmpge L1
aload 4
aload 5
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/FileInfo;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONArray;)Ljava/util/List;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoListParser/parse(Lorg/json/JSONArray;)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parseServerData(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/FileInfoList;
.throws org/json/JSONException
aload 0
aload 1
ldc "files"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/nd/teamfile/sdk/parser/json/FileInfoListParser/parse(Lorg/json/JSONArray;)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
.limit locals 2
.limit stack 3
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/nd/teamfile/sdk/type/FileInfo;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
