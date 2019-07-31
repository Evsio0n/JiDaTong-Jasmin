.bytecode 50.0
.class public final synchronized com/nd/android/forumsdk/ForumUtils
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getFileDownloadUrl(JI)Ljava/lang/String;
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnull L0
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
lload 0
iload 2
invokeinterface com/nd/android/forumsdk/business/com/httptool/IGetConfig/getFileDownloadUrl(JI)Ljava/lang/String; 3
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method
