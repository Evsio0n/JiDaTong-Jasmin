.bytecode 50.0
.class public synchronized com/bestpay/plugin/Plugin
.super java/lang/Object
.inner class inner com/bestpay/plugin/Plugin$1
.inner class inner com/bestpay/plugin/Plugin$10
.inner class inner com/bestpay/plugin/Plugin$11
.inner class inner com/bestpay/plugin/Plugin$12
.inner class inner com/bestpay/plugin/Plugin$12$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1
.inner class inner com/bestpay/plugin/Plugin$12$1$1$1
.inner class inner com/bestpay/plugin/Plugin$2
.inner class inner com/bestpay/plugin/Plugin$3
.inner class inner com/bestpay/plugin/Plugin$4
.inner class inner com/bestpay/plugin/Plugin$5
.inner class inner com/bestpay/plugin/Plugin$6
.inner class inner com/bestpay/plugin/Plugin$7
.inner class inner com/bestpay/plugin/Plugin$8
.inner class inner com/bestpay/plugin/Plugin$9

.field public static final 'ACCOUNTID' Ljava/lang/String; = "ACCOUNTID"

.field public static final 'ATTACH' Ljava/lang/String; = "ATTACH"

.field public static final 'ATTACHAMOUNT' Ljava/lang/String; = "ATTACHAMOUNT"

.field public static final 'BACKMERCHANTURL' Ljava/lang/String; = "BACKMERCHANTURL"

.field public static final 'BUSITYPE' Ljava/lang/String; = "BUSITYPE"

.field public static final 'CURTYPE' Ljava/lang/String; = "CURTYPE"

.field public static final 'CUSTOMERID' Ljava/lang/String; = "CUSTOMERID"

.field public static final 'DIVDETAILS' Ljava/lang/String; = "DIVDETAILS"

.field private static final 'ERR_FEILD_ORDAMOUNT' Ljava/lang/String; = "ORDAMOUNT"

.field private static final 'ERR_FEILD_ORDAMOUNT_LIMIT' Ljava/lang/String; = "ORDAMOUNT_LIMIT"

.field public static final 'FILTER_APK_VERSION' Ljava/lang/String; = "3.1.0"

.field public static 'INSTALL_NEEDED' I = 0


.field public static final 'KEY' Ljava/lang/String; = "KEY"

.field private static final 'LIMIT_BILL_ORDER_AMOUNT' F = 50.0F


.field public static final 'MAC' Ljava/lang/String; = "MAC"

.field public static final 'MERCHANTID' Ljava/lang/String; = "MERCHANTID"

.field public static final 'MERCHANTPHONE' Ljava/lang/String; = "MERCHANTPHONE"

.field public static final 'MERCHANTPWD' Ljava/lang/String; = "MERCHANTPWD"

.field public static final 'MERCHANTUSERACOUNT' Ljava/lang/String; = "USERACCOUNT"

.field public static final 'ORDERAMOUNT' Ljava/lang/String; = "ORDERAMOUNT"

.field public static final 'ORDERREQTRANSEQ' Ljava/lang/String; = "ORDERREQTRANSEQ"

.field public static final 'ORDERSEQ' Ljava/lang/String; = "ORDERSEQ"

.field public static final 'ORDERTIME' Ljava/lang/String; = "ORDERTIME"

.field public static final 'ORDERVALIDITYTIME' Ljava/lang/String; = "ORDERVALIDITYTIME"

.field public static final 'OTHERFLOW' Ljava/lang/String; = "OTHERFLOW"

.field public static final 'PAYTYPE' Ljava/lang/String; = "PAYTYPE"

.field private static final 'PAY_TYPE_BILLPAY' Ljava/lang/String; = "1"

.field public static final 'PRODUCTAMOUNT' Ljava/lang/String; = "PRODUCTAMOUNT"

.field public static final 'PRODUCTDESC' Ljava/lang/String; = "PRODUCTDESC"

.field public static final 'PRODUCTID' Ljava/lang/String; = "PRODUCTID"

.field public static final 'REQUEST_BESTPAY_EXCHARGE' I = 1001


.field public static final 'REQUEST_SUBMIT_ORDER' I = 1000


.field public static final 'REQUEST_THIRDPART_EXCHARGE' I = 1002


.field public static final 'SDKVERSIONCODE' Ljava/lang/String; = "SDKVERSIONCODE"

.field public static final 'SDK_VERSION_CODE' I = 1


.field public static final 'SERVICE' Ljava/lang/String; = "SERVICE"

.field public static final 'SESSIONKEY' Ljava/lang/String; = "SESSIONKEY"

.field public static final 'SIGNTYPE' Ljava/lang/String; = "SIGNTYPE"

.field public static final 'SUBMERCHANTID' Ljava/lang/String; = "SUBMERCHANTID"

.field public static final 'TAG' Ljava/lang/String; = "Plugin"

.field public static final 'USERIP' Ljava/lang/String; = "USERIP"

.field public static 'isUpdate' Z

.field public static 'mContext' Landroid/content/Context;

.field static 'p' Lcom/bestpay/plugin/Plugin;

.field static 'runnable' Ljava/lang/Runnable;

.field public final 'MESSAGE_SHOW_UPDATE_DIALOG' I

.field public final 'MESSAGE_SHOW_UPDATE_DOWLOAD' I

.field 'builder' Landroid/app/AlertDialog$Builder;

.field 'dialog' Landroid/app/Dialog;

.field 'handler' Landroid/os/Handler;

.method static <clinit>()V
iconst_m1
putstatic com/bestpay/plugin/Plugin/INSTALL_NEEDED I
iconst_1
putstatic com/bestpay/plugin/Plugin/isUpdate Z
new com/bestpay/plugin/Plugin
dup
invokespecial com/bestpay/plugin/Plugin/<init>()V
putstatic com/bestpay/plugin/Plugin/p Lcom/bestpay/plugin/Plugin;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/bestpay/plugin/Plugin/MESSAGE_SHOW_UPDATE_DIALOG I
aload 0
iconst_5
putfield com/bestpay/plugin/Plugin/MESSAGE_SHOW_UPDATE_DOWLOAD I
aload 0
new com/bestpay/plugin/Plugin$1
dup
aload 0
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial com/bestpay/plugin/Plugin$1/<init>(Lcom/bestpay/plugin/Plugin;Landroid/os/Looper;)V
putfield com/bestpay/plugin/Plugin/handler Landroid/os/Handler;
aload 0
aconst_null
putfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
aload 0
aconst_null
putfield com/bestpay/plugin/Plugin/dialog Landroid/app/Dialog;
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$0(Landroid/content/Intent;Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/bestpay/plugin/Plugin/markErrFeildForIntent(Landroid/content/Intent;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
new java/lang/Thread
dup
new com/bestpay/plugin/Plugin$12
dup
aload 0
new com/bestpay/plugin/CheckApkUpdater
dup
aload 1
invokespecial com/bestpay/plugin/CheckApkUpdater/<init>(Landroid/content/Context;)V
aload 1
aload 2
invokespecial com/bestpay/plugin/Plugin$12/<init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CheckApkUpdater;Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 3
.limit stack 8
.end method

.method private static markErrFeildForIntent(Landroid/content/Intent;Ljava/lang/String;)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "error_feild"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
new android/content/ComponentName
dup
ldc "com.chinatelecom.bestpayplugin"
ldc "com.chinatelecom.bestpayplugin.widget.CheckFailedActivity"
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
return
.limit locals 3
.limit stack 5
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;)V
aload 0
putstatic com/bestpay/plugin/Plugin/mContext Landroid/content/Context;
new com/bestpay/plugin/Plugin$2
dup
aload 1
aload 0
invokespecial com/bestpay/plugin/Plugin$2/<init>(Ljava/lang/String;Landroid/content/Context;)V
putstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
getstatic com/bestpay/plugin/Plugin/p Lcom/bestpay/plugin/Plugin;
aload 0
new com/bestpay/plugin/Plugin$3
dup
invokespecial com/bestpay/plugin/Plugin$3/<init>()V
invokespecial com/bestpay/plugin/Plugin/checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static pay(Landroid/content/Context;Ljava/util/Hashtable;)V
.signature "(Landroid/content/Context;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
putstatic com/bestpay/plugin/Plugin/mContext Landroid/content/Context;
new com/bestpay/plugin/Plugin$4
dup
aload 1
aload 0
invokespecial com/bestpay/plugin/Plugin$4/<init>(Ljava/util/Hashtable;Landroid/content/Context;)V
putstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
getstatic com/bestpay/plugin/Plugin/p Lcom/bestpay/plugin/Plugin;
aload 0
new com/bestpay/plugin/Plugin$5
dup
invokespecial com/bestpay/plugin/Plugin$5/<init>()V
invokespecial com/bestpay/plugin/Plugin/checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static userClientRecharge(Landroid/content/Context;Ljava/lang/String;)V
aload 0
putstatic com/bestpay/plugin/Plugin/mContext Landroid/content/Context;
new com/bestpay/plugin/Plugin$8
dup
aload 1
aload 0
invokespecial com/bestpay/plugin/Plugin$8/<init>(Ljava/lang/String;Landroid/content/Context;)V
putstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
getstatic com/bestpay/plugin/Plugin/p Lcom/bestpay/plugin/Plugin;
aload 0
new com/bestpay/plugin/Plugin$9
dup
invokespecial com/bestpay/plugin/Plugin$9/<init>()V
invokespecial com/bestpay/plugin/Plugin/checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static yzfClientRecharge(Landroid/content/Context;Ljava/lang/String;)V
aload 0
putstatic com/bestpay/plugin/Plugin/mContext Landroid/content/Context;
new com/bestpay/plugin/Plugin$6
dup
aload 1
aload 0
invokespecial com/bestpay/plugin/Plugin$6/<init>(Ljava/lang/String;Landroid/content/Context;)V
putstatic com/bestpay/plugin/Plugin/runnable Ljava/lang/Runnable;
getstatic com/bestpay/plugin/Plugin/p Lcom/bestpay/plugin/Plugin;
aload 0
new com/bestpay/plugin/Plugin$7
dup
invokespecial com/bestpay/plugin/Plugin$7/<init>()V
invokespecial com/bestpay/plugin/Plugin/checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
return
.limit locals 2
.limit stack 4
.end method

.method public alertUpdateDialog(Lcom/bestpay/plugin/CallBack;)V
aload 0
new android/app/AlertDialog$Builder
dup
getstatic com/bestpay/plugin/Plugin/mContext Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
putfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
aload 0
getfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
ldc "\u7248\u672c\u66f4\u65b0"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
ldc "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u8981\u66f4\u65b0\uff1f"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/bestpay/plugin/Plugin$10
dup
aload 0
aload 1
invokespecial com/bestpay/plugin/Plugin$10/<init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CallBack;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
ldc "\u53d6\u6d88"
new com/bestpay/plugin/Plugin$11
dup
aload 0
invokespecial com/bestpay/plugin/Plugin$11/<init>(Lcom/bestpay/plugin/Plugin;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/bestpay/plugin/Plugin/builder Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
putfield com/bestpay/plugin/Plugin/dialog Landroid/app/Dialog;
return
.limit locals 2
.limit stack 6
.end method
