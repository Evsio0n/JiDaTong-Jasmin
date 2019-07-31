.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/NewTalkPopWindow$1
.super java/lang/Object
.implements com/common/android/utils/audio/AudioRecordManager$onAudioRecordListener
.enclosing method com/nd/android/u/ui/widge/NewTalkPopWindow
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1$1
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/NewTalkPopWindow;

.method <init>(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRecordFail(ILjava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$700(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$800(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$900(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Lcom/nd/android/u/ui/widge/RotateImageView;
invokevirtual com/nd/android/u/ui/widge/RotateImageView/stopRotate()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1000(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
iload 1
tableswitch -7
L1
L2
L3
L2
L4
L5
L6
default : L2
L2:
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1100(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
getstatic com/nd/android/u/chat/R$string/error_on_recording I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
getstatic com/nd/android/u/chat/R$string/recording_too_short I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L5:
getstatic com/nd/android/u/chat/R$string/recording_error_stop I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L4:
getstatic com/nd/android/u/chat/R$string/recording_error_start I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L1:
getstatic com/nd/android/u/chat/R$string/recording_error_recording I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L3:
getstatic com/nd/android/u/chat/R$string/recording_error_empty_file I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onRecordStart()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$600(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onRecordSuccess(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$000(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$100(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
iconst_m1
ldc "\u786e\u5b9a\u53d1\u9001"
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$200(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
getstatic com/nd/android/u/chat/R$string/record_interrupt I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$300(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
getstatic com/nd/android/u/chat/R$string/send I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$400(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
getstatic com/nd/android/u/chat/R$string/cancel I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/u/ui/widge/NewTalkPopWindow$1$1
dup
aload 0
aload 1
lload 2
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow$1$1/<init>(Lcom/nd/android/u/ui/widge/NewTalkPopWindow$1;Ljava/lang/String;J)V
new com/nd/android/u/ui/widge/NewTalkPopWindow$1$2
dup
aload 0
aload 1
lload 2
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow$1$2/<init>(Lcom/nd/android/u/ui/widge/NewTalkPopWindow$1;Ljava/lang/String;J)V
invokestatic com/nd/android/u/chatUiUtils/DialogFactory/getAlertDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog;
invokevirtual com/nd/android/u/ui/dialog/CommonDialog/show()V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
aload 1
lload 2
iconst_0
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$500(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;Ljava/lang/String;JI)V
return
.limit locals 4
.limit stack 13
.end method

.method public onVolumeChanged(IJ)V
aload 0
iload 1
invokevirtual com/nd/android/u/ui/widge/NewTalkPopWindow$1/setvolume(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
lload 2
invokevirtual com/nd/android/u/ui/widge/NewTalkPopWindow/setRecordedTime(J)V
return
.limit locals 4
.limit stack 3
.end method

.method public setvolume(I)V
iload 1
i2d
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1200(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
dcmpg
ifge L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
iload 1
i2d
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1202(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;D)D
pop2
L0:
iload 1
i2d
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1300(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
dcmpl
ifle L1
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
iload 1
i2d
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1302(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;D)D
pop2
L1:
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1300(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1200(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
dsub
dconst_0
dcmpl
ifle L2
iload 1
i2d
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1200(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
dsub
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1300(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1200(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
dsub
ddiv
ldc2_w 6.0D
dmul
d2i
istore 1
L3:
iload 1
iconst_2
if_icmpgt L4
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1400(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1500(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1600(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L5:
return
L2:
bipush 6
istore 1
goto L3
L4:
iload 1
iconst_2
if_icmple L6
iload 1
iconst_5
if_icmpge L6
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1400(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1500(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1600(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L6:
iload 1
iconst_5
if_icmplt L5
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1400(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1500(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow$1/this$0 Lcom/nd/android/u/ui/widge/NewTalkPopWindow;
invokestatic com/nd/android/u/ui/widge/NewTalkPopWindow/access$1600(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 6
.end method
