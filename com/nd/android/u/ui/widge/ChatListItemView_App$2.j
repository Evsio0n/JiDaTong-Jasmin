.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_App$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_App/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_App$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_App;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_App$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_App/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_App/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_App/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Lcom/nd/android/u/bean4xy/DisplayMessage_App;
getfield com/nd/android/u/bean4xy/DisplayMessage_App/bussinessId Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_App$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_App;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_App/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_App;)Landroid/content/Context;
iconst_0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V 5
return
.limit locals 2
.limit stack 6
.end method
