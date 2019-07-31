.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/SearchFriendView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/view/SearchFriendView
.inner class inner com/nd/android/u/contact/view/SearchFriendView$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/SearchFriendView;

.method <init>(Lcom/nd/android/u/contact/view/SearchFriendView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchFriendView$1/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$1/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
invokestatic com/nd/android/u/contact/view/SearchFriendView/access$000(Lcom/nd/android/u/contact/view/SearchFriendView;)J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$1/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
invokestatic com/nd/android/u/contact/view/SearchFriendView/access$100(Lcom/nd/android/u/contact/view/SearchFriendView;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/canot_add_self I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/findFgidByFid(J)I
iconst_m1
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$1/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
invokestatic com/nd/android/u/contact/view/SearchFriendView/access$100(Lcom/nd/android/u/contact/view/SearchFriendView;)Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$1/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
invokevirtual com/nd/android/u/contact/view/SearchFriendView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/already_be_friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitid()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
if_icmpeq L2
new com/nd/android/u/contact/dialog/AddFriendRequestDialog
dup
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$1/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
invokestatic com/nd/android/u/contact/view/SearchFriendView/access$100(Lcom/nd/android/u/contact/view/SearchFriendView;)Landroid/content/Context;
aload 1
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/create()Landroid/app/AlertDialog;
astore 1
L3:
aload 1
invokevirtual android/app/AlertDialog/show()V
return
L2:
new com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog
dup
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$1/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
invokestatic com/nd/android/u/contact/view/SearchFriendView/access$100(Lcom/nd/android/u/contact/view/SearchFriendView;)Landroid/content/Context;
aload 1
invokespecial com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/create()Landroid/app/AlertDialog;
astore 1
goto L3
.limit locals 2
.limit stack 4
.end method
