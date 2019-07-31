.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5
.super java/lang/Object
.implements com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener
.enclosing method com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.method <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRecordFail(ILjava/lang/String;)V
iload 1
tableswitch -7
L0
L1
L2
L1
L3
L4
L5
default : L1
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/error_on_recording I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
getstatic com/nd/android/backpacksystem/R$string/recording_too_short I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L4:
getstatic com/nd/android/backpacksystem/R$string/recording_error_stop I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L3:
getstatic com/nd/android/backpacksystem/R$string/recording_error_start I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
getstatic com/nd/android/backpacksystem/R$string/recording_error_recording I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
getstatic com/nd/android/backpacksystem/R$string/recording_error_empty_file I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onRecordStart()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic java/lang/System/currentTimeMillis()J
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3702(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;J)J
pop2
return
.limit locals 1
.limit stack 3
.end method

.method public onRecordSuccess(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$1502(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Ljava/lang/String;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3802(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
lload 2
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$3900(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;J)J
lstore 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$4000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
lload 2
l2i
invokestatic com/nd/android/backpacksystem/helper/Utils/recordTimeToString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$4100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$4200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getDrawable()Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/AnimationDrawable
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$602(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/stop()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/graphics/drawable/AnimationDrawable;
iconst_0
invokevirtual android/graphics/drawable/AnimationDrawable/selectDrawable(I)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method public onVolumeChanged(IJ)V
return
.limit locals 4
.limit stack 0
.end method
