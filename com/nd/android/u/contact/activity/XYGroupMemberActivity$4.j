.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupMemberActivity$4
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/XYGroupMemberActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/getMemberList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lstore 4
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
bipush -99
lload 4
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
lload 4
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 6
.limit stack 4
.end method
