.bytecode 50.0
.class public final synchronized com/nd/android/forumsdk/business/constant/ForumConfig
.super java/lang/Object

.field public static 'HOST_URL' Ljava/lang/String;

.field public static 'callback' Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAppId()J
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getAppId()J 0
lreturn
L0:
lconst_0
lreturn
.limit locals 0
.limit stack 2
.end method

.method public static getCloudID()Ljava/lang/String;
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getCloudID()Ljava/lang/String; 0
areturn
L0:
ldc ""
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getContext()Landroid/content/Context;
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getContext()Landroid/content/Context; 0
areturn
L0:
aconst_null
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getForumApiKey()Ljava/lang/String;
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getForumApiKey()Ljava/lang/String; 0
areturn
L0:
ldc ""
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getNewSid()Ljava/lang/String;
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getNewSid()Ljava/lang/String; 0
areturn
L0:
ldc ""
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getSid()Ljava/lang/String;
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getSid()Ljava/lang/String; 0
areturn
L0:
ldc ""
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getUid()J
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getUid()J 0
lreturn
L0:
lconst_0
lreturn
.limit locals 0
.limit stack 2
.end method
