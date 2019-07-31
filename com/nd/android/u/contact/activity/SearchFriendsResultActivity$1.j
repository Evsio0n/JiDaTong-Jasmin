.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFriendsResultActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/SearchFriendsResultActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFriendsResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;JI)V
return
.limit locals 6
.limit stack 4
.end method
