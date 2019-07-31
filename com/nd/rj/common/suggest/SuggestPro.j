.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/SuggestPro
.super java/lang/Object

.field private static '_instance' Lcom/nd/rj/common/suggest/SuggestPro;

.field private 'mDBHelper' Lcom/nd/rj/common/util/db/IDataBaseRef;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/rj/common/suggest/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
putfield com/nd/rj/common/suggest/SuggestPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 0
getfield com/nd/rj/common/suggest/SuggestPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
ldc ""
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/open(Landroid/content/Context;Ljava/lang/String;)I 2
pop
return
.limit locals 2
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/SuggestPro;
getstatic com/nd/rj/common/suggest/SuggestPro/_instance Lcom/nd/rj/common/suggest/SuggestPro;
ifnonnull L0
new com/nd/rj/common/suggest/SuggestPro
dup
aload 0
invokespecial com/nd/rj/common/suggest/SuggestPro/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/suggest/SuggestPro/_instance Lcom/nd/rj/common/suggest/SuggestPro;
L0:
getstatic com/nd/rj/common/suggest/SuggestPro/_instance Lcom/nd/rj/common/suggest/SuggestPro;
areturn
.limit locals 1
.limit stack 3
.end method

.method public addNewSuggest(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
aload 1
invokestatic com/nd/rj/common/util/ComfunHelp/getDeviceId(Landroid/content/Context;)Ljava/lang/String;
astore 12
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 11
aload 0
aload 1
invokevirtual com/nd/rj/common/suggest/SuggestPro/getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
astore 13
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 14
aload 6
astore 9
aload 9
astore 10
lload 2
lconst_0
lcmp
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 10
L0:
aload 1
invokestatic com/nd/rj/common/suggest/communication/suggestCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/communication/suggestCom;
aload 4
aload 5
aload 12
aload 11
aload 10
aload 13
aload 14
invokevirtual com/nd/rj/common/suggest/communication/suggestCom/addNewSuggest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 8
iload 8
istore 7
iload 8
ifne L1
new com/nd/rj/common/suggest/entity/SuggestInfo
dup
invokespecial com/nd/rj/common/suggest/entity/SuggestInfo/<init>()V
astore 1
aload 1
lload 2
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setUid(J)V
aload 1
aload 11
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setId(Ljava/lang/String;)V
aload 1
aload 6
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setSuggest(Ljava/lang/String;)V
aload 1
aload 0
invokevirtual com/nd/rj/common/suggest/SuggestPro/getCurrTime()Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setSuggestDate(Ljava/lang/String;)V
aload 1
iconst_0
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setFlag(I)V
invokestatic com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/getInstance()Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;
aload 1
invokevirtual com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/insert(Lcom/nd/rj/common/suggest/entity/SuggestInfo;)I
istore 7
L1:
iload 7
ireturn
.limit locals 15
.limit stack 8
.end method

.method public downSuggestList(Landroid/content/Context;Ljava/lang/String;J)I
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch all from L5 to L6 using L3
.catch java/lang/Exception from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch java/lang/Exception from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch java/lang/Exception from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch java/lang/Exception from L13 to L14 using L2
.catch all from L13 to L14 using L3
iconst_0
istore 6
iconst_0
istore 7
aload 0
getfield com/nd/rj/common/suggest/SuggestPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ldc "select QUEST_NO as questno from SUGGEST_INFO where UAP_UID=? and ifnull(FLAG,0)=0"
iconst_1
anewarray java/lang/String
dup
iconst_0
lload 3
invokestatic java/lang/Long/toString(J)Ljava/lang/String;
aastore
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor; 2
astore 8
iload 6
istore 5
aload 8
ifnull L15
iload 6
istore 5
L0:
aload 8
invokeinterface android/database/Cursor/getCount()I 0
ifle L15
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 9
L1:
aload 8
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L16
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
aload 10
ldc "questno"
aload 8
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
aload 10
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
L4:
goto L1
L2:
astore 1
L5:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L6:
iload 7
istore 6
aload 8
ifnull L17
aload 8
invokeinterface android/database/Cursor/close()V 0
iload 7
istore 6
L17:
iload 6
ireturn
L16:
iload 6
istore 5
L7:
aload 9
invokevirtual org/json/JSONArray/length()I
ifle L15
aload 1
invokestatic com/nd/rj/common/util/ComfunHelp/getDeviceId(Landroid/content/Context;)Ljava/lang/String;
astore 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 11
L8:
iload 6
istore 5
L9:
aload 1
invokestatic com/nd/rj/common/suggest/communication/suggestCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/communication/suggestCom;
aload 10
aload 2
aload 9
aload 11
invokevirtual com/nd/rj/common/suggest/communication/suggestCom/getAnswer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/StringBuilder;)I
ifne L15
new org/json/JSONObject
dup
aload 11
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "vecanswer"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
invokevirtual org/json/JSONArray/length()I
istore 6
L10:
iconst_0
istore 5
L18:
iload 5
iload 6
if_icmpge L19
L11:
aload 1
iload 5
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 2
new com/nd/rj/common/suggest/entity/SuggestInfo
dup
invokespecial com/nd/rj/common/suggest/entity/SuggestInfo/<init>()V
astore 9
aload 9
aload 2
ldc "questno"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setId(Ljava/lang/String;)V
aload 9
aload 0
ldc "yyyy-MM-dd HH:mm:ss"
aload 2
ldc "ask_time"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
invokevirtual com/nd/rj/common/suggest/SuggestPro/millisToDateTime(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setSuggestDate(Ljava/lang/String;)V
aload 9
aload 2
ldc "flag"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setFlag(I)V
aload 9
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getFlag()I
iconst_1
if_icmpne L13
aload 9
aload 2
ldc "answer"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setRespond(Ljava/lang/String;)V
aload 9
aload 0
ldc "yyyy-MM-dd HH:mm:ss"
aload 2
ldc "answer_time"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
invokevirtual com/nd/rj/common/suggest/SuggestPro/millisToDateTime(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setRespondDate(Ljava/lang/String;)V
invokestatic com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/getInstance()Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;
aload 9
invokevirtual com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/setAnswer(Lcom/nd/rj/common/suggest/entity/SuggestInfo;)I
pop
L12:
goto L20
L13:
invokestatic com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/getInstance()Lcom/nd/rj/common/suggest/atomoperation/OperSuggestInfo;
aload 9
invokevirtual com/nd/rj/common/suggest/atomoperation/OperSuggestInfo/setAskTime(Lcom/nd/rj/common/suggest/entity/SuggestInfo;)I
pop
L14:
goto L20
L3:
astore 1
aload 8
ifnull L21
aload 8
invokeinterface android/database/Cursor/close()V 0
L21:
aload 1
athrow
L19:
iload 6
istore 5
L15:
iload 5
istore 6
aload 8
ifnull L17
aload 8
invokeinterface android/database/Cursor/close()V 0
iload 5
ireturn
L20:
iload 5
iconst_1
iadd
istore 5
goto L18
.limit locals 12
.limit stack 7
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
ldc ""
astore 2
aload 1
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 3
L0:
aload 3
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 1
L1:
aload 1
ifnull L4
aload 1
astore 2
aload 1
astore 3
L3:
aload 1
invokevirtual java/lang/String/length()I
ifgt L5
L4:
ldc ""
areturn
L2:
astore 1
aload 1
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
aload 2
astore 3
L5:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public getCurrTime()Ljava/lang/String;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getSuggestList(Landroid/content/Context;Ljava/lang/String;JLjava/util/ArrayList;Z)I
.signature "(Landroid/content/Context;Ljava/lang/String;JLjava/util/ArrayList<Lcom/nd/rj/common/suggest/entity/SuggestInfo;>;Z)I"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
aload 5
invokevirtual java/util/ArrayList/clear()V
iload 6
ifeq L5
aload 0
aload 1
aload 2
lload 3
invokevirtual com/nd/rj/common/suggest/SuggestPro/downSuggestList(Landroid/content/Context;Ljava/lang/String;J)I
pop
L5:
aload 0
getfield com/nd/rj/common/suggest/SuggestPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ldc "select UAP_UID, QUEST_NO, QUEST, strftime('%Y-%m-%d', ASK_TIME) as ASK_DATE, ANSWER, strftime('%Y-%m-%d', ANSWER_TIME) as ANSWER_TIME, FLAG  from SUGGEST_INFO where UAP_UID=? order by ASK_TIME desc"
iconst_1
anewarray java/lang/String
dup
iconst_0
lload 3
invokestatic java/lang/Long/toString(J)Ljava/lang/String;
aastore
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor; 2
astore 2
aload 2
ifnull L6
L0:
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L6
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
L1:
aload 2
invokeinterface android/database/Cursor/isAfterLast()Z 0
ifne L6
new com/nd/rj/common/suggest/entity/SuggestInfo
dup
invokespecial com/nd/rj/common/suggest/entity/SuggestInfo/<init>()V
astore 7
aload 7
aload 2
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/LoadFormCursor(Landroid/database/Cursor;)V
aload 7
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/getFlag()I
iconst_1
if_icmpeq L3
aload 7
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/rj/common/R$string/suggest_waiting I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setRespond(Ljava/lang/String;)V
aload 7
ldc ""
invokevirtual com/nd/rj/common/suggest/entity/SuggestInfo/setRespondDate(Ljava/lang/String;)V
L3:
aload 5
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
L4:
goto L1
L2:
astore 1
aload 2
ifnull L7
aload 2
invokeinterface android/database/Cursor/close()V 0
L7:
aload 1
athrow
L6:
aload 2
ifnull L8
aload 2
invokeinterface android/database/Cursor/close()V 0
L8:
iconst_0
ireturn
.limit locals 8
.limit stack 7
.end method

.method public millisToDateTime(Ljava/lang/String;J)Ljava/lang/String;
new java/util/Date
dup
lload 2
invokespecial java/util/Date/<init>(J)V
astore 4
new java/text/SimpleDateFormat
dup
aload 1
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 4
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 4
.end method
