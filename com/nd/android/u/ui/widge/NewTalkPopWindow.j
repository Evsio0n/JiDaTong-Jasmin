.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/NewTalkPopWindow
.super com/common/android/utils/audio/TalkPopWindow
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1$1
.inner class inner com/nd/android/u/ui/widge/NewTalkPopWindow$1$2
.inner class MyPhoneStateListener inner com/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener outer com/nd/android/u/ui/widge/NewTalkPopWindow

.field private 'listener' Lcom/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener;

.field private 'mCancelTextView' Landroid/widget/TextView;

.field private 'mImageView' Landroid/widget/ImageView;

.field private 'mMaxVolume' D

.field private 'mMinVolume' D

.field private 'mPhoneInterrupt' Z

.field private 'mRecoredTime' J

.field private 'mWaitingLayout' Lcom/nd/android/u/ui/widge/RotateImageView;

.field private 'mWaitingLayoutSound' Landroid/view/View;

.field private 'recordListener' Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;

.field private 'soundView1' Landroid/view/View;

.field private 'soundView2' Landroid/view/View;

.field private 'soundView3' Landroid/view/View;

.field private 'tpm' Landroid/telephony/TelephonyManager;

.field private 'tvRemain' Landroid/widget/TextView;

.field private 'tvTimer' Landroid/widget/TextView;

.method public <init>(Landroid/app/Activity;Landroid/view/View;)V
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/audio/TalkPopWindow/<init>(Landroid/app/Activity;Landroid/view/View;)V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPhoneInterrupt Z
aload 0
ldc2_w 10000.0D
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMaxVolume D
aload 0
dconst_0
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMinVolume D
aload 0
new com/nd/android/u/ui/widge/NewTalkPopWindow$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow$1/<init>(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)V
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/recordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/recordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
invokevirtual com/common/android/utils/audio/AudioRecordManager/setOnAudioRecordListener(Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;)V
aload 0
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow/initPhoneState()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Z
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPhoneInterrupt Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;Z)Z
aload 0
iload 1
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPhoneInterrupt Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMinVolume D
dreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1202(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;D)D
aload 0
dload 1
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMinVolume D
dload 1
dreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1300(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)D
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMaxVolume D
dreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1302(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;D)D
aload 0
dload 1
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMaxVolume D
dload 1
dreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1400(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView2 Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView3 Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView1 Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;Ljava/lang/String;JI)V
aload 0
aload 1
lload 2
iload 4
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow/processSuccess(Ljava/lang/String;JI)V
return
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvRemain Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)Lcom/nd/android/u/ui/widge/RotateImageView;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initImg()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvTimer Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mCancelTextView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_cancel_audio_first_step I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mCancelTextView Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/chat_audio_hint_tv_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mImageView Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/mic I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayoutSound Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
iconst_0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
invokevirtual com/nd/android/u/ui/widge/RotateImageView/startRotate()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView2 Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView3 Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView1 Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/modle I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPhoneInterrupt Z
return
.limit locals 1
.limit stack 3
.end method

.method private initPhoneState()V
aload 0
invokevirtual com/nd/android/u/ui/widge/NewTalkPopWindow/destroy()V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
ldc "phone"
invokevirtual android/app/Activity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/tpm Landroid/telephony/TelephonyManager;
aload 0
new com/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener
dup
aload 0
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener/<init>(Lcom/nd/android/u/ui/widge/NewTalkPopWindow;)V
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/listener Lcom/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tpm Landroid/telephony/TelephonyManager;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/listener Lcom/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener;
bipush 32
invokevirtual android/telephony/TelephonyManager/listen(Landroid/telephony/PhoneStateListener;I)V
return
.limit locals 1
.limit stack 4
.end method

.method private processSuccess(Ljava/lang/String;JI)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mParentHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mParentHandler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 5
aload 5
iload 4
putfield android/os/Message/what I
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "fileName"
aload 1
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
ldc "audiobug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onRecordSuccess:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mRecoredTime J
lconst_0
lcmp
ifgt L1
aload 6
ldc "duration"
lload 2
invokestatic com/common/android/utils/FormatUtils/millsec2Sec(J)I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L2:
aload 5
aload 6
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mParentHandler Landroid/os/Handler;
aload 5
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L0:
return
L1:
aload 6
ldc "duration"
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mRecoredTime J
l2i
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
goto L2
.limit locals 7
.limit stack 4
.end method

.method public destroy()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tpm Landroid/telephony/TelephonyManager;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tpm Landroid/telephony/TelephonyManager;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/listener Lcom/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener;
iconst_0
invokevirtual android/telephony/TelephonyManager/listen(Landroid/telephony/PhoneStateListener;I)V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/listener Lcom/nd/android/u/ui/widge/NewTalkPopWindow$MyPhoneStateListener;
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/tpm Landroid/telephony/TelephonyManager;
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public getModle()I
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/modle I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hideMenuWindow()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
invokevirtual com/nd/android/u/ui/widge/RotateImageView/stopRotate()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public initView()V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/audio_item_new I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/audio_item_cancel_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mCancelTextView Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/audio_item_rcd I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mImageView Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tvTimer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvTimer Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvTimer Landroid/widget/TextView;
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tvRemain I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvRemain Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/audio_layout_waiting I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/RotateImageView
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/audio_layout_waiting_sound I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayoutSound Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/audio_layout_waiting_sound I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView1 Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/audio_layout_waiting_sound2 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView2 Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/audio_layout_waiting_sound3 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/soundView3 Landroid/view/View;
return
.limit locals 1
.limit stack 4
.end method

.method public setRecordedTime(J)V
lload 1
lstore 4
lload 1
ldc2_w 120L
lcmp
ifle L0
ldc2_w 120L
lstore 4
L0:
aload 0
lload 4
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mRecoredTime J
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/120\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvTimer Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
ldc2_w 120L
lload 4
lsub
l2i
istore 3
iload 3
bipush 10
if_icmpgt L1
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvRemain Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
getstatic com/nd/android/u/chat/R$string/chat_audio_remain I
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/app/Activity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 6
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvRemain Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 3
iconst_2
irem
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvRemain Landroid/widget/TextView;
ldc "#ccff3000"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/widget/TextView/setBackgroundColor(I)V
L1:
lload 4
ldc2_w 120L
lcmp
iflt L3
aload 0
ldc2_w 120L
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/mRecoredTime J
L3:
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvRemain Landroid/widget/TextView;
ldc "#6CB304"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/widget/TextView/setBackgroundColor(I)V
goto L1
.limit locals 7
.limit stack 6
.end method

.method public showMenuWindow()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
invokevirtual com/nd/android/u/ui/widge/RotateImageView/stopRotate()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow/initImg()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mStatuBarHeight I
istore 1
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mAnchorView Landroid/view/View;
bipush 48
iconst_0
iload 1
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method public switchImg()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/modle I
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mCancelTextView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_cancel_audio_second_step I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/tvTimer Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mCancelTextView Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/chat_audio_item_canel_tv_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mImageView Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_audio_item_cancel I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
bipush 8
invokevirtual com/nd/android/u/ui/widge/RotateImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayout Lcom/nd/android/u/ui/widge/RotateImageView;
invokevirtual com/nd/android/u/ui/widge/RotateImageView/stopRotate()V
aload 0
getfield com/nd/android/u/ui/widge/NewTalkPopWindow/mWaitingLayoutSound Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/NewTalkPopWindow/modle I
return
L0:
aload 0
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow/initImg()V
return
.limit locals 1
.limit stack 3
.end method
