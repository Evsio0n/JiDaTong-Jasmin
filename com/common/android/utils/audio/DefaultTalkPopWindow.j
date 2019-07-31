.bytecode 50.0
.class public synchronized com/common/android/utils/audio/DefaultTalkPopWindow
.super com/common/android/utils/audio/TalkPopWindow
.inner class inner com/common/android/utils/audio/DefaultTalkPopWindow$1

.field public static final 'MAX_RECORD_TIME' I = 120


.field private static final 'TOTAL' Ljava/lang/String; = "/120\""

.field private 'mCancelTextView' Landroid/widget/TextView;

.field private 'mImageView' Landroid/widget/ImageView;

.field private 'mRecoredTime' J

.field private 'mStatuBarHeight' I

.field private 'recordListener' Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;

.field private 'tvRemain' Landroid/widget/TextView;

.field private 'tvTimer' Landroid/widget/TextView;

.field private 'volumeView' Lcom/common/android/utils/audio/VolumeView;

.method public <init>(Landroid/app/Activity;Landroid/view/View;)V
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/audio/TalkPopWindow/<init>(Landroid/app/Activity;Landroid/view/View;)V
aload 0
new com/common/android/utils/audio/DefaultTalkPopWindow$1
dup
aload 0
invokespecial com/common/android/utils/audio/DefaultTalkPopWindow$1/<init>(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)V
putfield com/common/android/utils/audio/DefaultTalkPopWindow/recordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/recordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
invokevirtual com/common/android/utils/audio/AudioRecordManager/setOnAudioRecordListener(Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)J
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mRecoredTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)Landroid/widget/TextView;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/tvRemain Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/utils/audio/DefaultTalkPopWindow;)Lcom/common/android/utils/audio/VolumeView;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/volumeView Lcom/common/android/utils/audio/VolumeView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initImg()V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/tvTimer Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mCancelTextView Landroid/widget/TextView;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/chat_cancel_audio_first_step I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mCancelTextView Landroid/widget/TextView;
getstatic com/nd/android/u/allcommon/R$drawable/chat_audio_hint_tv_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mImageView Landroid/widget/ImageView;
getstatic com/nd/android/u/allcommon/R$drawable/voice_rcd_hint I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/volumeView Lcom/common/android/utils/audio/VolumeView;
iconst_0
invokevirtual com/common/android/utils/audio/VolumeView/setVisibility(I)V
aload 0
iconst_0
putfield com/common/android/utils/audio/DefaultTalkPopWindow/modle I
return
.limit locals 1
.limit stack 3
.end method

.method public destroy()V
return
.limit locals 1
.limit stack 0
.end method

.method public hideMenuWindow()V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public initView()V
aload 0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/audio_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/common/android/utils/audio/DefaultTalkPopWindow/mMenuView Landroid/view/View;
aload 0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/volumeView I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/audio/VolumeView
putfield com/common/android/utils/audio/DefaultTalkPopWindow/volumeView Lcom/common/android/utils/audio/VolumeView;
aload 0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/audio_item_cancel_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/common/android/utils/audio/DefaultTalkPopWindow/mCancelTextView Landroid/widget/TextView;
aload 0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/audio_item_rcd I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/utils/audio/DefaultTalkPopWindow/mImageView Landroid/widget/ImageView;
aload 0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/tvTimer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/common/android/utils/audio/DefaultTalkPopWindow/tvTimer Landroid/widget/TextView;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/tvTimer Landroid/widget/TextView;
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mMenuView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/tvRemain I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/common/android/utils/audio/DefaultTalkPopWindow/tvRemain Landroid/widget/TextView;
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
putfield com/common/android/utils/audio/DefaultTalkPopWindow/mRecoredTime J
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
getfield com/common/android/utils/audio/DefaultTalkPopWindow/tvTimer Landroid/widget/TextView;
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
getfield com/common/android/utils/audio/DefaultTalkPopWindow/tvRemain Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mContext Landroid/app/Activity;
getstatic com/nd/android/u/allcommon/R$string/chat_audio_remain I
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
getfield com/common/android/utils/audio/DefaultTalkPopWindow/tvRemain Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
lload 4
ldc2_w 120L
lcmp
iflt L2
aload 0
ldc2_w 120L
putfield com/common/android/utils/audio/DefaultTalkPopWindow/mRecoredTime J
L2:
return
.limit locals 7
.limit stack 6
.end method

.method public showMenuWindow()V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
invokespecial com/common/android/utils/audio/DefaultTalkPopWindow/initImg()V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mStatuBarHeight I
istore 1
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mAnchorView Landroid/view/View;
bipush 48
iconst_0
iload 1
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mPopupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method public switchImg()V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/modle I
ifne L0
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mCancelTextView Landroid/widget/TextView;
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/chat_cancel_audio_second_step I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/tvTimer Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mCancelTextView Landroid/widget/TextView;
getstatic com/nd/android/u/allcommon/R$drawable/chat_audio_item_canel_tv_bg I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/mImageView Landroid/widget/ImageView;
getstatic com/nd/android/u/allcommon/R$drawable/chat_audio_item_cancel_imgv I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/common/android/utils/audio/DefaultTalkPopWindow/volumeView Lcom/common/android/utils/audio/VolumeView;
bipush 8
invokevirtual com/common/android/utils/audio/VolumeView/setVisibility(I)V
aload 0
iconst_1
putfield com/common/android/utils/audio/DefaultTalkPopWindow/modle I
return
L0:
aload 0
invokespecial com/common/android/utils/audio/DefaultTalkPopWindow/initImg()V
return
.limit locals 1
.limit stack 3
.end method
