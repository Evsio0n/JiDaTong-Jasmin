.bytecode 50.0
.class final synchronized com/android/u/weibo/weibo/utils/WeiboUtil$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/utils/WeiboUtil/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
.inner class static final inner com/android/u/weibo/weibo/utils/WeiboUtil$2

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;

.method <init>(Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/WeiboUtil$2/val$listener Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$2/val$listener Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/utils/WeiboUtil$2/val$listener Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;
aload 1
iload 2
invokeinterface com/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener/onPositiveClick(Landroid/content/DialogInterface;I)V 2
L0:
return
.limit locals 3
.limit stack 3
.end method
