.bytecode 50.0
.class synchronized com/sina/weibo/sdk/utils/Util$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/sina/weibo/sdk/utils/Util/createConfirmDialog(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
.inner class inner com/sina/weibo/sdk/utils/Util$2

.field private final synthetic 'val$listener' Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;

.method <init>(Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
aload 0
aload 1
putfield com/sina/weibo/sdk/utils/Util$2/val$listener Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/sina/weibo/sdk/utils/Util$2/val$listener Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;
ifnull L1
aload 0
getfield com/sina/weibo/sdk/utils/Util$2/val$listener Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;
invokeinterface com/sina/weibo/sdk/api/IWeiboDownloadListener/onCancel()V 0
L1:
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
L3:
return
L2:
astore 1
return
.limit locals 3
.limit stack 1
.end method
