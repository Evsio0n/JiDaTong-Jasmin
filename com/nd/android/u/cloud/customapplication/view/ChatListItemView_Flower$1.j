.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/getView()V
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;

.method <init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
ifnonnull L0
return
L0:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataUid J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 2
.limit stack 4
.end method
