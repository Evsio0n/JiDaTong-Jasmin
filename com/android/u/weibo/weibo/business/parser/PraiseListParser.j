.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/PraiseListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/android/u/weibo/weibo/business/bean/Praise;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/PraiseList
dup
invokespecial com/android/u/weibo/weibo/business/bean/PraiseList/<init>()V
astore 3
new com/android/u/weibo/weibo/business/parser/PraiseParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/PraiseParser/<init>()V
astore 4
iconst_0
istore 2
L0:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
ldc "topic"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ifnonnull L2
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
aload 3
aload 4
aload 1
iload 2
invokevirtual org/json/JSONArray/optJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/weibo/business/parser/PraiseParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Praise;
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/add(Ljava/lang/Object;)Z
pop
goto L3
L1:
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONArray;)Ljava/util/List;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/PraiseListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/android/u/weibo/weibo/business/bean/Praise;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
