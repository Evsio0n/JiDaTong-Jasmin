.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/XYGroupMemberAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;

.field final synthetic 'val$member' Lcom/product/android/commonInterface/contact/OapUser;

.method <init>(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/val$member Lcom/product/android/commonInterface/contact/OapUser;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokestatic com/nd/android/u/contact/adapter/XYGroupMemberAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/val$member Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokestatic com/nd/android/u/contact/adapter/XYGroupMemberAdapter/access$100(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/val$member Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokestatic com/nd/android/u/contact/adapter/XYGroupMemberAdapter/access$200(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener;
invokeinterface com/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener/hasDeletMember()V 0
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method
