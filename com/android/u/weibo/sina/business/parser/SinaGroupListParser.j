.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/parser/SinaGroupListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/android/u/weibo/sina/business/bean/SinaGroup;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private debug(Ljava/lang/String;)V
ldc "debug"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method public parse(Ljava/lang/StringBuilder;)Ljava/util/ArrayList;
.signature "(Ljava/lang/StringBuilder;)Ljava/util/ArrayList<Lcom/android/u/weibo/sina/business/bean/SinaGroup;>;"
.throws org/json/JSONException
aload 1
invokevirtual java/lang/StringBuilder/length()I
ifle L0
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "total_number"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 1
ldc "total_number"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
ifle L2
aload 1
ldc "lists"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "lists"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/android/u/weibo/sina/business/parser/SinaGroupListParser/parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
areturn
L3:
aload 0
ldc "no lists"
invokespecial com/android/u/weibo/sina/business/parser/SinaGroupListParser/debug(Ljava/lang/String;)V
L0:
aconst_null
areturn
L2:
aload 0
ldc "count=0"
invokespecial com/android/u/weibo/sina/business/parser/SinaGroupListParser/debug(Ljava/lang/String;)V
goto L0
L1:
aload 0
ldc "no total_number"
invokespecial com/android/u/weibo/sina/business/parser/SinaGroupListParser/debug(Ljava/lang/String;)V
goto L0
.limit locals 2
.limit stack 3
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
.signature "(Lorg/json/JSONArray;)Ljava/util/ArrayList<Lcom/android/u/weibo/sina/business/bean/SinaGroup;>;"
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new com/android/u/weibo/sina/business/parser/SinaGroupParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaGroupParser/<init>()V
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
invokevirtual com/android/u/weibo/sina/business/parser/SinaGroupParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/SinaGroup;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
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
invokevirtual com/android/u/weibo/sina/business/parser/SinaGroupListParser/parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/android/u/weibo/sina/business/bean/SinaGroup;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
