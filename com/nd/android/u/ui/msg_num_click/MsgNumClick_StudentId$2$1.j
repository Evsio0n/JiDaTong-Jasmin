.bytecode 50.0
.class synchronized com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2$1
.super java/lang/Object
.implements com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack
.enclosing method com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2$1

.field final synthetic 'this$1' Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2;

.method <init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2;)V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2$1/this$1 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public findFriend(Lcom/product/android/commonInterface/contact/OapUserSimple;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2$1/this$1 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/context Landroid/content/Context;
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 2
.limit stack 4
.end method
