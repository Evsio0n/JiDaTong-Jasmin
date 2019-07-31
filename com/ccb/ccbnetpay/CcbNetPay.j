.bytecode 50.0
.class public synchronized com/ccb/ccbnetpay/CcbNetPay
.super java/lang/Object

.field public static final 'ANALYSIS_BUSINESS_MSG' Ljava/lang/String; = "\u89e3\u6790\u5546\u6237\u52a0\u5bc6\u4e32\u6709\u8bef"

.field public static final 'ANALYSIS_SDK_MSG' Ljava/lang/String; = "\u6821\u9a8cSDK\u7248\u672c\u6709\u8bef"

.field public static final 'APP_TYPE' Ljava/lang/String; = "1"

.field public static final 'CCBAPP_PACKAGE_NAME' Ljava/lang/String; = "com.chinamworld.main"

.field public static final 'CCB_PAY_PAGE_MSG' Ljava/lang/String; = "\u5efa\u884c\u652f\u4ed8\u9875\u9762\u52a0\u8f7d\u5931\u8d25"

.field public static final 'CHECK_NORMAL' Ljava/lang/String; = "2"

.field public static final 'OTHER_EXCE' Ljava/lang/String; = "1"

.field public static final 'SDK_VERSION' Ljava/lang/String; = "1.0.1"

.field private final 'bankURL' Ljava/lang/String;

.field private 'context' Landroid/app/Activity;

.field private 'dialog' Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;

.field private 'listener' Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;

.field private final 'sdkCheckURL' Ljava/lang/String;

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "https://ibsbjstar.ccb.com.cn/"
putfield com/ccb/ccbnetpay/CcbNetPay/bankURL Ljava/lang/String;
aload 0
ldc "https://ibsbjstar.ccb.com.cn/CCBIS/B2CMainPlatP1"
putfield com/ccb/ccbnetpay/CcbNetPay/sdkCheckURL Ljava/lang/String;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/CcbNetPay/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/CcbNetPay/dialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
aload 0
aload 1
putfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/app/Activity;Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "https://ibsbjstar.ccb.com.cn/"
putfield com/ccb/ccbnetpay/CcbNetPay/bankURL Ljava/lang/String;
aload 0
ldc "https://ibsbjstar.ccb.com.cn/CCBIS/B2CMainPlatP1"
putfield com/ccb/ccbnetpay/CcbNetPay/sdkCheckURL Ljava/lang/String;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/CcbNetPay/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/CcbNetPay/dialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
aload 0
aload 1
putfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
aload 0
aload 2
putfield com/ccb/ccbnetpay/CcbNetPay/dialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/app/Activity;Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "https://ibsbjstar.ccb.com.cn/"
putfield com/ccb/ccbnetpay/CcbNetPay/bankURL Ljava/lang/String;
aload 0
ldc "https://ibsbjstar.ccb.com.cn/CCBIS/B2CMainPlatP1"
putfield com/ccb/ccbnetpay/CcbNetPay/sdkCheckURL Ljava/lang/String;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/CcbNetPay/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/CcbNetPay/dialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
aload 0
aload 1
putfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
aload 0
aload 2
putfield com/ccb/ccbnetpay/CcbNetPay/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
aload 0
aload 3
putfield com/ccb/ccbnetpay/CcbNetPay/dialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
return
.limit locals 4
.limit stack 2
.end method

.method private checkAppInstalled(Ljava/lang/String;)Z
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
invokevirtual android/app/Activity/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
invokevirtual android/content/pm/PackageManager/getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
ifnull L0
ldc "---CcbNetPay---"
ldc "\u5df2\u7ecf\u5b89\u88c5\u4e86\u5efa\u884cAPP"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_1
ireturn
L0:
ldc "---CcbNetPay---"
ldc "\u6ca1\u6709\u5b89\u88c5\u5efa\u884cAPP"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public checkSdkVer(Ljava/lang/String;I)Ljava/util/Map;
.signature "(Ljava/lang/String;I)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch java/lang/Exception from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch java/lang/Exception from L6 to L7 using L3
.catch org/json/JSONException from L8 to L9 using L2
.catch java/lang/Exception from L8 to L9 using L3
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
astore 3
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
ldc "---\u5ba2\u6237\u7aef\u64cd\u4f5c\u7cfb\u7edf\u7248\u672c---"
aload 3
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ldc "MERCHANTID="
invokestatic com/ccb/ccbnetpay/util/NetUtil/getKeyWords(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 1
ldc "BRANCHID="
invokestatic com/ccb/ccbnetpay/util/NetUtil/getKeyWords(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
new java/lang/StringBuilder
dup
ldc "https://ibsbjstar.ccb.com.cn/CCBIS/B2CMainPlatP1?CCB_IBSVersion=V6&PT_STYLE=3&TXCODE=SJSF01&APP_TYPE=1&SDK_VERSION=1.0.1&SYS_VERSION="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&REMARK1="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&REMARK2="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L0:
ldc "---sdk\u7248\u672c\u8bbf\u95ee\u8def\u5f84---"
aload 5
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
invokestatic com/ccb/ccbnetpay/util/NetUtil/sendGet(Ljava/lang/String;)Ljava/lang/String;
astore 5
ldc "---sdk\u7248\u672c\u7ed3\u679c---"
aload 5
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new org/json/JSONObject
dup
aload 5
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "SUCCESS"
invokevirtual org/json/JSONObject/getBoolean(Ljava/lang/String;)Z
ifeq L10
aload 5
ldc "URLPATH"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 6
aload 5
ldc "URLPUBDATA"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 5
ldc "--\u89e3\u6790sdkCheckRs--\uff1a"
new java/lang/StringBuilder
dup
aload 6
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
iconst_1
iload 2
if_icmpne L6
L4:
new java/lang/StringBuilder
dup
ldc "https://ibsbjstar.ccb.com.cn/"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&APP_TYPE="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&SDK_VERSION="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "1.0.1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&SYS_VERSION="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
ldc "---\u7ec4\u88c5\u65b0\u7684\u8df3\u8f6cApp\u7684url---"
aload 3
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
ldc "2"
astore 1
L11:
aload 4
ldc "mykey"
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 4
ldc "myval"
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 4
areturn
L6:
new java/lang/StringBuilder
dup
ldc "https://ibsbjstar.ccb.com.cn/"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
ldc "---\u7ec4\u88c5\u65b0\u7684\u8df3\u8f6cH5\u7684url---"
aload 3
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
goto L5
L2:
astore 1
ldc "---\u89e3\u6790sdk\u7248\u672c\u7ed3\u679c\u4fe1\u606f\u5f02\u5e38---"
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "1"
astore 1
ldc "\u6821\u9a8cSDK\u7248\u672c\u6709\u8bef"
astore 3
goto L11
L10:
ldc "1"
astore 1
L8:
aload 5
ldc "ERRORMSG"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
L9:
goto L11
L3:
astore 1
ldc "---\u6821\u9a8csdk\u7248\u672c\u4fe1\u606f\u5f02\u5e38---"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "1"
astore 1
ldc "\u5efa\u884c\u652f\u4ed8\u9875\u9762\u52a0\u8f7d\u5931\u8d25"
astore 3
goto L11
.limit locals 7
.limit stack 4
.end method

.method public dismissDia()V
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/dialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
ifnull L0
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/dialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/disDialog()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public doStartApp(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch java/lang/Exception from L4 to L5 using L3
aload 0
aload 1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/hasInstallNum(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/doStartH5(Ljava/lang/String;)V
return
L6:
aload 0
aload 1
iconst_1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/checkSdkVer(Ljava/lang/String;I)Ljava/util/Map;
astore 2
ldc "\u5c01\u88c5\u8bf7\u6c42url\uff1a"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
ldc "mykey"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 1
aload 2
ldc "myval"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 2
ldc "1"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
invokevirtual com/ccb/ccbnetpay/CcbNetPay/dismissDia()V
aload 0
iconst_1
aload 2
invokevirtual com/ccb/ccbnetpay/CcbNetPay/onSendMsgDialog(ILjava/lang/String;)V
return
L7:
aload 2
ldc "TXCODE=520100"
ldc "TXCODE=SDK001"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 1
ldc "\u7ec4\u88c5\u5b8c\u6574\u540e\u7684url\uff1a"
aload 1
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 1
invokestatic com/ccb/ccbnetpay/util/NetUtil/sendGet(Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc "\u83b7\u5f97\u670d\u52a1\u5668\u8fd4\u56de\u7ed3\u679c\uff1a"
aload 1
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "SUCCESS"
invokevirtual org/json/JSONObject/getBoolean(Ljava/lang/String;)Z
ifne L4
aload 1
ldc "ERRORMSG"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
invokevirtual com/ccb/ccbnetpay/CcbNetPay/dismissDia()V
aload 0
iconst_1
aload 1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/onSendMsgDialog(ILjava/lang/String;)V
L1:
return
L2:
astore 1
aload 0
invokevirtual com/ccb/ccbnetpay/CcbNetPay/dismissDia()V
aload 0
iconst_1
ldc "\u89e3\u6790\u5546\u6237\u52a0\u5bc6\u4e32\u6709\u8bef"
invokevirtual com/ccb/ccbnetpay/CcbNetPay/onSendMsgDialog(ILjava/lang/String;)V
ldc "\u89e3\u6790\u5546\u6237url\u5f02\u5e38---\uff1a"
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L4:
aload 1
ldc "OPENAPPURL"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc "\u89e3\u6790url\u5f97\u5230appURL---\uff1a"
aload 1
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 1
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/ccb/ccbnetpay/CcbNetPay/dismissDia()V
L5:
return
L3:
astore 1
aload 0
invokevirtual com/ccb/ccbnetpay/CcbNetPay/dismissDia()V
aload 0
iconst_1
ldc "\u5efa\u884c\u652f\u4ed8\u9875\u9762\u52a0\u8f7d\u5931\u8d25"
invokevirtual com/ccb/ccbnetpay/CcbNetPay/onSendMsgDialog(ILjava/lang/String;)V
ldc "\u8df3\u8f6c\u5efa\u884cAPP\u652f\u4ed8\u9875\u9762\u5f02\u5e38\uff1a"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public doStartAppOrH5(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/hasInstallNum(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/doStartH5(Ljava/lang/String;)V
return
L0:
aload 0
ldc "com.chinamworld.main"
invokespecial com/ccb/ccbnetpay/CcbNetPay/checkAppInstalled(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/doStartApp(Ljava/lang/String;)V
return
L1:
aload 0
aload 1
invokevirtual com/ccb/ccbnetpay/CcbNetPay/doStartH5(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public doStartH5(Ljava/lang/String;)V
aload 0
aload 1
iconst_2
invokevirtual com/ccb/ccbnetpay/CcbNetPay/checkSdkVer(Ljava/lang/String;I)Ljava/util/Map;
astore 2
ldc "\u8df3\u8f6c\u5230H5\u8def\u5f84\uff1a"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
ldc "mykey"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 1
aload 2
ldc "myval"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 2
ldc "1"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
invokevirtual com/ccb/ccbnetpay/CcbNetPay/dismissDia()V
aload 0
iconst_1
aload 2
invokevirtual com/ccb/ccbnetpay/CcbNetPay/onSendMsgDialog(ILjava/lang/String;)V
return
L0:
new android/content/Intent
dup
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
ldc com/ccb/ccbnetpay/H5PayActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "url"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/ccb/ccbnetpay/CcbNetPay/dismissDia()V
return
.limit locals 3
.limit stack 4
.end method

.method public getVersion()Ljava/lang/String;
ldc "1.0.1"
areturn
.limit locals 1
.limit stack 1
.end method

.method public hasInstallNum(Ljava/lang/String;)Z
iconst_m1
aload 1
ldc "INSTALLNUM"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
if_icmpne L0
iconst_0
ireturn
L0:
aload 1
ldc "INSTALLNUM="
invokestatic com/ccb/ccbnetpay/util/NetUtil/getKeyWords(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc "---INSTALLNUM\u7684\u503c---"
aload 1
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokevirtual java/lang/String/length()I
ifeq L1
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
L1:
iconst_0
ireturn
L2:
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
iconst_1
if_icmple L3
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onSendMsgDialog(ILjava/lang/String;)V
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
ifnonnull L0
return
L0:
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/context Landroid/app/Activity;
new com/ccb/ccbnetpay/util/SyncMessageReminder
dup
iload 1
aload 2
aload 0
getfield com/ccb/ccbnetpay/CcbNetPay/listener Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;
invokespecial com/ccb/ccbnetpay/util/SyncMessageReminder/<init>(ILjava/lang/String;Lcom/ccb/ccbnetpay/util/SyncMessageReminder$OnSyncMessageReceivedListener;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method
