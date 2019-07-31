.bytecode 50.0
.class synchronized com/sina/weibo/sdk/utils/Util$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/sina/weibo/sdk/utils/Util/createConfirmDialog(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
.inner class inner com/sina/weibo/sdk/utils/Util$1

.field private final synthetic 'val$activity' Landroid/app/Activity;

.method <init>(Landroid/app/Activity;)V
aload 0
aload 1
putfield com/sina/weibo/sdk/utils/Util$1/val$activity Landroid/app/Activity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/sina/weibo/sdk/utils/Util$1/val$activity Landroid/app/Activity;
invokestatic com/sina/weibo/sdk/utils/Util/access$0(Landroid/app/Activity;)V
L0:
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
L1:
return
L2:
astore 1
return
.limit locals 3
.limit stack 1
.end method
