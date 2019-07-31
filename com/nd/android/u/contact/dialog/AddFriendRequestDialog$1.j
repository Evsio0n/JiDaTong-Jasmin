.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddFriendRequestDialog$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/AddFriendRequestDialog/setListener()V
.inner class inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$100(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$002(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/canot_add_self I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
L0:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/checkFriend(J)Z 2
ifeq L1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$200(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddFriendRequestDialog/access$300(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/already_be_friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
L1:
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/addRequestFriend()V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 4
.end method
