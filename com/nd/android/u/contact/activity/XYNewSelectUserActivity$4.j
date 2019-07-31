.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$4
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/XYNewSelectUserActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
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
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/gid J
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/isExists(JJ)Z 4
ifeq L0
L1:
return
L0:
aload 1
ifnull L1
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/handler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/toggle(JLandroid/os/Handler;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$800(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/refresh()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/handler Landroid/os/Handler;
bipush 52
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 6
.limit stack 5
.end method
