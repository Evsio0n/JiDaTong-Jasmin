.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectUserActivity$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/SelectUserActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/SelectUserActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
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
checkcast com/product/android/commonInterface/chat/SearchContract
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$200(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$600(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Lcom/product/android/ui/widget/SearchBarWidget;
invokevirtual com/product/android/ui/widget/SearchBarWidget/performClickCancel()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
bipush -99
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
L0:
return
L1:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
getfield com/nd/android/u/contact/activity/SelectUserActivity/handler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/toggle(JLandroid/os/Handler;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/refresh()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
getfield com/nd/android/u/contact/activity/SelectUserActivity/handler Landroid/os/Handler;
bipush 52
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 6
.limit stack 4
.end method
