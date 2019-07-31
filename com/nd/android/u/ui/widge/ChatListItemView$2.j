.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
lookupswitch
2 : L0
4 : L0
8 : L1
default : L2
L2:
return
L0:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/resend()V 0
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/doDownload()Z 0
pop
return
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method
