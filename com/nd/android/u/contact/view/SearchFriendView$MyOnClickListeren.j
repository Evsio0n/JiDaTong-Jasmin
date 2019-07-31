.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private MyOnClickListeren inner com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren outer com/nd/android/u/contact/view/SearchFriendView

.field private 'context' Landroid/content/Context;

.field private 'fid' J

.field private 'mListener' Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;

.field private 'mName' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/SearchFriendView;

.field private 'uapuid' J

.method public <init>(Lcom/nd/android/u/contact/view/SearchFriendView;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/context Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/this$0 Lcom/nd/android/u/contact/view/SearchFriendView;
getfield com/nd/android/u/contact/view/SearchFriendView/mIsBackpackSendflower Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/search_can_select_my I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
ifnull L2
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/fid J
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/mName Ljava/lang/String;
invokeinterface com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener/selectedUserFid(JLjava/lang/String;)V 3
return
L0:
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L3
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/fid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
L3:
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/context Landroid/content/Context;
bipush -99
aload 0
getfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/fid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
.limit locals 2
.limit stack 4
.end method

.method public setFid(JJLjava/lang/String;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
aload 0
lload 1
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/fid J
aload 0
lload 3
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/uapuid J
aload 0
aload 5
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/mName Ljava/lang/String;
aload 0
aload 6
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
return
.limit locals 7
.limit stack 3
.end method

.method public setFid(JLjava/lang/String;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
aload 0
lload 1
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/fid J
aload 0
aload 3
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/mName Ljava/lang/String;
aload 0
aload 4
putfield com/nd/android/u/contact/view/SearchFriendView$MyOnClickListeren/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
return
.limit locals 5
.limit stack 3
.end method
