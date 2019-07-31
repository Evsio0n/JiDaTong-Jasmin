.bytecode 50.0
.class public synchronized com/product/android/business/manager/DataUpdateManager
.super java/lang/Object

.field private static final 'HOUR_MILLIS' J = 3600000L


.field public static final 'KEY_APP_UPDATE' Ljava/lang/String; = "app_update"

.field public static final 'KEY_BLACKLIST' Ljava/lang/String; = "weibo_blacklist_update"

.field public static final 'KEY_FLOWER_MSG' Ljava/lang/String; = "flower_msg_update"

.field public static final 'KEY_FOLLOWLIST' Ljava/lang/String; = "weibo_followlist_update"

.field public static final 'KEY_FRIENDLIST' Ljava/lang/String; = "friend_list_update"

.field public static final 'KEY_GROUP' Ljava/lang/String; = "group_update"

.field public static final 'KEY_HEAD_IMAGE' Ljava/lang/String; = "head_image_update"

.field public static final 'KEY_SIGN_INONEDAY' Ljava/lang/String; = "sign_in_one_day"

.field public static final 'KEY_UNIT' Ljava/lang/String; = "unit_update"

.field public static final 'KEY_USERINFO' Ljava/lang/String; = "userinfo_update"

.field private static 'mInstance' Lcom/product/android/business/manager/DataUpdateManager;

.field private 'mJsonMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.field private 'mPreferenceHelper' Lcom/product/android/utils/SharedPreferenceHelper;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
putfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
return
.limit locals 1
.limit stack 3
.end method

.method private checkTime(J)Z
aload 0
lload 1
ldc_w 24.0F
fconst_1
invokevirtual com/product/android/business/manager/DataUpdateManager/checkTime(JFF)Z
ireturn
.limit locals 3
.limit stack 5
.end method

.method public static getInstance()Lcom/product/android/business/manager/DataUpdateManager;
getstatic com/product/android/business/manager/DataUpdateManager/mInstance Lcom/product/android/business/manager/DataUpdateManager;
ifnonnull L0
new com/product/android/business/manager/DataUpdateManager
dup
invokespecial com/product/android/business/manager/DataUpdateManager/<init>()V
putstatic com/product/android/business/manager/DataUpdateManager/mInstance Lcom/product/android/business/manager/DataUpdateManager;
L0:
getstatic com/product/android/business/manager/DataUpdateManager/mInstance Lcom/product/android/business/manager/DataUpdateManager;
areturn
.limit locals 0
.limit stack 2
.end method

.method public checkTime(JFF)Z
invokestatic java/lang/System/currentTimeMillis()J
lstore 5
invokestatic com/common/android/utils/NetWorkUtils/isWifi()Z
ifne L0
fload 3
fstore 4
L0:
lload 5
lload 1
lsub
l2f
ldc_w 3600000.0F
fload 4
fmul
fcmpl
iflt L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 7
.limit stack 4
.end method

.method public clearJson()V
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public getKeyTime(Ljava/lang/String;)J
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
aload 1
lconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadLongKey(Ljava/lang/String;J)J
lreturn
.limit locals 2
.limit stack 4
.end method

.method public isNeedUpdate(Ljava/lang/String;)Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
iconst_0
ireturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 4
aload 4
ifnull L1
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
lconst_0
lcmp
ifne L2
L1:
ldc "M_START"
ldc "empty current user(binduser)"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
aload 1
lconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadLongKey(Ljava/lang/String;J)J
lstore 2
lload 2
lconst_0
lcmp
ifne L3
iconst_1
ireturn
L3:
aload 0
lload 2
invokespecial com/product/android/business/manager/DataUpdateManager/checkTime(J)Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public isNeedUpdate(Ljava/lang/String;J)Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L5
iconst_0
ireturn
L5:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 5
aload 5
ifnull L6
aload 5
invokevirtual com/product/android/business/login/BindUser/getUid()J
lconst_0
lcmp
ifne L7
L6:
ldc "M_START"
ldc "empty current user(binduser)"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L7:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L8
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 1
L9:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "empty json:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L8:
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
aload 5
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 5
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L9
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L10
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 2
L1:
lload 2
lconst_0
lcmp
ifne L3
iconst_1
ireturn
L3:
aload 0
lload 2
invokespecial com/product/android/business/manager/DataUpdateManager/checkTime(J)Z
istore 4
L4:
iload 4
ireturn
L2:
astore 5
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "set jsondata error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L10:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public isNotInOneDay(Ljava/lang/String;J)Z
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 1
L1:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
L3:
iconst_1
ireturn
L0:
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
aload 4
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadKey(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 4
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L1
L2:
aload 1
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
iconst_0
ireturn
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L3
iconst_0
ireturn
.limit locals 5
.limit stack 6
.end method

.method public save(Ljava/lang/String;J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
aload 1
lload 2
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveLongKey(Ljava/lang/String;J)V
return
.limit locals 4
.limit stack 4
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
aload 1
aload 2
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 1
aload 2
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public saveJson(Ljava/lang/String;J)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
ldc ""
astore 1
L0:
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 1
L1:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L3:
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mJsonMap Ljava/util/HashMap;
aload 4
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/product/android/business/manager/DataUpdateManager/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
aload 4
aload 1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
L4:
return
L5:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L6:
goto L3
L2:
astore 1
ldc "debug"
ldc "saveJson error"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 5
.limit stack 4
.end method
