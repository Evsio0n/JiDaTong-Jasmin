.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupMemberActivity$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/GroupMemberActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupMemberActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/getMemberList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lstore 4
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
iconst_1
if_icmpne L0
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
bipush -99
lload 4
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
lload 4
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 6
.limit stack 4
.end method
