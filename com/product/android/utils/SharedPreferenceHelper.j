.bytecode 50.0
.class public synchronized com/product/android/utils/SharedPreferenceHelper
.super java/lang/Object

.field public static final 'COMMONGROUPPERMISSION' Ljava/lang/String; = "commongrouppermission"

.field public static final 'CONFIG_ISGETAPPINFO' Ljava/lang/String; = "isgetappinfo"

.field public static final 'CONFIG_ISSHOW' Ljava/lang/String; = "isshow"

.field public static final 'CONFIG_LOGIN_FLAG' Ljava/lang/String; = "login_flag"

.field public static final 'CONFIG_NAME' Ljava/lang/String; = "username"

.field public static final 'CONFIG_PSP_NEW' Ljava/lang/String; = "CONFIG_PSP_NEW"

.field public static final 'CONFIG_REMIND_FRIEND' Ljava/lang/String; = "REMIND_FRIEND_"

.field public static final 'CONFIG_UAPUID' Ljava/lang/String; = "uapuid"

.field public static final 'CONFIG_UID' Ljava/lang/String; = "uid"

.field public static final 'CONFIG_UPDATE_VER_CODE' Ljava/lang/String; = "update_ver_code"

.field public static final 'CONFIG_UPDATE_VER_TIME' Ljava/lang/String; = "update_ver_time"

.field public static final 'CONFIG_VERSIONNAME' Ljava/lang/String; = "versionname"

.field public static final 'CONFIG_VERSION_CODE' Ljava/lang/String; = "version_code"

.field public static final 'GET_JUNIOR_TIME' Ljava/lang/String; = "get_junior_time"

.field public static final 'HAS_BEAN_SENIOR' Ljava/lang/String; = "has_bean_senior"

.field public static final 'HAS_JOB_NUMBER_LOGIN' Ljava/lang/String; = "has_job_number_login"

.field public static final 'HAS_UPDATE_QUICK_REPLY' Ljava/lang/String; = "has_update_quick_reply"

.field public static final 'JUNIOR_TIME_FROM_NET' Ljava/lang/String; = "junior_time_from_net"

.field public static final 'LAST_TWEET_CREATE' Ljava/lang/String; = "_last_tweet_create_"

.field private static 'PREF_NAME' Ljava/lang/String;

.field private static final 'TAG' Ljava/lang/String; = "SharedPreferenceHelper"

.field private static 'mInstance' Lcom/product/android/utils/SharedPreferenceHelper;

.field private 'mContext' Landroid/content/Context;

.field protected 'mEditor' Landroid/content/SharedPreferences$Editor;

.field protected 'mSettings' Landroid/content/SharedPreferences;

.method static <clinit>()V
ldc "uuConfig"
putstatic com/product/android/utils/SharedPreferenceHelper/PREF_NAME Ljava/lang/String;
aconst_null
putstatic com/product/android/utils/SharedPreferenceHelper/mInstance Lcom/product/android/utils/SharedPreferenceHelper;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/product/android/utils/SharedPreferenceHelper/setContext(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/product/android/utils/SharedPreferenceHelper/mInstance Lcom/product/android/utils/SharedPreferenceHelper;
ifnonnull L0
new com/product/android/utils/SharedPreferenceHelper
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokespecial com/product/android/utils/SharedPreferenceHelper/<init>(Landroid/content/Context;)V
putstatic com/product/android/utils/SharedPreferenceHelper/mInstance Lcom/product/android/utils/SharedPreferenceHelper;
L0:
getstatic com/product/android/utils/SharedPreferenceHelper/mInstance Lcom/product/android/utils/SharedPreferenceHelper;
areturn
.limit locals 0
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/product/android/utils/SharedPreferenceHelper/mInstance Lcom/product/android/utils/SharedPreferenceHelper;
ifnonnull L0
new com/product/android/utils/SharedPreferenceHelper
dup
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokespecial com/product/android/utils/SharedPreferenceHelper/<init>(Landroid/content/Context;)V
putstatic com/product/android/utils/SharedPreferenceHelper/mInstance Lcom/product/android/utils/SharedPreferenceHelper;
L0:
getstatic com/product/android/utils/SharedPreferenceHelper/mInstance Lcom/product/android/utils/SharedPreferenceHelper;
areturn
.limit locals 1
.limit stack 3
.end method

.method public clearkeys()V
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/clear()Landroid/content/SharedPreferences$Editor; 0
pop
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 1
.limit stack 1
.end method

.method public commit()Z
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHasBeanSenior()Z
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/utils/SharedPreferenceHelper/PREF_NAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
ldc "has_bean_senior"
iconst_0
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 1
.limit stack 4
.end method

.method public isContains(Ljava/lang/String;)Z
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mSettings Landroid/content/SharedPreferences;
aload 1
invokeinterface android/content/SharedPreferences/contains(Ljava/lang/String;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public loadBooleanKey(Ljava/lang/String;Z)Z
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mSettings Landroid/content/SharedPreferences;
aload 1
iload 2
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public loadIntKey(Ljava/lang/String;I)I
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mSettings Landroid/content/SharedPreferences;
aload 1
iload 2
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public loadKey(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mSettings Landroid/content/SharedPreferences;
aload 1
ldc ""
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method public loadLongKey(Ljava/lang/String;J)J
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mSettings Landroid/content/SharedPreferences;
aload 1
lload 2
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lreturn
.limit locals 4
.limit stack 4
.end method

.method public removeKey(Ljava/lang/String;)V
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
pop
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 2
.limit stack 2
.end method

.method public saveBooleanKey(Ljava/lang/String;Z)V
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
iload 2
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public saveHasBeanSenior()V
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/utils/SharedPreferenceHelper/PREF_NAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 1
aload 1
ldc "has_bean_senior"
iconst_1
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
pop
aload 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 2
.limit stack 4
.end method

.method public saveIntKey(Ljava/lang/String;I)V
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
iload 2
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public saveKey(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public saveLongKey(Ljava/lang/String;J)V
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
aload 1
lload 2
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 4
.end method

.method public setContext(Landroid/content/Context;)V
aload 0
aload 1
putfield com/product/android/utils/SharedPreferenceHelper/mContext Landroid/content/Context;
aload 1
ifnonnull L0
ldc "SharedPreferenceHelper"
ldc "the context point is null"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L0:
aload 0
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mContext Landroid/content/Context;
getstatic com/product/android/utils/SharedPreferenceHelper/PREF_NAME Ljava/lang/String;
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/product/android/utils/SharedPreferenceHelper/mSettings Landroid/content/SharedPreferences;
aload 0
aload 0
getfield com/product/android/utils/SharedPreferenceHelper/mSettings Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
putfield com/product/android/utils/SharedPreferenceHelper/mEditor Landroid/content/SharedPreferences$Editor;
return
.limit locals 2
.limit stack 4
.end method
