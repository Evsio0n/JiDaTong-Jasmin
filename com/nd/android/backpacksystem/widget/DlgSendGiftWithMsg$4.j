.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4
.super android/os/Handler
.enclosing method com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.method <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/setProgress(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
iconst_2
if_icmplt L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$800(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)V
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
bipush 120
if_icmplt L1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
bipush 120
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1102(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)I
pop
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/recording_time I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
bipush 120
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
bipush 120
if_icmplt L2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
return
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
iconst_3
irem
tableswitch 0
L3
L4
L5
default : L6
L6:
return
L3:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
return
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2800(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2800(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$2900(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
return
L5:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 6
.end method
