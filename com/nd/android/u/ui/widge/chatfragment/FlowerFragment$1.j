.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/chatfragment/FlowerFragment/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/put(Ljava/lang/Object;Ljava/lang/String;)V
new com/common/android/utils/download/ProgressDownloadManager
dup
invokespecial com/common/android/utils/download/ProgressDownloadManager/<init>()V
astore 1
aload 1
ldc "CLOUDID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokevirtual com/common/android/utils/download/ProgressDownloadManager/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/getFile()Ljava/io/File;
invokevirtual com/common/android/utils/download/ProgressDownloadManager/startDownload(Ljava/lang/String;Ljava/io/File;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/getFile()Ljava/io/File;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
L0:
return
.limit locals 2
.limit stack 3
.end method
