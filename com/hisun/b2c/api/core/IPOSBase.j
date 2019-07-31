.bytecode 50.0
.class public synchronized abstract com/hisun/b2c/api/core/IPOSBase
.super java/lang/Object
.inner class inner com/hisun/b2c/api/core/IPOSBase$1
.inner class inner com/hisun/b2c/api/core/IPOSBase$2
.inner class inner com/hisun/b2c/api/core/IPOSBase$3

.field public static final 'INSTALL_TEMP_APK_NAME' Ljava/lang/String; = "/temp.apk"

.field public static final 'WHAT_CLOSE_PROGRESS' I = 402


.field public static final 'WHAT_SHOW_INSTALL' I = 403


.field public static final 'WHAT_SHOW_PROGRESS' I = 401


.field public static final 'WHAT_SHOW_PROGRESS_CAN_CANCEL' I = 404


.field private 'context' Landroid/content/Context;

.field private 'handler' Landroid/os/Handler;

.field protected 'iposUtils' Lcom/hisun/b2c/api/core/IPOSUtils;

.field private 'mProgress' Landroid/app/ProgressDialog;

.field protected 'tagName' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/hisun/b2c/api/core/IPOSBase$1
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSBase$1/<init>(Lcom/hisun/b2c/api/core/IPOSBase;)V
putfield com/hisun/b2c/api/core/IPOSBase/handler Landroid/os/Handler;
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBase/context Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$0(Lcom/hisun/b2c/api/core/IPOSBase;)Landroid/content/Context;
aload 0
getfield com/hisun/b2c/api/core/IPOSBase/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/hisun/b2c/api/core/IPOSBase;Landroid/app/ProgressDialog;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/IPOSBase/mProgress Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2(Lcom/hisun/b2c/api/core/IPOSBase;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/hisun/b2c/api/core/IPOSBase/showInstallConfirmDialog(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$3(Lcom/hisun/b2c/api/core/IPOSBase;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/hisun/b2c/api/core/IPOSBase/chmod(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private chmod(Ljava/lang/String;)V
.catch java/io/IOException from L0 to L1 using L2
L0:
new java/lang/StringBuilder
dup
ldc "chmod 777 "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
aload 1
invokevirtual java/lang/Runtime/exec(Ljava/lang/String;)Ljava/lang/Process;
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method private showInstallConfirmDialog(Ljava/lang/String;)V
new android/app/AlertDialog$Builder
dup
aload 0
invokevirtual com/hisun/b2c/api/core/IPOSBase/getContext()Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 2
aload 2
ldc "\u5b89\u88c5\u63d0\u793a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u4e3a\u4e86\u4fdd\u8bc1\u60a8\u7684\u4ea4\u6613\u5b89\u5168\uff0c\u9700\u8981\u60a8\u5b89\u88c5\u624b\u673a\u5b89\u5168\u652f\u4ed8\u7ec4\u4ef6\uff0c\u624d\u80fd\u8fdb\u884c\u4ed8\u6b3e\u3002\n\u70b9\u51fb\u786e\u5b9a\uff0c\u7acb\u5373\u5b89\u88c5\u3002"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 2
ldc "\u786e\u5b9a"
new com/hisun/b2c/api/core/IPOSBase$2
dup
aload 0
aload 1
invokespecial com/hisun/b2c/api/core/IPOSBase$2/<init>(Lcom/hisun/b2c/api/core/IPOSBase;Ljava/lang/String;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
ldc "\u53d6\u6d88"
new com/hisun/b2c/api/core/IPOSBase$3
dup
aload 0
invokespecial com/hisun/b2c/api/core/IPOSBase$3/<init>(Lcom/hisun/b2c/api/core/IPOSBase;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
pop
aload 2
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 3
.limit stack 6
.end method

.method protected closeProgress()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/hisun/b2c/api/core/IPOSBase/mProgress Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/hisun/b2c/api/core/IPOSBase/mProgress Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 0
aconst_null
putfield com/hisun/b2c/api/core/IPOSBase/mProgress Landroid/app/ProgressDialog;
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public getContext()Landroid/content/Context;
aload 0
getfield com/hisun/b2c/api/core/IPOSBase/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getIPosReleaseName()Ljava/lang/String;
ldc "ipos_ii.apk"
areturn
.limit locals 1
.limit stack 1
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected sendMessage(I)V
aload 0
iload 1
aconst_null
aload 0
getfield com/hisun/b2c/api/core/IPOSBase/handler Landroid/os/Handler;
invokevirtual com/hisun/b2c/api/core/IPOSBase/sendMessage(ILjava/lang/Object;Landroid/os/Handler;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected sendMessage(ILjava/lang/Object;)V
aload 0
iload 1
aload 2
aload 0
getfield com/hisun/b2c/api/core/IPOSBase/handler Landroid/os/Handler;
invokevirtual com/hisun/b2c/api/core/IPOSBase/sendMessage(ILjava/lang/Object;Landroid/os/Handler;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected sendMessage(ILjava/lang/Object;Landroid/os/Handler;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 4
aload 4
iload 1
putfield android/os/Message/what I
aload 4
aload 2
putfield android/os/Message/obj Ljava/lang/Object;
aload 3
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 5
.limit stack 2
.end method
