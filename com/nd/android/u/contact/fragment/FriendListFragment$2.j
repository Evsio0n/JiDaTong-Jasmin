.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/fragment/FriendListFragment/initEvent()V
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/contact/activity/SearchUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 1
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
