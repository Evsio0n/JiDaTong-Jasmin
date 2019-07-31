.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectUserActivity$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/XYSelectUserActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
iload 3
invokevirtual android/widget/AdapterView/getItemAtPosition(I)Ljava/lang/Object;
astore 2
aload 2
instanceof com/product/android/commonInterface/chat/SearchContract
ifeq L0
aload 1
iload 3
invokevirtual android/widget/AdapterView/getItemAtPosition(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/SearchContract
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
bipush -99
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
L1:
return
L2:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/toggle(JLandroid/os/Handler;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/refresh()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
bipush 52
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
L0:
aload 2
instanceof com/product/android/commonInterface/contact/OapUserSimple
ifeq L1
aload 1
iload 3
invokevirtual android/widget/AdapterView/getItemAtPosition(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 1
aload 1
ifnull L1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
bipush -99
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L3:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/toggle(JLandroid/os/Handler;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/refresh()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/handler Landroid/os/Handler;
bipush 52
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 6
.limit stack 4
.end method
