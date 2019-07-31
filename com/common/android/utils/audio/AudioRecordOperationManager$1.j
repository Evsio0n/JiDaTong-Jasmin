.bytecode 50.0
.class synchronized com/common/android/utils/audio/AudioRecordOperationManager$1
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/common/android/utils/audio/AudioRecordOperationManager
.inner class inner com/common/android/utils/audio/AudioRecordOperationManager$1
.inner class inner com/common/android/utils/audio/AudioRecordOperationManager$1$1

.field private 'bool' Z

.field private 'isStart' Z

.field final synthetic 'this$0' Lcom/common/android/utils/audio/AudioRecordOperationManager;

.method <init>(Lcom/common/android/utils/audio/AudioRecordOperationManager;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/common/android/utils/audio/AudioRecordOperationManager$1/isStart Z
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
L1
default : L3
L3:
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokevirtual com/common/android/utils/audio/AudioRecordOperationManager/recoading()V
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$000(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
ifeq L4
getstatic com/nd/android/u/allcommon/R$string/chat_error_frequence_record I
invokestatic com/common/android/utils/ToastUtils/display(I)V
iconst_0
ireturn
L4:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
iconst_1
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$002(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
pop
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$100(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Landroid/widget/Button;
new com/common/android/utils/audio/AudioRecordOperationManager$1$1
dup
aload 0
invokespecial com/common/android/utils/audio/AudioRecordOperationManager$1$1/<init>(Lcom/common/android/utils/audio/AudioRecordOperationManager$1;)V
ldc2_w 2000L
invokevirtual android/widget/Button/postDelayed(Ljava/lang/Runnable;J)Z
pop
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
iconst_0
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$202(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
pop
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
iconst_0
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$302(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
pop
invokestatic com/common/android/utils/SdCardUtils/isSdCardExist()Z
ifne L5
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$400(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/audio_no_sdcard I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
iconst_0
putfield com/common/android/utils/audio/AudioRecordOperationManager$1/isStart Z
iconst_0
ireturn
L5:
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$500(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/showMenuWindow()V 0
aload 0
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$500(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/audioStart()Z 0
putfield com/common/android/utils/audio/AudioRecordOperationManager$1/bool Z
ldc "HYK"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "mSelectedResId = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$600(Lcom/common/android/utils/audio/AudioRecordOperationManager;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$600(Lcom/common/android/utils/audio/AudioRecordOperationManager;)I
ifle L6
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$100(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Landroid/widget/Button;
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$600(Lcom/common/android/utils/audio/AudioRecordOperationManager;)I
invokevirtual android/widget/Button/setBackgroundResource(I)V
L6:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$100(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$string/audio_finish I
invokevirtual android/widget/Button/setText(I)V
aload 0
iconst_1
putfield com/common/android/utils/audio/AudioRecordOperationManager$1/isStart Z
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
iconst_1
invokeinterface android/view/ViewParent/requestDisallowInterceptTouchEvent(Z)V 1
iconst_0
ireturn
L2:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/isStart Z
ifeq L3
aload 2
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 3
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$500(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/getModle()I 0
istore 4
iload 3
bipush -100
if_icmpge L7
iload 4
ifeq L8
L7:
iload 3
bipush -100
if_icmple L3
iload 4
iconst_1
if_icmpne L3
L8:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$500(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/switchImg()V 0
iconst_0
ireturn
L1:
aload 2
invokevirtual android/view/MotionEvent/getY()F
f2i
bipush -100
if_icmpge L9
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
iconst_1
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$302(Lcom/common/android/utils/audio/AudioRecordOperationManager;Z)Z
pop
L9:
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/isStart Z
ifeq L3
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$200(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
ifne L3
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/bool Z
ifeq L3
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$200(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Z
ifne L3
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$500(Lcom/common/android/utils/audio/AudioRecordOperationManager;)Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;
invokeinterface com/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation/audioFinish()V 0
aload 0
getfield com/common/android/utils/audio/AudioRecordOperationManager$1/this$0 Lcom/common/android/utils/audio/AudioRecordOperationManager;
invokestatic com/common/android/utils/audio/AudioRecordOperationManager/access$700(Lcom/common/android/utils/audio/AudioRecordOperationManager;)V
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method
