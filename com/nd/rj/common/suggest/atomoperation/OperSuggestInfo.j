.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/atomoperation/OperSuggestInfo
.super java/lang/Object

.field private static '_instance' Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;

.field private 'mDBHelper' Lcom/nd/rj/common/util/db/IDataBaseRef;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/rj/common/suggest/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
putfield com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;
getstatic com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/_instance Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;
ifnonnull L0
new com/nd/rj/common/suggest/atomoperation/OperSuggestInfo
dup
invokespecial com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/<init>()V
putstatic com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/_instance Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;
L0:
getstatic com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/_instance Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;
areturn
.limit locals 0
.limit stack 2
.end method

.method private setContentValues(Lcom/nd/rj/common/suggest/entity/SuggestInfo;Landroid/content/ContentValues;)V
aload 2
ldc "UAP_UID"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "QUEST"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getSuggest()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "ASK_TIME"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getSuggestDate()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "ANSWER"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getRespond()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "ANSWER_TIME"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getRespondDate()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "FLAG"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getFlag()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
return
.limit locals 3
.limit stack 4
.end method

.method public insert(Lcom/nd/rj/common/suggest/entity/SuggestInfo;)I
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 0
aload 1
aload 2
invokespecial com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/setContentValues(Lcom/nd/rj/common/suggest/entity/SuggestInfo;Landroid/content/ContentValues;)V
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getId()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setId(Ljava/lang/String;)V
L0:
aload 2
ldc "QUEST_NO"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getId()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ldc "SUGGEST_INFO"
aload 2
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/InsertTable(Ljava/lang/String;Landroid/content/ContentValues;)I 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public setAnswer(Lcom/nd/rj/common/suggest/entity/SuggestInfo;)I
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "ASK_TIME"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getSuggestDate()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "ANSWER"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getRespond()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "ANSWER_TIME"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getRespondDate()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "FLAG"
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 0
getfield com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ldc "SUGGEST_INFO"
aload 2
ldc "QUEST_NO=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getId()Ljava/lang/String;
aastore
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/UpdateTable(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I 4
ireturn
.limit locals 3
.limit stack 8
.end method

.method public setAskTime(Lcom/nd/rj/common/suggest/entity/SuggestInfo;)I
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "ASK_TIME"
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getSuggestDate()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ldc "SUGGEST_INFO"
aload 2
ldc "QUEST_NO=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getId()Ljava/lang/String;
aastore
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/UpdateTable(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I 4
ireturn
.limit locals 3
.limit stack 8
.end method
