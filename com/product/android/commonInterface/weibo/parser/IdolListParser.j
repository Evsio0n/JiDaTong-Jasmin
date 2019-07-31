.bytecode 50.0
.class public synchronized com/product/android/commonInterface/weibo/parser/IdolListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/product/android/commonInterface/weibo/Idol;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
.throws org/json/JSONException
new com/product/android/commonInterface/weibo/IdolList
dup
invokespecial com/product/android/commonInterface/weibo/IdolList/<init>()V
astore 3
aload 1
ifnonnull L0
L1:
aload 3
areturn
L0:
new com/product/android/commonInterface/weibo/parser/IdolParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolParser/<init>()V
astore 4
iconst_0
istore 2
L2:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 3
aload 4
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/weibo/parser/IdolParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/Idol;
invokevirtual com/product/android/commonInterface/weibo/IdolList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 5
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONArray;)Ljava/util/List;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/product/android/commonInterface/weibo/parser/IdolListParser/parse(Lorg/json/JSONArray;)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/weibo/Idol;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 2
new com/product/android/commonInterface/weibo/parser/IdolParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/IdolParser/<init>()V
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
checkcast com/product/android/commonInterface/weibo/Idol
invokevirtual com/product/android/commonInterface/weibo/parser/IdolParser/toJSONObject(Lcom/product/android/commonInterface/weibo/Idol;)Lorg/json/JSONObject;
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
goto L0
L1:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method
