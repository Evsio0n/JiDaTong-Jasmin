.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;

.method <init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$4/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 20
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$4/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower;
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_3
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 2
.limit stack 3
.end method
