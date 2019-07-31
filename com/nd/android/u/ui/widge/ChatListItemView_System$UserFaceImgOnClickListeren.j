.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private UserFaceImgOnClickListeren inner com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren outer com/nd/android/u/ui/widge/ChatListItemView_System

.field private 'mContext' Landroid/content/Context;

.field private 'mFid' J

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_System;

.method public <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_System;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/mFid J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 2
.limit stack 4
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_System$UserFaceImgOnClickListeren/mFid J
return
.limit locals 3
.limit stack 3
.end method
