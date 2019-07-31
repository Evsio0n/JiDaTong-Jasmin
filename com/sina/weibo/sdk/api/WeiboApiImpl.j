.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/WeiboApiImpl
.super java/lang/Object
.implements com/sina/weibo/sdk/api/IWeiboAPI

.field private static final 'BUILD_INT' I = 10350


.field private static final 'WEIBO_NAME_URI' Landroid/net/Uri;

.field private static final 'WEIBO_SIGN' Ljava/lang/String; = "18da2bf10352443a00a5e046d9fca6bd"

.field private 'mAppKey' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mDownWeibo' Z

.field private 'mDownloadListener' Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;

.method static <clinit>()V
ldc "content://com.sina.weibo.sdkProvider/query/package"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putstatic com/sina/weibo/sdk/api/WeiboApiImpl/WEIBO_NAME_URI Landroid/net/Uri;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/sina/weibo/sdk/api/WeiboApiImpl/mDownWeibo Z
aload 0
aload 1
putfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/sina/weibo/sdk/api/WeiboApiImpl/mAppKey Ljava/lang/String;
aload 0
iload 3
putfield com/sina/weibo/sdk/api/WeiboApiImpl/mDownWeibo Z
return
.limit locals 4
.limit stack 2
.end method

.method private compareSign([Landroid/content/pm/Signature;)Z
iconst_0
istore 2
L0:
iload 2
aload 1
arraylength
if_icmplt L1
iconst_0
ireturn
L1:
ldc "18da2bf10352443a00a5e046d9fca6bd"
aload 1
iconst_0
aaload
invokevirtual android/content/pm/Signature/toByteArray()[B
invokestatic com/sina/weibo/sdk/utils/MD5/hexdigest([B)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
ldc "Weibo"
ldc "check pass"
invokestatic com/sina/weibo/sdk/log/Log/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 3
.limit stack 3
.end method

.method private getPackageName()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 4
aconst_null
astore 3
aconst_null
astore 2
ldc ""
astore 5
L0:
aload 4
getstatic com/sina/weibo/sdk/api/WeiboApiImpl/WEIBO_NAME_URI Landroid/net/Uri;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 6
L1:
aload 6
astore 2
aload 6
astore 3
L4:
aload 6
ldc "package"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 1
L5:
aload 5
astore 4
aload 6
astore 2
aload 6
astore 3
L6:
aload 6
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L9
L7:
aload 6
astore 2
aload 6
astore 3
L8:
aload 6
iload 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
L9:
aload 4
astore 3
aload 6
ifnull L12
aload 6
invokeinterface android/database/Cursor/close()V 0
aload 4
astore 3
L12:
aload 3
astore 2
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L13
ldc "com.sina.weibo"
astore 2
L13:
aload 2
areturn
L2:
astore 3
aload 2
astore 3
L10:
ldc "WeiboInfoDB"
ldc "get db error"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L11:
aload 5
astore 3
aload 2
ifnull L12
aload 2
invokeinterface android/database/Cursor/close()V 0
aload 5
astore 3
goto L12
L3:
astore 2
aload 3
ifnull L14
aload 3
invokeinterface android/database/Cursor/close()V 0
L14:
aload 2
athrow
.limit locals 7
.limit stack 6
.end method

.method private getSupportApi()I
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
ifnonnull L12
iconst_0
istore 2
L13:
iload 2
ireturn
L12:
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 6
aconst_null
astore 5
aconst_null
astore 4
iconst_0
istore 1
iconst_0
istore 2
L0:
aload 6
getstatic com/sina/weibo/sdk/api/WeiboApiImpl/WEIBO_NAME_URI Landroid/net/Uri;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 6
ldc "support_api"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 3
L5:
aload 6
astore 4
aload 6
astore 5
L6:
aload 6
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L9
L7:
aload 6
astore 4
aload 6
astore 5
L8:
aload 6
iload 3
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
L9:
iload 1
istore 2
aload 6
ifnull L13
aload 6
invokeinterface android/database/Cursor/close()V 0
iload 1
ireturn
L2:
astore 5
aload 4
astore 5
L10:
ldc "WeiboInfoDB"
ldc "get db error"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L11:
aload 4
ifnull L13
aload 4
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
L3:
astore 4
aload 5
ifnull L14
aload 5
invokeinterface android/database/Cursor/close()V 0
L14:
aload 4
athrow
.limit locals 7
.limit stack 6
.end method

.method private getVersionCode()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
ifnonnull L12
ldc ""
astore 3
L13:
aload 3
areturn
L12:
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 4
aconst_null
astore 3
aconst_null
astore 2
ldc ""
astore 5
L0:
aload 4
getstatic com/sina/weibo/sdk/api/WeiboApiImpl/WEIBO_NAME_URI Landroid/net/Uri;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 6
L1:
aload 6
astore 2
aload 6
astore 3
L4:
aload 6
ldc "version_code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 1
L5:
aload 5
astore 4
aload 6
astore 2
aload 6
astore 3
L6:
aload 6
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L9
L7:
aload 6
astore 2
aload 6
astore 3
L8:
aload 6
iload 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
L9:
aload 4
astore 3
aload 6
ifnull L13
aload 6
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
L2:
astore 3
aload 2
astore 3
L10:
ldc "WeiboInfoDB"
ldc "get db error"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L11:
aload 5
astore 3
aload 2
ifnull L13
aload 2
invokeinterface android/database/Cursor/close()V 0
ldc ""
areturn
L3:
astore 2
aload 3
ifnull L14
aload 3
invokeinterface android/database/Cursor/close()V 0
L14:
aload 2
athrow
.limit locals 7
.limit stack 6
.end method

.method private getVersionName()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch all from L10 to L11 using L3
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
ifnonnull L12
ldc ""
astore 3
L13:
aload 3
areturn
L12:
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 4
aconst_null
astore 3
aconst_null
astore 2
ldc ""
astore 5
L0:
aload 4
getstatic com/sina/weibo/sdk/api/WeiboApiImpl/WEIBO_NAME_URI Landroid/net/Uri;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 6
L1:
aload 6
astore 2
aload 6
astore 3
L4:
aload 6
ldc "version_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 1
L5:
aload 5
astore 4
aload 6
astore 2
aload 6
astore 3
L6:
aload 6
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L9
L7:
aload 6
astore 2
aload 6
astore 3
L8:
aload 6
iload 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 4
L9:
aload 4
astore 3
aload 6
ifnull L13
aload 6
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
L2:
astore 3
aload 2
astore 3
L10:
ldc "WeiboInfoDB"
ldc "get db error"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L11:
aload 5
astore 3
aload 2
ifnull L13
aload 2
invokeinterface android/database/Cursor/close()V 0
ldc ""
areturn
L3:
astore 2
aload 3
ifnull L14
aload 3
invokeinterface android/database/Cursor/close()V 0
L14:
aload 2
athrow
.limit locals 7
.limit stack 6
.end method

.method private validateSign(Ljava/lang/String;)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
bipush 64
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 1
L1:
aload 0
aload 1
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/compareSign([Landroid/content/pm/Signature;)Z
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getWeiboAppSupportAPI()I
aload 0
invokevirtual com/sina/weibo/sdk/api/WeiboApiImpl/isWeiboAppInstalled()Z
ifne L0
ldc "WeiboApiImpl"
ldc "open weibo app failed, not installed or signature check failed"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getSupportApi()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isWeiboAppInstalled()Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
L0:
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getPackageName()Ljava/lang/String;
bipush 64
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 2
L1:
aload 2
ifnonnull L3
iconst_0
ireturn
L3:
aload 0
aload 2
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/compareSign([Landroid/content/pm/Signature;)Z
istore 1
L4:
iload 1
ireturn
L2:
astore 2
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public isWeiboAppSupportAPI()Z
aload 0
invokevirtual com/sina/weibo/sdk/api/WeiboApiImpl/getWeiboAppSupportAPI()I
sipush 10350
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public registerApp()Z
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getPackageName()Ljava/lang/String;
astore 1
aload 0
aload 1
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/validateSign(Ljava/lang/String;)Z
ifne L0
ldc "WeiboApiImpl"
ldc "register app failed for weibo app signature check failed"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mAppKey Ljava/lang/String;
ifnull L1
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mAppKey Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L2
L1:
ldc "WeiboApiImpl"
ldc "registerApp failed"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
ldc "WeiboApiImpl"
new java/lang/StringBuilder
dup
ldc "register app "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/sina/weibo/sdk/log/Log/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mAppKey Ljava/lang/String;
invokestatic com/sina/weibo/sdk/handler/ReceiverHandler/register(Landroid/content/Context;Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public registerWeiboDownloadListener(Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
aload 0
aload 1
putfield com/sina/weibo/sdk/api/WeiboApiImpl/mDownloadListener Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;
return
.limit locals 2
.limit stack 2
.end method

.method public requestListener(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/IWeiboHandler$Request;)Z
aload 1
ldc "_weibo_appPackage"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 3
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getPackageName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 1
ldc "_weibo_transaction"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
ifnull L1
aload 2
new com/sina/weibo/sdk/api/ProvideMessageForWeiboRequest
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/sina/weibo/sdk/api/ProvideMessageForWeiboRequest/<init>(Landroid/os/Bundle;)V
invokeinterface com/sina/weibo/sdk/api/IWeiboHandler$Request/onRequest(Lcom/sina/weibo/sdk/api/BaseRequest;)V 1
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public responseListener(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/IWeiboHandler$Response;)Z
aload 1
ldc "_weibo_appPackage"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 2
instanceof android/app/Activity
ifeq L1
aload 2
checkcast android/app/Activity
invokevirtual android/app/Activity/getCallingPackage()Ljava/lang/String;
astore 4
aload 3
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getPackageName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 1
ldc "_weibo_transaction"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
ifnull L1
aload 3
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
new com/sina/weibo/sdk/api/SendMessageToWeiboResponse
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/sina/weibo/sdk/api/SendMessageToWeiboResponse/<init>(Landroid/os/Bundle;)V
invokeinterface com/sina/weibo/sdk/api/IWeiboHandler$Response/onResponse(Lcom/sina/weibo/sdk/api/BaseResponse;)V 1
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method public sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/BaseRequest;)Z
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
ldc "WeiboApiImpl"
ldc "sendRequest failed for act or request is null"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L2:
iconst_0
ireturn
L1:
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getPackageName()Ljava/lang/String;
astore 3
aload 0
aload 3
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/validateSign(Ljava/lang/String;)Z
ifne L3
ldc "WeiboApiImpl"
ldc "sendRequest failed for weibo app signature check failed"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mDownWeibo Z
ifeq L2
aload 1
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mDownloadListener Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;
invokestatic com/sina/weibo/sdk/utils/Util/createConfirmDialog(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
iconst_0
ireturn
L3:
aload 2
invokevirtual com/sina/weibo/sdk/api/BaseRequest/check()Z
ifne L4
ldc "WeiboApiImpl"
ldc "sendRequest checkArgs fail"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 2
aload 4
invokevirtual com/sina/weibo/sdk/api/BaseRequest/toBundle(Landroid/os/Bundle;)V
aload 1
aload 3
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mAppKey Ljava/lang/String;
aload 4
invokestatic com/sina/weibo/sdk/handler/ActivityHandler/sendToWeibo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public sendResponse(Lcom/sina/weibo/sdk/api/BaseResponse;)Z
aload 0
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getPackageName()Ljava/lang/String;
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/validateSign(Ljava/lang/String;)Z
ifne L0
ldc "WeiboApiImpl"
ldc "sendResponse failed for weibo app signature check failed"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 1
invokevirtual com/sina/weibo/sdk/api/BaseResponse/check()Z
ifne L1
ldc "WeiboApiImpl"
ldc "sendResponse checkArgs fail"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 1
aload 2
invokevirtual com/sina/weibo/sdk/api/BaseResponse/toBundle(Landroid/os/Bundle;)V
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mAppKey Ljava/lang/String;
aload 2
invokestatic com/sina/weibo/sdk/handler/ReceiverHandler/sendToWeibo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public startWeibo()Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
aload 0
getfield com/sina/weibo/sdk/api/WeiboApiImpl/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/getPackageName()Ljava/lang/String;
invokevirtual android/content/pm/PackageManager/getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
iconst_1
ireturn
L2:
astore 1
ldc "WeiboApiImpl"
new java/lang/StringBuilder
dup
ldc "startActivity fail, exception = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method
