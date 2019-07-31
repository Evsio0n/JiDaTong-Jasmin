.bytecode 50.0
.class final synchronized com/nd/android/u/contact/business/SynOapApp$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/business/SynOapApp/showLoadDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
.inner class static final inner com/nd/android/u/contact/business/SynOapApp$2

.field final synthetic 'val$app' Lcom/product/android/commonInterface/contact/OapApp;

.field final synthetic 'val$ctx' Landroid/content/Context;

.method <init>(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/SynOapApp$2/val$app Lcom/product/android/commonInterface/contact/OapApp;
aload 0
aload 2
putfield com/nd/android/u/contact/business/SynOapApp$2/val$ctx Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
invokestatic com/common/android/utils/download/DownloadModule/getDownTaskMap()Ljava/util/HashMap;
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$app Lcom/product/android/commonInterface/contact/OapApp;
getfield com/product/android/commonInterface/contact/OapApp/appid I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$ctx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$app Lcom/product/android/commonInterface/contact/OapApp;
getfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$ctx Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/downloading I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
new com/common/android/utils/download/DownloadModule
dup
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$ctx Landroid/content/Context;
invokespecial com/common/android/utils/download/DownloadModule/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$app Lcom/product/android/commonInterface/contact/OapApp;
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setSoftName(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$app Lcom/product/android/commonInterface/contact/OapApp;
getfield com/product/android/commonInterface/contact/OapApp/appid I
invokevirtual com/common/android/utils/download/DownloadModule/setAppId(I)V
aload 1
getstatic com/product/android/business/config/Configuration/DOWNLOAD_PATH Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadDirPath(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$app Lcom/product/android/commonInterface/contact/OapApp;
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadFileName(Ljava/lang/String;)V
aload 1
aconst_null
invokevirtual com/common/android/utils/download/DownloadModule/setIntentClassName(Ljava/lang/Class;)V
aload 1
aload 0
getfield com/nd/android/u/contact/business/SynOapApp$2/val$app Lcom/product/android/commonInterface/contact/OapApp;
getfield com/product/android/commonInterface/contact/OapApp/down_url Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setSoftUrl(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/contact/R$drawable/icon_sys_bar_download I
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadIco(I)V
aload 1
sipush 10001
invokevirtual com/common/android/utils/download/DownloadModule/setSoftUid(I)V
aload 1
invokevirtual com/common/android/utils/download/DownloadModule/Start()V
return
.limit locals 3
.limit stack 4
.end method
