.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/IncreUpdateFaceAndShow
.super java/lang/Object

.field private static final 'SHOW_UPDATE_TIME' Ljava/lang/String; = "show/update"

.field private static final 'TAG' Ljava/lang/String; = "IncreUpdateFaceAndShow"

.field private static 'instance' Lcom/nd/android/u/contact/business/IncreUpdateFaceAndShow;

.field private 'headerImages' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/HeaderImage;>;"

.field private 'isFirstLoad' Z

.field private 'mContext' Landroid/content/Context;

.field private 'sid' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/u/contact/business/IncreUpdateFaceAndShow
dup
invokespecial com/nd/android/u/contact/business/IncreUpdateFaceAndShow/<init>()V
putstatic com/nd/android/u/contact/business/IncreUpdateFaceAndShow/instance Lcom/nd/android/u/contact/business/IncreUpdateFaceAndShow;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/isFirstLoad Z
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
putfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/mContext Landroid/content/Context;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/sid Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/IncreUpdateFaceAndShow;
getstatic com/nd/android/u/contact/business/IncreUpdateFaceAndShow/instance Lcom/nd/android/u/contact/business/IncreUpdateFaceAndShow;
areturn
.limit locals 0
.limit stack 1
.end method

.method private isFirstUpdate()Z
ldc com/nd/android/u/contact/dao/HeadImageDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/HeadImageDao
invokeinterface com/nd/android/u/contact/dao/HeadImageDao/getMaxFaceUpdateTime()J 0
lconst_0
lcmp
ifle L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 4
.end method

.method public increUpdateFaceAndWallTiem()V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch org/json/JSONException from L15 to L16 using L2
.catch org/json/JSONException from L17 to L18 using L2
.catch org/json/JSONException from L19 to L20 using L2
.catch org/json/JSONException from L21 to L22 using L2
.catch org/json/JSONException from L23 to L24 using L2
.catch org/json/JSONException from L25 to L26 using L2
.catch org/json/JSONException from L27 to L28 using L2
.catch org/json/JSONException from L29 to L30 using L2
.catch org/json/JSONException from L31 to L32 using L2
.catch org/json/JSONException from L33 to L34 using L2
.catch org/json/JSONException from L35 to L36 using L2
.catch org/json/JSONException from L37 to L38 using L2
.catch org/json/JSONException from L39 to L40 using L2
.catch org/json/JSONException from L41 to L42 using L2
.catch org/json/JSONException from L43 to L44 using L2
.catch org/json/JSONException from L45 to L46 using L2
ldc com/nd/android/u/contact/dao/HeadImageDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/HeadImageDao
invokeinterface com/nd/android/u/contact/dao/HeadImageDao/getMaxFaceUpdateTime()J 0
lstore 8
ldc com/nd/android/u/contact/dao/HeadImageDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/HeadImageDao
invokeinterface com/nd/android/u/contact/dao/HeadImageDao/getMaxShowUpdateTime()J 0
lstore 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 14
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 15
iconst_0
istore 4
iconst_0
istore 3
iconst_0
istore 5
aload 0
aload 0
invokespecial com/nd/android/u/contact/business/IncreUpdateFaceAndShow/isFirstUpdate()Z
putfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/isFirstLoad Z
L47:
iload 3
istore 2
iload 4
istore 1
L0:
aload 15
iconst_0
invokevirtual java/lang/StringBuffer/setLength(I)V
L1:
iload 3
istore 2
iload 4
istore 1
L3:
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "show/update"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?facetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 8
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
iload 3
istore 2
iload 4
istore 1
L5:
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&walltime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 10
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L6:
iload 3
istore 2
iload 4
istore 1
L7:
aload 15
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L8:
iload 3
istore 2
iload 4
istore 1
L9:
aload 15
ldc "&size=200"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L10:
iload 3
istore 2
iload 4
istore 1
L11:
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/sid Ljava/lang/String;
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/setSid(Ljava/lang/String;)V 1
L12:
iload 3
istore 2
iload 4
istore 1
L13:
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 15
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 14
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I 2
pop
L14:
iload 3
istore 2
iload 4
istore 1
L15:
new org/json/JSONObject
dup
aload 14
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 16
L16:
iload 3
istore 2
iload 4
istore 1
L17:
aload 16
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 4
L18:
iload 3
istore 2
iload 4
istore 1
L19:
aload 16
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 16
L20:
aload 16
ifnull L48
iload 3
istore 2
iload 4
istore 1
L21:
aload 16
invokevirtual org/json/JSONArray/length()I
ifle L48
L22:
iload 3
istore 2
iload 4
istore 1
L23:
aload 16
invokevirtual org/json/JSONArray/length()I
istore 7
L24:
iload 7
ifle L49
iload 3
istore 2
iload 4
istore 1
L25:
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
ifnonnull L49
L26:
iload 3
istore 2
iload 4
istore 1
L27:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
L28:
iload 3
iload 7
iadd
istore 3
iconst_0
istore 6
L50:
iload 6
iload 7
if_icmpge L51
iload 3
istore 2
iload 4
istore 1
L29:
aload 16
iload 6
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 17
L30:
iload 3
istore 2
iload 4
istore 1
L31:
aload 17
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 12
L32:
iload 3
istore 2
iload 4
istore 1
L33:
new com/nd/android/u/contact/dataStructure/HeaderImage
dup
invokespecial com/nd/android/u/contact/dataStructure/HeaderImage/<init>()V
astore 18
L34:
iload 3
istore 2
iload 4
istore 1
L35:
aload 18
lload 12
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/setUid(J)V
L36:
iload 3
istore 2
iload 4
istore 1
L37:
aload 18
aload 17
ldc "walltime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/setShowupdatetime(J)V
L38:
iload 3
istore 2
iload 4
istore 1
L39:
aload 18
aload 17
ldc "facetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokevirtual com/nd/android/u/contact/dataStructure/HeaderImage/setUpdatetime(J)V
L40:
iload 3
istore 2
iload 4
istore 1
L41:
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
aload 18
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L42:
iload 3
istore 2
iload 4
istore 1
L43:
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/isFirstLoad Z
ifne L46
L44:
iload 3
istore 2
iload 4
istore 1
L45:
lload 12
invokestatic com/product/android/business/headImage/HeadImageLoader/removeFaceCache(J)V
L46:
iload 6
iconst_1
iadd
istore 6
goto L50
L51:
iconst_0
istore 5
iload 4
istore 1
iload 3
istore 2
iload 5
istore 3
L52:
iload 3
istore 5
iload 2
istore 3
iload 1
istore 4
iload 2
iload 1
if_icmplt L47
L48:
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
ifnull L49
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L49
invokestatic java/lang/System/currentTimeMillis()J
lstore 8
ldc com/nd/android/u/contact/dao/HeadImageDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/HeadImageDao
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
checkcast java/util/ArrayList
invokeinterface com/nd/android/u/contact/dao/HeadImageDao/insertHeadImage(Ljava/util/ArrayList;)J 1
pop2
invokestatic java/lang/System/currentTimeMillis()J
lstore 10
ldc "IncreUpdateFaceAndShow"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u63d2\u5165\u8017\u65f6"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 10
lload 8
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "ms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
aconst_null
putfield com/nd/android/u/contact/business/IncreUpdateFaceAndShow/headerImages Ljava/util/List;
L49:
return
L2:
astore 16
aload 16
invokevirtual org/json/JSONException/printStackTrace()V
iload 5
iconst_1
iadd
istore 4
iload 4
istore 3
iload 4
iconst_3
if_icmple L52
goto L48
.limit locals 19
.limit stack 6
.end method
