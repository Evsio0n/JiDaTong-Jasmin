.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/AddFriendView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/view/AddFriendView
.inner class inner com/nd/android/u/contact/view/AddFriendView$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/AddFriendView;

.method <init>(Lcom/nd/android/u/contact/view/AddFriendView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L0
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/search_user_list_item_btn_add I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L2
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$100(Lcom/nd/android/u/contact/view/AddFriendView;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/canot_add_self I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L3
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/findFgidByFid(J)I
iconst_m1
if_icmpeq L3
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$100(Lcom/nd/android/u/contact/view/AddFriendView;)Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokevirtual com/nd/android/u/contact/view/AddFriendView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/already_be_friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitid()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
if_icmpeq L4
new com/nd/android/u/contact/dialog/AddFriendRequestDialog
dup
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$100(Lcom/nd/android/u/contact/view/AddFriendView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/create()Landroid/app/AlertDialog;
astore 1
L5:
aload 1
invokevirtual android/app/AlertDialog/show()V
return
L4:
new com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog
dup
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$100(Lcom/nd/android/u/contact/view/AddFriendView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/create()Landroid/app/AlertDialog;
astore 1
goto L5
L1:
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$100(Lcom/nd/android/u/contact/view/AddFriendView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/AddFriendView$1/this$0 Lcom/nd/android/u/contact/view/AddFriendView;
invokestatic com/nd/android/u/contact/view/AddFriendView/access$000(Lcom/nd/android/u/contact/view/AddFriendView;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 4
.end method
