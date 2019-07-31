.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/parser/RankInfoListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/product/android/commonInterface/contact/RankInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
.signature "(Lorg/json/JSONArray;)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new com/product/android/commonInterface/contact/parser/RankInfoParser
dup
invokespecial com/product/android/commonInterface/contact/parser/RankInfoParser/<init>()V
astore 4
iconst_0
istore 2
L0:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 3
aload 4
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/contact/parser/RankInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/contact/RankInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
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
invokevirtual com/product/android/commonInterface/contact/parser/RankInfoListParser/parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/RankInfo;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
