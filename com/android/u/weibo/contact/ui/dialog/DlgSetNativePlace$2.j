.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;

.method <init>(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;
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
iload 2
getstatic com/android/u/weibo/R$id/button_cancel I
if_icmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/dismiss()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/button_confirm I
if_icmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/access$100(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;)V
return
.limit locals 3
.limit stack 2
.end method
