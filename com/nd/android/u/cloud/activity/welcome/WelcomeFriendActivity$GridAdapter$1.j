.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/setData(ILjava/util/List;)V
.inner class GridAdapter inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter outer com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;

.field final synthetic 'val$friend' Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;

.field final synthetic 'val$holder' Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder;

.method <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/this$1 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/val$friend Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;
aload 0
aload 3
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/val$holder Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/val$friend Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/isSelect()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/val$holder Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder;
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mImageViewMask Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/val$friend Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;
iconst_0
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/setIsSelect(Z)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/val$holder Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder;
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mImageViewMask Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/val$friend Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/setIsSelect(Z)V
return
.limit locals 2
.limit stack 2
.end method
