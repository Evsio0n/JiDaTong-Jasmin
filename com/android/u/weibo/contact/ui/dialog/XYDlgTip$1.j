.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/dialog/XYDlgTip$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/contact/ui/dialog/XYDlgTip/<init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.inner class inner com/android/u/weibo/contact/ui/dialog/XYDlgTip$1

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;

.method <init>(Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/XYDlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/XYDlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/cancel()V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/XYDlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;
invokestatic com/android/u/weibo/contact/ui/dialog/XYDlgTip/access$000(Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;)Landroid/content/DialogInterface$OnClickListener;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/XYDlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;
invokestatic com/android/u/weibo/contact/ui/dialog/XYDlgTip/access$000(Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;)Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/XYDlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;
iconst_m1
invokeinterface android/content/DialogInterface$OnClickListener/onClick(Landroid/content/DialogInterface;I)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method
