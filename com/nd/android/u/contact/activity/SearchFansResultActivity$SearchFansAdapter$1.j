.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class private SearchFansAdapter inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter outer com/nd/android/u/contact/activity/SearchFansResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;

.field final synthetic 'val$position' I

.method <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/this$1 Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
aload 0
iload 2
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
checkcast android/widget/Button
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/this$1 Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
getstatic com/nd/android/u/contact/R$string/concern_others I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/this$1 Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/val$position I
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "friend"
aload 2
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/this$1 Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
ldc com/nd/android/u/contact/activity/FriendsGroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter$1/this$1 Lcom/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter;
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/startActivityForResult(Landroid/content/Intent;I)V
L0:
return
.limit locals 3
.limit stack 4
.end method
