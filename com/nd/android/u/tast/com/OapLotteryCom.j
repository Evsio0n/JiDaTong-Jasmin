.bytecode 50.0
.class public synchronized com/nd/android/u/tast/com/OapLotteryCom
.super java/lang/Object

.field private static final 'LOG_LIST' Ljava/lang/String; = "log/list"

.field private static final 'LOTTERY' Ljava/lang/String; = "lottery"

.field private static final 'LOTTERY_GET_ITEM_BY_TYPE' Ljava/lang/String; = "mission/count"

.field private static final 'LOTTERY_LOGDEL' Ljava/lang/String; = "log/del"

.field public static final 'LOT_COMMON_TYPE' I = 10000


.field private static final 'LOT_LIST' Ljava/lang/String; = "jackpot/list"

.field public static final 'LOT_NEWYEAR_2_TYPE' I = 10002


.field public static final 'LOT_NEWYEAR_TYPE' I = 10001


.field public static final 'LOT_NEW_SERVER_URL' Ljava/lang/String;

.field public static final 'LOT_ZHENGFU_TYPE' I = 10003


.field private static final 'PRIZE_LIST' Ljava/lang/String; = "prize/list"

.field private static final 'RECORD_MARQUEE_RAFFLES' Ljava/lang/String; = "log/marquee"

.field private static final 'RECORD_RAFFLES' Ljava/lang/String; = "log/user?"

.field private static final 'RECORD_RANK_RAFFLES' Ljava/lang/String; = "log/rank"

.field private 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/OASERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/point/api/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
return
.limit locals 1
.limit stack 3
.end method

.method private InitPrize(Lorg/json/JSONObject;Z)Lcom/product/android/commonInterface/task/Raffles;
new com/product/android/commonInterface/task/Raffles
dup
invokespecial com/product/android/commonInterface/task/Raffles/<init>()V
astore 7
aload 1
ldc "prize_id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 3
aload 1
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 5
lload 3
lconst_0
lcmp
ifeq L0
lload 5
lconst_0
lcmp
ifne L1
L0:
aconst_null
areturn
L1:
aload 7
lload 3
invokevirtual com/product/android/commonInterface/task/Raffles/setPrize_id(J)V
aload 7
lload 5
invokevirtual com/product/android/commonInterface/task/Raffles/setId(J)V
aload 7
aload 1
ldc "prize_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/task/Raffles/setPrize_name(Ljava/lang/String;)V
aload 7
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokevirtual com/product/android/commonInterface/task/Raffles/setUId(J)V
aload 7
aload 1
ldc "user_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/task/Raffles/setUserName(Ljava/lang/String;)V
aload 7
aload 1
ldc "rank"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/task/Raffles/setRank(I)V
aload 7
aload 1
ldc "flag"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/task/Raffles/setFlag(I)V
aload 1
ldc "create_dt"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 8
iload 2
ifeq L2
aload 7
aload 0
aload 8
ldc "MM-dd"
invokespecial com/nd/android/u/tast/com/OapLotteryCom/TimeStampToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/task/Raffles/setCreate_dt(Ljava/lang/String;)V
L3:
aload 7
aload 1
ldc "status"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/task/Raffles/setPrize_status(I)V
aload 7
aload 1
ldc "comment"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/task/Raffles/setComment(Ljava/lang/String;)V
aload 7
areturn
L2:
aload 7
aload 0
aload 8
ldc "yyyy-MM-dd HH:mm:ss"
invokespecial com/nd/android/u/tast/com/OapLotteryCom/TimeStampToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/task/Raffles/setCreate_dt(Ljava/lang/String;)V
goto L3
.limit locals 9
.limit stack 4
.end method

.method private TimeStampToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/NumberFormatException from L0 to L1 using L2
L0:
aload 1
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
new java/text/SimpleDateFormat
dup
aload 2
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
lload 3
ldc2_w 1000L
lmul
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc "OapLotteryCom"
ldc "TimeStampToDate NumberFormatException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc ""
areturn
.limit locals 5
.limit stack 7
.end method

.method private getLoglistJson()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "log/list"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method private getLotListJson()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "jackpot/list"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method private getPrizeListJson()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "prize/list"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method private getRecordRafflesJson(III)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 6
aload 6
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "log/user?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 5
astore 4
iload 3
ifle L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&time="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L0:
aload 6
aload 4
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 7
.limit stack 2
.end method

.method public delLotHis(J)I
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch java/lang/Exception from L0 to L1 using L4
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "log/del"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
pop
L1:
sipush 200
ireturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aload 3
invokevirtual com/common/android/utils/http/ResponseException/getStatusCode()I
ireturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
ireturn
L4:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
iconst_m1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getItemByType(I)I
.throws com/common/android/utils/http/HttpException
iload 1
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/getLotteryCount(I)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getLoglist()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 0
invokespecial com/nd/android/u/tast/com/OapLotteryCom/getLoglistJson()Lorg/json/JSONObject;
astore 7
aload 7
ifnull L7
iconst_1
istore 1
L8:
iload 1
bipush 100
if_icmpge L7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 10
aload 10
ifnonnull L9
L10:
iload 1
iconst_1
iadd
istore 1
goto L8
L9:
new com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/<init>()V
astore 8
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
L0:
aload 10
ldc "alltotal"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 3
aload 10
ldc "total"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 4
aload 10
ldc "rank"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 5
aload 10
ldc "prize"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 10
L1:
aload 10
ifnull L5
iconst_0
istore 2
L3:
iload 2
aload 10
invokevirtual org/json/JSONArray/length()I
if_icmpge L5
aload 10
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 11
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
astore 12
aload 12
aload 11
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/initLotUser(Lorg/json/JSONObject;)V
aload 9
aload 12
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
L5:
aload 8
iload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/setAllTotal(I)V
aload 8
iload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/setTotal(I)V
aload 8
iload 5
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/setRank(I)V
aload 8
aload 9
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/setLotUserData(Ljava/util/List;)V
aload 6
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
goto L10
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
goto L10
L7:
aload 6
areturn
.limit locals 13
.limit stack 3
.end method

.method public getLotList(Ljava/util/List;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;>;)I"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 1
ifnull L0
iconst_0
istore 2
aload 0
invokespecial com/nd/android/u/tast/com/OapLotteryCom/getLotListJson()Lorg/json/JSONObject;
astore 6
aload 6
ifnull L1
aload 6
ldc "turnid"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 4
aload 6
ldc "categories"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
iload 4
istore 2
aload 6
ifnull L1
aload 6
invokevirtual org/json/JSONArray/length()I
istore 5
iconst_0
istore 3
L2:
iload 4
istore 2
iload 3
iload 5
if_icmpge L1
aload 6
iload 3
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 7
aload 7
ifnull L3
new com/nd/android/u/tast/lottery/dataStructure/LotPrise
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotPrise/<init>()V
astore 8
aload 8
aload 7
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/parseJson(Lorg/json/JSONObject;)Z
pop
aload 8
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getCate_id()J
lconst_0
lcmp
ifle L3
aload 1
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
iload 3
iconst_1
iadd
istore 3
goto L2
L0:
iconst_0
istore 2
L1:
iload 2
ireturn
.limit locals 9
.limit stack 4
.end method

.method public getLotResult(II)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch java/lang/Exception from L0 to L1 using L4
.catch com/common/android/utils/http/ResponseException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L3
.catch java/lang/Exception from L5 to L6 using L4
.catch com/common/android/utils/http/ResponseException from L6 to L7 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L3
.catch java/lang/Exception from L6 to L7 using L4
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
astore 5
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "lottery"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aconst_null
astore 3
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "turnid"
iload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
iload 1
sipush 10000
if_icmpeq L6
iload 1
ifeq L6
L5:
aload 6
ldc "itemtype"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L6:
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
L7:
aload 4
astore 3
L8:
aload 3
ifnull L9
aload 5
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/initLotUser(Lorg/json/JSONObject;)V
aload 5
sipush 200
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setErrorcode(I)V
L9:
aload 5
areturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L8
L3:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 5
aload 4
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setErrorcode(I)V
aload 4
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
lookupswitch
200 : L10
401 : L11
403 : L12
405 : L13
406 : L14
407 : L15
409 : L16
500 : L17
default : L18
L18:
aload 5
ldc "\u62bd\u5956\u5f02\u5e38\u9519\u8bef"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L10:
aload 5
ldc "\u4e2d\u5956"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L11:
aload 5
ldc "\u672a\u767b\u5f55\u6216\u4f1a\u8bdd\u8fc7\u671f"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L12:
aload 5
ldc "\u62bd\u5956\u6b21\u6570\u5df2\u7528\u5b8c"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L13:
aload 5
ldc "\u62bd\u5956\u53c2\u6570\u9519\u8bef"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L14:
aload 5
ldc "\u7528\u6237\u88ab\u9650\u5236\u7981\u6b62\u62bd\u5956"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L15:
aload 5
ldc "\u672a\u4e2d\u5956\uff08\u5956\u54c1\u5df2\u7ecf\u88ab\u62bd\u5b8c\uff09"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L16:
aload 5
ldc "\u5956\u6c60\uff08\u7f16\u53f7\uff09\u5df2\u8fc7\u671f\u6216\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u52a0\u8f7d\u5956\u6c60"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L17:
aload 5
ldc "\u670d\u52a1\u5668\u9519\u8bef"
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
goto L8
L4:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
goto L8
.limit locals 7
.limit stack 3
.end method

.method public getPrizeList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;>;"
.throws com/common/android/utils/http/HttpException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 0
invokespecial com/nd/android/u/tast/com/OapLotteryCom/getPrizeListJson()Lorg/json/JSONObject;
astore 5
aload 5
ifnull L0
iconst_1
istore 1
L1:
iload 1
bipush 100
if_icmpge L0
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 6
aload 6
ifnonnull L2
L3:
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 6
ldc "prize"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 6
ifnull L3
aload 6
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L4:
iload 2
iload 3
if_icmpge L3
aload 6
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 7
aload 7
ifnull L5
new com/nd/android/u/tast/lottery/dataStructure/LotPrise
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotPrise/<init>()V
astore 8
aload 8
aload 7
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/parseJson(Lorg/json/JSONObject;)Z
pop
aload 8
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getCate_id()J
lconst_0
lcmp
ifle L5
aload 4
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
iload 2
iconst_1
iadd
istore 2
goto L4
L0:
aload 4
areturn
.limit locals 9
.limit stack 4
.end method

.method public getRecordMarqueeRaffles()Lcom/product/android/commonInterface/task/RafflesList;
.throws com/common/android/utils/http/HttpException
new com/product/android/commonInterface/task/RafflesList
dup
invokespecial com/product/android/commonInterface/task/RafflesList/<init>()V
astore 3
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "log/marquee"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 4
aload 4
ifnull L0
aload 4
ldc "prize"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 4
ifnull L0
aload 4
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 0
aload 4
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
iconst_1
invokespecial com/nd/android/u/tast/com/OapLotteryCom/InitPrize(Lorg/json/JSONObject;Z)Lcom/product/android/commonInterface/task/Raffles;
astore 5
aload 5
ifnull L2
aload 3
aload 5
invokevirtual com/product/android/commonInterface/task/RafflesList/add(Ljava/lang/Object;)Z
pop
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 3
areturn
.limit locals 6
.limit stack 3
.end method

.method public getRecordRafflesList(III)Lcom/product/android/commonInterface/task/RafflesList;
.throws com/common/android/utils/http/HttpException
new com/product/android/commonInterface/task/RafflesList
dup
invokespecial com/product/android/commonInterface/task/RafflesList/<init>()V
astore 4
aload 0
iload 1
iload 2
iload 3
invokespecial com/nd/android/u/tast/com/OapLotteryCom/getRecordRafflesJson(III)Lorg/json/JSONObject;
astore 5
aload 5
ifnull L0
aload 5
ldc "prize"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnull L0
aload 5
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 0
aload 5
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
iconst_0
invokespecial com/nd/android/u/tast/com/OapLotteryCom/InitPrize(Lorg/json/JSONObject;Z)Lcom/product/android/commonInterface/task/Raffles;
astore 6
aload 6
ifnull L2
aload 4
aload 6
invokevirtual com/product/android/commonInterface/task/RafflesList/add(Ljava/lang/Object;)Z
pop
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 4
areturn
.limit locals 7
.limit stack 4
.end method

.method public getRecordRankRaffles(III)Ljava/util/HashMap;
.signature "(III)Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;>;"
.throws com/common/android/utils/http/HttpException
aload 0
iload 1
iload 2
iload 3
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getRecordRankRafflesJson(III)Lorg/json/JSONObject;
astore 5
new com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail/<init>()V
aload 5
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublicDetail/setTotal(I)V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
aload 5
ldc "prize"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnull L0
iconst_0
istore 1
L1:
iload 1
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 5
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 7
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
astore 6
aload 6
aload 7
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/initLotUser(Lorg/json/JSONObject;)V
aload 4
aload 6
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
l2i
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 7
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
aload 6
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
l2i
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 7
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L3:
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 4
aload 6
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
l2i
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/List
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L0:
aload 4
areturn
.limit locals 8
.limit stack 4
.end method

.method public getRecordRankRafflesJson(III)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "log/rank"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?rank="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/tast/com/OapLotteryCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 5
.limit stack 3
.end method
