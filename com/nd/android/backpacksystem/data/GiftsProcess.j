.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/data/GiftsProcess
.super com/nd/android/backpacksystem/data/BaseProcess
.inner class private OpenGifts inner com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts outer com/nd/android/backpacksystem/data/GiftsProcess

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/data/BaseProcess/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doGive(Landroid/app/Activity;J)V
aload 0
aload 1
lload 2
invokespecial com/nd/android/backpacksystem/data/BaseProcess/doGive(Landroid/app/Activity;J)V
return
.limit locals 4
.limit stack 4
.end method

.method public doUse(Landroid/app/Activity;Ljava/lang/Object;Lcom/nd/android/backpacksystem/listener/DialogCallBack;)V
aload 1
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 1
getstatic com/nd/android/backpacksystem/R$string/network_error_to_set_network I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
L1:
return
L0:
aload 2
instanceof com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams
ifeq L1
aload 2
checkcast com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams
astore 2
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/isObjectValid()Z
ifeq L1
new com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts
dup
aload 0
aload 1
aload 3
invokespecial com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/<init>(Lcom/nd/android/backpacksystem/data/GiftsProcess;Landroid/app/Activity;Lcom/nd/android/backpacksystem/listener/DialogCallBack;)V
iconst_1
anewarray com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams
dup
iconst_0
aload 2
aastore
invokevirtual com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 4
.limit stack 5
.end method
