.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/dialog/DlgTip$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/contact/ui/dialog/DlgTip
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgTip$1

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/dialog/DlgTip;

.method <init>(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgTip;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
getstatic com/android/u/weibo/R$id/button_cancel I
iload 2
if_icmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgTip;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgTip/access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
ifnull L1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgTip;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgTip/access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
iconst_m1
invokeinterface com/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener/getTipResult(I)V 1
L1:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgTip;
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/dismiss()V
L2:
return
L0:
getstatic com/android/u/weibo/R$id/button_ok I
iload 2
if_icmpeq L3
getstatic com/android/u/weibo/R$id/btn_ok I
iload 2
if_icmpne L2
L3:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgTip;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgTip/access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
ifnull L4
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgTip;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgTip/access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
iconst_0
invokeinterface com/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener/getTipResult(I)V 1
L4:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgTip;
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/dismiss()V
return
.limit locals 3
.limit stack 2
.end method
