.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_Files$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_Files
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Files$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_Files;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
iconst_m1
if_icmpeq L1
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
tableswitch -1
L3
L4
L4
L4
L4
L4
L5
L5
L4
L3
default : L5
L5:
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/doDownload()Z 0
pop
return
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
ifnull L6
aload 1
invokevirtual java/io/File/exists()Z
ifne L7
L6:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;)Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_open_fail_delete I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L7:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Files$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Files;
aload 1
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Files/access$300(Lcom/nd/android/u/ui/widge/ChatListItemView_Files;Ljava/io/File;)V
return
.limit locals 2
.limit stack 3
.end method
