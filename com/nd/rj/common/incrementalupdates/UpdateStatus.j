.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/incrementalupdates/UpdateStatus
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/incrementalupdates/UpdateStatus;>;"

.field public static final enum 'APPLY_PATCH_FAILED' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'CHECK_URL_ERROR' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'CHECK_VERSION_FAILED' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'COPY_FILE_FAILED' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'DOWNLOAD_FAILED' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'EXTERNAL_STORAGE_NOT_WRITEABLE' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'LATEST_VERSION' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'MD5_CHECK_FAILS' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'NETWORK_ERROR' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'OFF_LINE' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'SRC_APK_NOT_FOUND' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'UNKNOWN_ERROR' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field public static final enum 'UPDATING' Lcom/nd/rj/common/incrementalupdates/UpdateStatus;

.field private final 'mMessage' Ljava/lang/String;

.field private final 'mStatusCode' I

.method static <clinit>()V
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "LATEST_VERSION"
iconst_0
bipush 101
ldc "\u5df2\u662f\u6700\u65b0\u7248\u672c"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/LATEST_VERSION Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "UNKNOWN_ERROR"
iconst_1
sipush 200
ldc "\u672a\u77e5\u9519\u8bef"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/UNKNOWN_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "EXTERNAL_STORAGE_NOT_WRITEABLE"
iconst_2
sipush 201
ldc "\u5916\u90e8\u5b58\u50a8\u5668\u4e0d\u80fd\u6267\u884c\u5199\u5165\u64cd\u4f5c"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/EXTERNAL_STORAGE_NOT_WRITEABLE Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "OFF_LINE"
iconst_3
sipush 202
ldc "\u6ca1\u6709\u53ef\u7528\u7f51\u7edc"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/OFF_LINE Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "SRC_APK_NOT_FOUND"
iconst_4
sipush 203
ldc "\u83b7\u53d6\u4e0d\u5230\u539f\u59cbAPK\u6587\u4ef6"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/SRC_APK_NOT_FOUND Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "COPY_FILE_FAILED"
iconst_5
sipush 204
ldc "\u62f7\u8d1d\u539f\u59cbAPK\u6587\u4ef6\u51fa\u9519"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/COPY_FILE_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "APPLY_PATCH_FAILED"
bipush 6
sipush 205
ldc "\u5408\u5e76\u6587\u4ef6\u51fa\u9519"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/APPLY_PATCH_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "DOWNLOAD_FAILED"
bipush 7
sipush 206
ldc "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u51fa\u9519"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/DOWNLOAD_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "MD5_CHECK_FAILS"
bipush 8
sipush 207
ldc "\u4e0b\u8f7d\u6587\u4ef6md5\u6821\u9a8c\u5931\u8d25"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/MD5_CHECK_FAILS Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "CHECK_VERSION_FAILED"
bipush 9
sipush 208
ldc "\u68c0\u6d4b\u7248\u672c\u65f6\u53d1\u751f\u9519\u8bef"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "UPDATING"
bipush 10
sipush 209
ldc "\u8f6f\u4ef6\u6b63\u5728\u66f4\u65b0\u4e2d\uff0c\u8bf7\u7a0d\u5019\u2026"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/UPDATING Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "NETWORK_ERROR"
bipush 11
sipush 210
ldc "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/NETWORK_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
new com/nd/rj/common/incrementalupdates/UpdateStatus
dup
ldc "CHECK_URL_ERROR"
bipush 12
sipush 211
ldc "\u68c0\u67e5\u66f4\u65b0\u7684URL\u9519\u8bef"
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/CHECK_URL_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
bipush 13
anewarray com/nd/rj/common/incrementalupdates/UpdateStatus
dup
iconst_0
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/LATEST_VERSION Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
iconst_1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/UNKNOWN_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
iconst_2
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/EXTERNAL_STORAGE_NOT_WRITEABLE Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
iconst_3
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/OFF_LINE Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
iconst_4
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/SRC_APK_NOT_FOUND Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
iconst_5
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/COPY_FILE_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
bipush 6
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/APPLY_PATCH_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
bipush 7
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/DOWNLOAD_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
bipush 8
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/MD5_CHECK_FAILS Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
bipush 9
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
bipush 10
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/UPDATING Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
bipush 11
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/NETWORK_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
dup
bipush 12
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/CHECK_URL_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aastore
putstatic com/nd/rj/common/incrementalupdates/UpdateStatus/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
return
.limit locals 0
.limit stack 6
.end method

.method private <init>(Ljava/lang/String;IILjava/lang/String;)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/nd/rj/common/incrementalupdates/UpdateStatus/mStatusCode I
aload 0
aload 4
putfield com/nd/rj/common/incrementalupdates/UpdateStatus/mMessage Ljava/lang/String;
return
.limit locals 5
.limit stack 3
.end method

.method public static getCustomUpdateStatusMessage(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
new java/lang/StringBuilder
dup
ldc "update_status_code_"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/nd/rj/common/incrementalupdates/UpdateStatus/mStatusCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
istore 2
ldc "UpdateStatus"
new java/lang/StringBuilder
dup
ldc "resId="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
iload 2
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 0
L1:
aload 0
astore 3
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 1
getfield com/nd/rj/common/incrementalupdates/UpdateStatus/mMessage Ljava/lang/String;
astore 3
L3:
aload 3
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc "UpdateStatus"
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
ldc ""
astore 0
goto L1
.limit locals 4
.limit stack 4
.end method

.method private isSuccess()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/UpdateStatus/mStatusCode I
bipush 100
if_icmplt L0
aload 0
getfield com/nd/rj/common/incrementalupdates/UpdateStatus/mStatusCode I
sipush 200
if_icmpge L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
aload 0
aload 0
aload 1
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/getCustomUpdateStatusMessage(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
ldc com/nd/rj/common/incrementalupdates/UpdateStatus
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/incrementalupdates/UpdateStatus
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/rj/common/incrementalupdates/UpdateStatus
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatus/isSuccess()Z
ifeq L0
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/UpdateStatus/mMessage Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/UpdateStatus/mMessage Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
.limit locals 2
.limit stack 2
.end method
