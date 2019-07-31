.bytecode 50.0
.class synchronized com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2
.super java/lang/Object
.implements com/common/android/utils/audio/AudioPlayer$onPlayFinishListener
.enclosing method com/nd/android/u/chatUiUtils/AudioQuenePlayManager
.inner class inner com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2

.field final synthetic 'this$0' Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;

.method <init>(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onFinish()V
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnonnull L0
return
L0:
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
iconst_0
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$202(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Z)Z
pop
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setCurrent(I)V 1
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$400(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Z
ifne L1
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 16
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L2
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aconst_null
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$102(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
pop
return
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
bipush 16
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aconst_null
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$102(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
pop
return
L2:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$500(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Ljava/util/List;
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$100(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
istore 1
iload 1
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$500(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L3
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aconst_null
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$102(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
pop
return
L3:
iload 1
iconst_1
iadd
istore 1
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$500(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
L4:
iload 1
iload 2
if_icmpge L5
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$500(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 3
aload 3
ifnull L6
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isRead()Z 0
ifne L6
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifne L6
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 3
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$600(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L6
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 3
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$700(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;)Landroid/content/Context;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/startQuenePlay(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Landroid/content/Context;)V
aload 3
iconst_1
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
return
L6:
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
aload 0
getfield com/nd/android/u/chatUiUtils/AudioQuenePlayManager$2/this$0 Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aconst_null
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/access$102(Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
pop
return
.limit locals 4
.limit stack 3
.end method
