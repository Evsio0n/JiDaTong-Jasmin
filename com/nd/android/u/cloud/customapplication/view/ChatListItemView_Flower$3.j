.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;

.field final synthetic 'val$uid' J

.method <init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;J)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
aload 0
lload 2
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3/val$uid J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$3/val$uid J
aconst_null
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/showSendFlowerDialog(Landroid/content/Context;JLcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V 4
return
.limit locals 2
.limit stack 5
.end method
