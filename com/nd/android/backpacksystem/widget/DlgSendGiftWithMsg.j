.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.super android/app/Dialog
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$2
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$7
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$8
.inner class private MyTimeThread inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$MyTimeThread outer com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class private static SendGift inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift outer com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$1
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2

.field public static final 'SEND_FINISH_SELECT_GIFT_PERSON_ACTIVITY' Ljava/lang/String; = "send_finish_select_gift_person_activity"

.field private final 'LEFT_BRACKET' Ljava/lang/String;

.field private final 'MAX_INPUT_WORDS_LENGTH' I

.field private final 'RECORD_EXT' Ljava/lang/String;

.field private final 'SPRIT' Ljava/lang/String;

.field final 'handler' Landroid/os/Handler;

.field private 'mActivity' Landroid/app/Activity;

.field private 'mAnimationRecord' Landroid/graphics/drawable/AnimationDrawable;

.field private 'mAudioRecordManager' Lcom/common/android/utils/audio/AudioRecordManager;

.field private 'mBtnDeleteRecord' Landroid/widget/Button;

.field private 'mBtnLongClickRecord' Landroid/widget/Button;

.field private 'mCsbProgress' Lcom/nd/android/backpacksystem/widget/CircularSeekBar;

.field private 'mCurTime' J

.field private 'mDialogCallBack' Lcom/nd/android/backpacksystem/listener/DialogCallBack;

.field private 'mEtBlessing' Lcom/common/android/ui/widget/SpenEditText;

.field private 'mEtSendCount' Landroid/widget/EditText;

.field private 'mInputMethodManager' Landroid/view/inputmethod/InputMethodManager;

.field private 'mIsFinishing' Z

.field private 'mIsPlayRecording' Z

.field private 'mIsRecording' Z

.field private 'mIsTouching' Z

.field private 'mIvLeftRipple1' Landroid/widget/ImageView;

.field private 'mIvLeftRipple2' Landroid/widget/ImageView;

.field private 'mIvLeftRipple3' Landroid/widget/ImageView;

.field private 'mIvRecordAnimat' Landroid/widget/ImageView;

.field private 'mIvRightRipple1' Landroid/widget/ImageView;

.field private 'mIvRightRipple2' Landroid/widget/ImageView;

.field private 'mIvRightRipple3' Landroid/widget/ImageView;

.field private 'mLeftRippleAmtSet1' Landroid/view/animation/AnimationSet;

.field private 'mLeftRippleAmtSet2' Landroid/view/animation/AnimationSet;

.field private 'mLeftRippleAmtSet3' Landroid/view/animation/AnimationSet;

.field private 'mLlRecordMsg' Landroid/widget/LinearLayout;

.field private final 'mMaxTime' I

.field private 'mMsgTextWatcher' Landroid/text/TextWatcher;

.field private 'mMyItems' Lcom/nd/android/backpacksystem/data/MyItems;

.field private 'mOldRecordPath' Ljava/lang/String;

.field private 'mOnClickListene' Landroid/view/View$OnClickListener;

.field private 'mOnPlayFinishListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;

.field private 'mOnPlayStopListener' Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;

.field private 'mRecordListener' Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;

.field private 'mRecordPath' Ljava/lang/String;

.field private 'mRecordTime' I

.field private 'mRightRippleAmtSet1' Landroid/view/animation/AnimationSet;

.field private 'mRightRippleAmtSet2' Landroid/view/animation/AnimationSet;

.field private 'mRightRippleAmtSet3' Landroid/view/animation/AnimationSet;

.field private 'mRlRecordSmiley' Landroid/widget/RelativeLayout;

.field private 'mSendUserId' J

.field private 'mSmileyView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'mStarTime' J

.field private 'mThread' Ljava/lang/Thread;

.field private 'mTouchListener' Landroid/view/View$OnTouchListener;

.field private 'mTvInputWordsLength' Landroid/widget/TextView;

.field private 'mTvRecordLength' Landroid/widget/TextView;

.field private 'mTvRecordingTime' Landroid/widget/TextView;

.field private 'mTvTouchToRecord' Landroid/widget/TextView;

.field private 'mWindow' Landroid/view/Window;

.method public <init>(Landroid/app/Activity;ILcom/nd/android/backpacksystem/listener/DialogCallBack;)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
ldc ".amr"
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/RECORD_EXT Ljava/lang/String;
aload 0
sipush 140
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/MAX_INPUT_WORDS_LENGTH I
aload 0
ldc "("
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/LEFT_BRACKET Ljava/lang/String;
aload 0
ldc "/"
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/SPRIT Ljava/lang/String;
aload 0
bipush 120
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mMaxTime I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordTime I
aload 0
lconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mStarTime J
aload 0
lconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mCurTime J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsTouching Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsRecording Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsFinishing Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsPlayRecording Z
aload 0
ldc ""
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOldRecordPath Ljava/lang/String;
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$2/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnClickListene Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$3/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTouchListener Landroid/view/View$OnTouchListener;
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$4/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/handler Landroid/os/Handler;
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$5/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mMsgTextWatcher Landroid/text/TextWatcher;
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$7
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$7/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnPlayFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
aload 0
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$8
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$8/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnPlayStopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
aload 0
aload 3
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
ldc "input_method"
invokevirtual android/app/Activity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 0
getstatic com/nd/android/backpacksystem/R$layout/dlg_send_gift_with_msg I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setContentView(I)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initEvent()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initAnimation()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/hidBottom()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsPlayRecording Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsFinishing Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsPlayRecording Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)I
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordTime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)I
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordTime I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsTouching Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1202(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsTouching Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/showRipple()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mCsbProgress Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsRecording Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1502(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)Z
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsRecording Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Z
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initRecord()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Ljava/lang/Thread;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mThread Ljava/lang/Thread;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1702(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Ljava/lang/Thread;)Ljava/lang/Thread;
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mThread Ljava/lang/Thread;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1900(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/finishRecord()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/clearAllAnimation()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/hideRipple()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvTouchToRecord Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvRecordingTime Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple1 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet1 Landroid/view/animation/AnimationSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple1 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet1 Landroid/view/animation/AnimationSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2800(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple2 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2900(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet2 Landroid/view/animation/AnimationSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple2 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet2 Landroid/view/animation/AnimationSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple3 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet3 Landroid/view/animation/AnimationSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple3 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/view/animation/AnimationSet;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet3 Landroid/view/animation/AnimationSet;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)J
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mCurTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$3602(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;J)J
aload 0
lload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mCurTime J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$3700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)J
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mStarTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$3702(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;J)J
aload 0
lload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mStarTime J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$3802(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOldRecordPath Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$3900(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;J)J
aload 0
lload 1
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getRealTime(J)J
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnPlayFinishListener Lcom/common/android/utils/audio/AudioPlayer$onPlayFinishListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvRecordLength Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4100(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLlRecordMsg Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4200(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mBtnDeleteRecord Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)Ljava/lang/String;
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getWordsLengthString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$4400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvInputWordsLength Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/animationReset()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnPlayStopListener Lcom/common/android/utils/audio/AudioPlayer$onPlayStopListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/graphics/drawable/AnimationDrawable;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRecordAnimat Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)V
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/deleteRecordFile(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Z)V
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/showBottom(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private animationReset()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/isRunning()Z
ifeq L0
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsPlayRecording Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/stop()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAnimationRecord Landroid/graphics/drawable/AnimationDrawable;
iconst_0
invokevirtual android/graphics/drawable/AnimationDrawable/selectDrawable(I)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private clearAllAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple1 Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple2 Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple3 Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple1 Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple2 Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple3 Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
return
.limit locals 1
.limit stack 1
.end method

.method private deleteRecordFile(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
astore 2
L1:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOldRecordPath Ljava/lang/String;
astore 2
goto L1
L2:
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
aload 2
invokevirtual java/io/File/exists()Z
ifeq L3
aload 2
invokevirtual java/io/File/delete()Z
pop
L3:
iload 1
ifeq L4
aload 0
ldc ""
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
L5:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLlRecordMsg Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mBtnDeleteRecord Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
L4:
aload 0
ldc ""
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOldRecordPath Ljava/lang/String;
goto L5
.limit locals 3
.limit stack 3
.end method

.method private finishRecord()V
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsFinishing Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
invokevirtual com/common/android/utils/audio/AudioRecordManager/audioFinish()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIsFinishing Z
return
.limit locals 1
.limit stack 2
.end method

.method private getAlphaAnimation()Landroid/view/animation/Animation;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$anim/record_ripple_alpha I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
areturn
.limit locals 1
.limit stack 2
.end method

.method private getLeftTranslateAnimation()Landroid/view/animation/Animation;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$anim/record_ripple_left_translate I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
areturn
.limit locals 1
.limit stack 2
.end method

.method private getRealTime(J)J
lload 1
lstore 3
lload 1
ldc2_w 120000L
lcmp
ifle L0
ldc2_w 120000L
lstore 3
L0:
lload 3
lreturn
.limit locals 5
.limit stack 4
.end method

.method private getRightTranslateAnimation()Landroid/view/animation/Animation;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$anim/record_ripple_right_translate I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
areturn
.limit locals 1
.limit stack 2
.end method

.method private getScaleAnimation()Landroid/view/animation/Animation;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$anim/record_ripple_scale I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
areturn
.limit locals 1
.limit stack 2
.end method

.method private getWordsLengthString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/send_gift_msg_words_length I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method private hidBottom()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mWindow Landroid/view/Window;
bipush 16
invokevirtual android/view/Window/setGravity(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRlRecordSmiley Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private hideRipple()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple1 Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple2 Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple3 Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple1 Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple2 Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple3 Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private initAnimation()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet1 Landroid/view/animation/AnimationSet;
ifnonnull L0
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet1 Landroid/view/animation/AnimationSet;
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet2 Landroid/view/animation/AnimationSet;
ifnonnull L1
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet2 Landroid/view/animation/AnimationSet;
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet3 Landroid/view/animation/AnimationSet;
ifnonnull L2
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet3 Landroid/view/animation/AnimationSet;
L2:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet1 Landroid/view/animation/AnimationSet;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initLeftAnimation(Landroid/view/animation/AnimationSet;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet2 Landroid/view/animation/AnimationSet;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initLeftAnimation(Landroid/view/animation/AnimationSet;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLeftRippleAmtSet3 Landroid/view/animation/AnimationSet;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initLeftAnimation(Landroid/view/animation/AnimationSet;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet1 Landroid/view/animation/AnimationSet;
ifnonnull L3
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet1 Landroid/view/animation/AnimationSet;
L3:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet2 Landroid/view/animation/AnimationSet;
ifnonnull L4
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet2 Landroid/view/animation/AnimationSet;
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet3 Landroid/view/animation/AnimationSet;
ifnonnull L5
aload 0
new android/view/animation/AnimationSet
dup
iconst_1
invokespecial android/view/animation/AnimationSet/<init>(Z)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet3 Landroid/view/animation/AnimationSet;
L5:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet1 Landroid/view/animation/AnimationSet;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initRightAnimation(Landroid/view/animation/AnimationSet;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet2 Landroid/view/animation/AnimationSet;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initRightAnimation(Landroid/view/animation/AnimationSet;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRightRippleAmtSet3 Landroid/view/animation/AnimationSet;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/initRightAnimation(Landroid/view/animation/AnimationSet;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mBtnLongClickRecord Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTouchListener Landroid/view/View$OnTouchListener;
invokevirtual android/widget/Button/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnFace I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnClickListene Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnRecord I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnClickListene Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnSend I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnClickListene Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLlRecordMsg Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnClickListene Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mBtnDeleteRecord Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mOnClickListene Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mMsgTextWatcher Landroid/text/TextWatcher;
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initLeftAnimation(Landroid/view/animation/AnimationSet;)V
aload 1
invokevirtual android/view/animation/AnimationSet/getAnimations()Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getAlphaAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 1
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getScaleAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 1
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getLeftTranslateAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 2
.end method

.method private initRecord()Z
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mStarTime J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
ldc ".amr"
invokestatic com/nd/android/backpacksystem/helper/Utils/getStorePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvRecordingTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvRecordingTime Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/recording_time I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
iconst_0
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
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvTouchToRecord Landroid/widget/TextView;
getstatic com/nd/android/backpacksystem/R$string/lift_up_to_finish_record I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
ifnonnull L0
aload 0
new com/common/android/utils/audio/AudioRecordManager
dup
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordListener Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;
invokespecial com/common/android/utils/audio/AudioRecordManager/<init>(Lcom/common/android/utils/audio/AudioRecordManager$onAudioRecordListener;)V
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
invokevirtual com/common/android/utils/audio/AudioRecordManager/setRecrodPath(Ljava/lang/String;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
ldc2_w 120L
invokevirtual com/common/android/utils/audio/AudioRecordManager/setMaxRecordTime(J)V
L1:
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
invokevirtual com/common/android/utils/audio/AudioRecordManager/audioStart()Z
pop
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mAudioRecordManager Lcom/common/android/utils/audio/AudioRecordManager;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
invokevirtual com/common/android/utils/audio/AudioRecordManager/setRecrodPath(Ljava/lang/String;)V
goto L1
.limit locals 1
.limit stack 6
.end method

.method private initRightAnimation(Landroid/view/animation/AnimationSet;)V
aload 1
invokevirtual android/view/animation/AnimationSet/getAnimations()Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getAlphaAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 1
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getScaleAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 1
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getRightTranslateAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getWindow()Landroid/view/Window;
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mWindow Landroid/view/Window;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mWindow Landroid/view/Window;
iconst_m1
bipush -2
invokevirtual android/view/Window/setLayout(II)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mWindow Landroid/view/Window;
bipush 16
invokevirtual android/view/Window/setGravity(I)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/llRecordMsg I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mLlRecordMsg Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvRecordLength I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvRecordLength Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivRecordAnimat I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRecordAnimat Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnDeleteRecord I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mBtnDeleteRecord Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/rlRecordSmiley I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRlRecordSmiley Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvRecordingTime I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvRecordingTime Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/etSendCount I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtSendCount Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvInputWordsLength I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvInputWordsLength Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvInputWordsLength Landroid/widget/TextView;
aload 0
iconst_0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/getWordsLengthString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/etBlessing I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/smiley_view I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_4
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/btnLongClickRecord I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mBtnLongClickRecord Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvTouchToRecord I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mTvTouchToRecord Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/csbProgress I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast com/nd/android/backpacksystem/widget/CircularSeekBar
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mCsbProgress Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mCsbProgress Lcom/nd/android/backpacksystem/widget/CircularSeekBar;
bipush 120
invokevirtual com/nd/android/backpacksystem/widget/CircularSeekBar/setMax(I)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivLeftRipple1 I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple1 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivLeftRipple2 I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple2 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivLeftRipple3 I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple3 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivRightRipple1 I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple1 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivRightRipple2 I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple2 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivRightRipple3 I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple3 Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 3
.end method

.method private showBottom(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRlRecordSmiley Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iload 1
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mWindow Landroid/view/Window;
bipush 80
invokevirtual android/view/Window/setGravity(I)V
return
.limit locals 2
.limit stack 3
.end method

.method private showRipple()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple1 Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple2 Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvLeftRipple3 Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple1 Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple2 Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mIvRightRipple3 Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public cancel()V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
aload 0
invokespecial android/app/Dialog/cancel()V
return
.limit locals 1
.limit stack 1
.end method

.method public doSend()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/network_error_to_set_network I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
sipush 140
if_icmple L1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/words_length_too_long I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtSendCount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/send_count_empty I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
new com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mMyItems Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemId()J
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mItemId J
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtSendCount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mAmount I
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSendUserId J
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mToUid J
aload 1
new java/io/File
dup
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRecordPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic com/product/android/utils/FileHelper/tansferToByteArrayBASE64Encode(Ljava/io/File;)Ljava/lang/String;
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceData Ljava/lang/String;
aload 1
ldc ".amr"
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceExt Ljava/lang/String;
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mMessage Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
ifnull L3
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
aload 1
invokeinterface com/nd/android/backpacksystem/listener/DialogCallBack/doRefresh(Ljava/lang/Object;)V 1
return
L3:
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift
dup
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mActivity Landroid/app/Activity;
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/<init>(Landroid/app/Activity;Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
iconst_1
anewarray com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public onBackPressed()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mRlRecordSmiley Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/hidBottom()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
return
L0:
aload 0
invokespecial android/app/Dialog/onBackPressed()V
return
.limit locals 1
.limit stack 3
.end method

.method public setData(Lcom/product/android/commonInterface/contact/OapUserSimple;J)V
aload 0
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mSendUserId J
aload 0
getstatic com/nd/android/backpacksystem/R$id/rlRoot I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
astore 4
aload 4
invokevirtual android/view/View/getViewTreeObserver()Landroid/view/ViewTreeObserver;
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1
dup
aload 0
aload 4
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Landroid/view/View;)V
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
aload 0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
lload 2
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItem(J)Lcom/nd/android/backpacksystem/data/MyItems;
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mMyItems Lcom/nd/android/backpacksystem/data/MyItems;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mMyItems Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 4
aload 4
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getIconUrl()Ljava/lang/String;
astore 5
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivGiftImage I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 6
aload 6
getstatic com/nd/android/backpacksystem/R$drawable/icon_gift_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 5
aload 6
invokestatic com/nd/android/backpacksystem/helper/DisplayUtil/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
aload 4
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
astore 5
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftName I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 6
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 6
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtSendCount Landroid/widget/EditText;
ldc "1"
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtSendCount Landroid/widget/EditText;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtSendCount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
invokevirtual android/widget/EditText/setSelection(I)V
new com/nd/android/backpacksystem/listener/CountTextWatcher
dup
iconst_1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mMyItems Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtSendCount Landroid/widget/EditText;
invokespecial com/nd/android/backpacksystem/listener/CountTextWatcher/<init>(IILandroid/widget/EditText;)V
pop
aload 4
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getDefalutMsg()Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
aload 4
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
invokevirtual com/common/android/ui/widget/SpenEditText/setSelection(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/requestFocus()Z
pop
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
astore 4
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvName I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 5
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 5
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L5:
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivUserHeader I
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
iconst_2
aload 4
bipush 8
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JBLandroid/widget/ImageView;I)V
return
L0:
aload 6
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/mEtBlessing Lcom/common/android/ui/widget/SpenEditText;
ldc ""
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
goto L3
L4:
aload 5
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
.limit locals 7
.limit stack 5
.end method
