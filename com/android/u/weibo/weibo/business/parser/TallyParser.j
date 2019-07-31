.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/TallyParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/Tally;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Tally;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/Tally
dup
invokespecial com/android/u/weibo/weibo/business/bean/Tally/<init>()V
astore 2
aload 1
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 2
aload 1
ldc "tid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/Tally/tid J
aload 2
aload 1
ldc "exists"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/Tally/exists I
aload 2
getfield com/android/u/weibo/weibo/business/bean/Tally/exists I
iconst_1
if_icmpne L1
aload 2
aload 1
ldc "praised"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/Tally/praised I
aload 2
aload 1
ldc "replys"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/Tally/replys I
aload 2
aload 1
ldc "forwards"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/Tally/forwards I
aload 2
aload 1
ldc "praises"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/Tally/praises I
aload 2
aload 1
ldc "glances"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/Tally/glances I
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/TallyParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Tally;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/Tally;)Lorg/json/JSONObject;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
ldc "tid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/tid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "exists"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/exists I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "praised"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/praised I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "replys"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/replys I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "forwards"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/forwards I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "praises"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/praises I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "glances"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Tally/glances I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/Tally
invokevirtual com/android/u/weibo/weibo/business/parser/TallyParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/Tally;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
