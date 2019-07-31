.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/TallyListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/android/u/weibo/weibo/business/bean/Tally;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TallyList;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/TallyList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TallyList/<init>()V
astore 4
aload 1
ifnonnull L0
L1:
aload 4
areturn
L0:
new com/android/u/weibo/weibo/business/parser/TallyParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TallyParser/<init>()V
astore 5
iconst_0
istore 2
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
L2:
iload 2
iload 3
if_icmpge L1
aload 4
aload 5
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/weibo/business/parser/TallyParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Tally;
invokevirtual com/android/u/weibo/weibo/business/bean/TallyList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 6
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONArray;)Ljava/util/List;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/TallyListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TallyList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/android/u/weibo/weibo/business/bean/Tally;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
