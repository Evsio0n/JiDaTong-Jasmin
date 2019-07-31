.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/DlgGroupRevSet$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/DlgGroupRevSet
.inner class inner com/nd/android/u/contact/dialog/DlgGroupRevSet$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;

.method <init>(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet$2/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
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
getstatic com/nd/android/u/contact/R$id/button_cancel I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$2/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/dismiss()V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/contact/R$id/button_set I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$2/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
invokestatic com/nd/android/u/contact/dialog/DlgGroupRevSet/access$200(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
ifnull L2
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$2/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
invokestatic com/nd/android/u/contact/dialog/DlgGroupRevSet/access$200(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$2/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
invokestatic com/nd/android/u/contact/dialog/DlgGroupRevSet/access$000(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)I
invokeinterface com/product/android/commonInterface/chat/IGroupReceiveSettingListener/getPermission(I)V 1
L2:
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet$2/this$0 Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/dismiss()V
return
.limit locals 3
.limit stack 2
.end method
