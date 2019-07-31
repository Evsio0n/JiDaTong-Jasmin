.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager
.super com/common/android/utils/audio/AudioRecordOperationManager
.inner class private RecordOperationManager inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager outer com/nd/android/u/ui/widge/chatfragment/BottomFragment

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;

.method public <init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Landroid/content/Context;Landroid/widget/Button;Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
aload 2
aload 3
aload 4
invokespecial com/common/android/utils/audio/AudioRecordOperationManager/<init>(Landroid/content/Context;Landroid/widget/Button;Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;)V
return
.limit locals 5
.limit stack 4
.end method

.method protected recoading()V
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/getInstance()Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/stopPlayAndSetCureentNull()V
return
.limit locals 1
.limit stack 1
.end method

.method protected sendAudioMsg(Ljava/lang/String;I)V
iconst_3
aconst_null
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
iload 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$1200(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
return
.limit locals 3
.limit stack 5
.end method
