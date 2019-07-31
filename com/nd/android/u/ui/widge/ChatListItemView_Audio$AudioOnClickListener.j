.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private AudioOnClickListener inner com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener outer com/nd/android/u/ui/widge/ChatListItemView_Audio

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;

.method private <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;Lcom/nd/android/u/ui/widge/ChatListItemView_Audio$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
tableswitch 0
L0
L1
L0
L1
L0
L1
L1
L0
L2
default : L1
L1:
return
L0:
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/getInstance()Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mContext Landroid/content/Context;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/startQuenePlay(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isRead()Z 0
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_1
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
return
L2:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/doDownload()Z 0
pop
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio$AudioOnClickListener/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Audio;
getfield com/nd/android/u/ui/widge/ChatListItemView_Audio/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/net_warn_no_network I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 3
.end method
