.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/WbImageListparser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/android/u/weibo/weibo/business/bean/WbImage;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/WbImageList;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/WbImageList
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbImageList/<init>()V
astore 4
new com/android/u/weibo/weibo/business/parser/WbImageParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbImageParser/<init>()V
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
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/WbImage;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/add(Ljava/lang/Object;)Z
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
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageListparser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/WbImageList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/android/u/weibo/weibo/business/bean/WbImage;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 2
new com/android/u/weibo/weibo/business/parser/WbImageParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbImageParser/<init>()V
astore 3
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
aload 3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/WbImage
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/WbImage;)Lorg/json/JSONObject;
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
goto L0
L1:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method
