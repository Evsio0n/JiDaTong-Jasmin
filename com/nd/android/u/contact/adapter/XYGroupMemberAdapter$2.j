.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/XYGroupMemberAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;

.field final synthetic 'val$member' Lcom/product/android/commonInterface/contact/OapUser;

.method <init>(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2/val$member Lcom/product/android/commonInterface/contact/OapUser;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokestatic com/nd/android/u/contact/adapter/XYGroupMemberAdapter/access$300(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2/val$member Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
