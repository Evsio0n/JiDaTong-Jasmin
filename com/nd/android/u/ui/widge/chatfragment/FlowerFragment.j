.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/chatfragment/FlowerFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5

.field private static final 'HIDE_TIME' I = 10000


.field private static final 'SHOW_WIDGET' I = 0


.field private static final 'UPDATE_DATA' I = 2


.field private 'btnSendFlower' Landroid/widget/Button;

.field private 'cdt' Landroid/os/CountDownTimer;

.field private 'delay' J

.field private 'editor' Landroid/content/SharedPreferences$Editor;

.field protected 'flowerDialogListener' Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;

.field private 'format' Ljava/text/SimpleDateFormat;

.field private 'handler' Landroid/os/Handler;

.field private 'mAudioMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'mBirthdayType' I

.field private 'mFid' J

.field private 'mFlowerMessageInfo' Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;

.field private 'mGender' I

.field private 'mIsFirstEnter' Z

.field private 'observer' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'rlBlagFlowerAudio' Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;

.field private 'rlSendFlower' Landroid/view/View;

.field private 'rlSendFlowerHint' Landroid/view/View;

.field private 'spf' Landroid/content/SharedPreferences;

.field private 'tvSendFlowerHint' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
ldc2_w 10000L
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/delay J
aload 0
iconst_m1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mBirthdayType I
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mIsFirstEnter Z
aload 0
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/format Ljava/text/SimpleDateFormat;
aload 0
new com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2/<init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/flowerDialogListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
aload 0
new com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/<init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment$5/<init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/doPlayAudio()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mGender I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mBirthdayType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFlowerMessageInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;IILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/setUserData(IILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$1400(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlBlagFlowerAudio Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/btnSendFlower Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/startTimer()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;J)J
aload 0
lload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/delay J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlower Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cdt Landroid/os/CountDownTimer;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$702(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;Z)Z
aload 0
iload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mIsFirstEnter Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method private cancleTimer()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cdt Landroid/os/CountDownTimer;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cdt Landroid/os/CountDownTimer;
invokevirtual android/os/CountDownTimer/cancel()V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cdt Landroid/os/CountDownTimer;
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlower Landroid/view/View;
invokevirtual android/view/View/clearAnimation()V
return
.limit locals 1
.limit stack 2
.end method

.method private checkFirstEnter()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "WorldWriteableFiles" 
.end annotation
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
return
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "send_flower_date"
iconst_2
invokevirtual android/support/v4/app/FragmentActivity/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/spf Landroid/content/SharedPreferences;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/spf Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/editor Landroid/content/SharedPreferences$Editor;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/spf Landroid/content/SharedPreferences;
aload 1
ldc ""
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/format Ljava/text/SimpleDateFormat;
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 3
aload 2
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mIsFirstEnter Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L1:
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mIsFirstEnter Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/editor Landroid/content/SharedPreferences$Editor;
aload 1
aload 3
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/editor Landroid/content/SharedPreferences$Editor;
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 5
.end method

.method private createMessage()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnonnull L0
aload 0
new com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/<init>()V
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFid J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDefaultValue(J)V 2
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private doPlayAudio()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/getInstance()Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 1
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/setDetailList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
iconst_1
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setIsRead(IZ)V 2
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L0
invokestatic com/nd/android/u/chatUiUtils/AudioQuenePlayManager/getInstance()Lcom/nd/android/u/chatUiUtils/AudioQuenePlayManager;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual com/nd/android/u/chatUiUtils/AudioQuenePlayManager/startQuenePlay(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Landroid/content/Context;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/btnSendFlower Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlBlagFlowerAudio Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/rl_send_flower I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlower Landroid/view/View;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/btn_send_flower I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/btnSendFlower Landroid/widget/Button;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/rl_send_flower_hint I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tv_send_flower_hint I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/rl_blag_flower_audio I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/ChatBlagFlowerAudioView
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlBlagFlowerAudio Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
return
.limit locals 1
.limit stack 3
.end method

.method public static newInstance()Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
new com/nd/android/u/ui/widge/chatfragment/FlowerFragment
dup
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private resetOnResume()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFlowerMessageInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mBirthdayType I
iflt L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mBirthdayType I
iconst_4
if_icmpgt L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L1:
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/startTimer()V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFlowerMessageInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnull L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mIsFirstEnter Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
goto L1
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L1
.limit locals 1
.limit stack 2
.end method

.method private setUserData(IILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/createMessage()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/checkFirstEnter()V
aload 0
aload 3
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFlowerMessageInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/btnSendFlower Landroid/widget/Button;
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aconst_null
astore 5
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/gender_opration I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
iload 1
aaload
astore 6
iload 2
iflt L0
iload 2
iconst_4
if_icmpgt L0
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/chat/R$string/birthday_hint_before_yestd I
iastore
dup
iconst_1
getstatic com/nd/android/u/chat/R$string/birthday_hint_yestd I
iastore
dup
iconst_2
getstatic com/nd/android/u/chat/R$string/birthday_hint_today I
iastore
dup
iconst_3
getstatic com/nd/android/u/chat/R$string/birthday_hint_tomorrow I
iastore
dup
iconst_4
getstatic com/nd/android/u/chat/R$string/birthday_hint_after_tomorrow I
iastore
iload 2
iaload
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 6
aastore
dup
iconst_1
aload 6
aastore
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L1:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/startTimer()V
return
L0:
aload 5
astore 4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mIsFirstEnter Z
ifeq L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlowerHint Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
astore 4
goto L1
L3:
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/url Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlBlagFlowerAudio Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/tvSendFlowerHint Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlBlagFlowerAudio Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/setVisibility(I)V
aload 5
astore 4
goto L1
L4:
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/isSend I
iconst_1
if_icmpne L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/nd/android/u/chat/R$string/common_again I
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getstatic com/nd/android/u/chat/R$string/send_flower_hint I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 6
aastore
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
goto L1
L5:
aload 0
getstatic com/nd/android/u/chat/R$string/send_flower_hint I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 6
aastore
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 4
goto L1
.limit locals 7
.limit stack 7
.end method

.method private startTimer()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cdt Landroid/os/CountDownTimer;
ifnull L0
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/rlSendFlower Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
new com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3
dup
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/delay J
ldc2_w 10000L
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment$3/<init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;JJ)V
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cdt Landroid/os/CountDownTimer;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cdt Landroid/os/CountDownTimer;
invokevirtual android/os/CountDownTimer/start()Landroid/os/CountDownTimer;
pop
return
.limit locals 1
.limit stack 8
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/initView()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAttach(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onAttach(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cancleTimer()V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/chat/R$id/btn_send_flower I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L1
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFid J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/flowerDialogListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/showSendFlowerDialog(Landroid/content/Context;JLcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V 4
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/chat/R$id/rl_blag_flower_audio I
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mAudioMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
new com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment$1/<init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/excuteRequest(Ljava/lang/Runnable;)V
return
L2:
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/doPlayAudio()V
return
.limit locals 2
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getArguments()Landroid/os/Bundle;
astore 2
aload 2
ifnull L0
aload 0
aload 2
ldc "fid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFid J
L0:
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/chat_flower_fragment I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public onDestroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cancleTimer()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onPause()V
aload 0
invokespecial android/support/v4/app/Fragment/onPause()V
aload 0
ldc2_w 10000L
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/delay J
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/cancleTimer()V
return
.limit locals 1
.limit stack 3
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/createMessage()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/resetOnResume()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/FlowerFragment/startTimer()V
return
.limit locals 1
.limit stack 3
.end method

.method public setData(IILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mGender I
aload 0
iload 2
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mBirthdayType I
aload 0
aload 3
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/mFlowerMessageInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment/handler Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 4
.limit stack 2
.end method
