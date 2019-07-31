.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/contact/ui/dialog/DlgPermissionSet
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;

.method <init>(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
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
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/dismiss()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/button_set I
if_icmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/access$200(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;
ifnull L2
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/access$200(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;
iconst_2
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)I
isub
invokeinterface com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener/getPermission(I)V 1
L2:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/dismiss()V
return
.limit locals 3
.limit stack 3
.end method
