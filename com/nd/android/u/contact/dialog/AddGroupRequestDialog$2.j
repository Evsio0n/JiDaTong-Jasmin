.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddGroupRequestDialog$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/AddGroupRequestDialog/setListener()V
.inner class inner com/nd/android/u/contact/dialog/AddGroupRequestDialog$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$2/this$0 Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$2/this$0 Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddGroupRequestDialog/access$100(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lcmp
ifne L1
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$2/this$0 Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddGroupRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/already_in_group I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$2/this$0 Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddGroupRequestDialog/access$100(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$2/this$0 Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddGroupRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandAddGroupRequest(JLjava/lang/String;)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 5
.limit stack 4
.end method
