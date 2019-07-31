.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.method <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L1
L2
L3
L2
default : L3
L3:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1102(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)I
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_1
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1202(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1502(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
new java/lang/Thread
dup
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread
dup
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aconst_null
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1702(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Ljava/lang/Thread;)Ljava/lang/Thread;
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Ljava/lang/Thread;
invokevirtual java/lang/Thread/start()V
goto L3
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1202(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
ifeq L4
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1900(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1502(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
pop
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1102(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)I
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
getstatic com/nd/android/backpacksystem/R$string/long_click_to_start_record I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/setProgress(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
iconst_4
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/setVisibility(I)V
goto L3
.limit locals 3
.limit stack 7
.end method
