.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/chatfragment/HeadFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation
.inner class inner com/nd/android/u/ui/widge/chatfragment/HeadFragment$1
.inner class inner com/nd/android/u/ui/widge/chatfragment/HeadFragment$2
.inner class inner com/nd/android/u/ui/widge/chatfragment/HeadFragment$3
.inner class public static abstract interface HeadListener inner com/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener outer com/nd/android/u/ui/widge/chatfragment/HeadFragment

.field public static final 'RIGHTRESVALUE' Ljava/lang/String; = "resid"

.field public static final 'SHOW_BIRTHDAY' I = 1


.field public static final 'TITLEVALUE' Ljava/lang/String; = "title"

.field public static final 'UPDATE_GROUP_NAME' I = 3


.field public static final 'UPDATE_NAME' I = 2


.field public static final 'UPDATE_STATUS' I = 0


.field private 'handler' Landroid/os/Handler;

.field private 'mAudioModeNotice' Lcom/nd/android/u/ui/widge/PopAudioModeNotice;

.field private 'mGeneralid' J

.field private 'mHeadCallBack' Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener;

.field private 'mIsShowStatu' Z

.field private 'mMessageType' I

.field private 'mleftBtn' Landroid/widget/Button;

.field private 'modeChangedListener' Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;

.field private 'mrightImgv' Landroid/widget/ImageView;

.field private 'mrightlv' Landroid/widget/LinearLayout;

.field private 'mtitleText' Landroid/widget/TextView;

.field 'observer' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'tvState' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mIsShowStatu Z
aload 0
new com/nd/android/u/ui/widge/chatfragment/HeadFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment$1/<init>(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/modeChangedListener Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
aload 0
new com/nd/android/u/ui/widge/chatfragment/HeadFragment$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/<init>(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/ui/widge/chatfragment/HeadFragment$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment$3/<init>(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;I)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/showAudioNotice(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mGeneralid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;[I)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/showTvState([I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mtitleText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
invokevirtual java/lang/String/length()I
ifle L0
aload 1
aload 2
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmple L1
aload 1
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L2:
aload 1
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L2
.limit locals 3
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mleftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mrightlv Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mHeadCallBack Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 1
aload 1
instanceof com/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener
ifeq L0
aload 0
aload 1
checkcast com/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mHeadCallBack Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/header_text_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mtitleText Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/header_btn_left I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mleftBtn Landroid/widget/Button;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/header_layout_right I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mrightlv Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/header_btn_right I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mrightImgv Landroid/widget/ImageView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/tvState I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/tvState Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/tvState Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private leftBtnHandle()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mHeadCallBack Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mHeadCallBack Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener;
invokeinterface com/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener/leftBtnHandle()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public static newInstance()Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
new com/nd/android/u/ui/widge/chatfragment/HeadFragment
dup
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private rightBtnHandle()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mHeadCallBack Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mHeadCallBack Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener;
invokeinterface com/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener/rightBtnHandle()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private showAudioNotice(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mAudioModeNotice Lcom/nd/android/u/ui/widge/PopAudioModeNotice;
ifnonnull L0
aload 0
new com/nd/android/u/ui/widge/PopAudioModeNotice
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/header_fragment_rv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
invokespecial com/nd/android/u/ui/widge/PopAudioModeNotice/<init>(Landroid/content/Context;Landroid/view/View;)V
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mAudioModeNotice Lcom/nd/android/u/ui/widge/PopAudioModeNotice;
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mAudioModeNotice Lcom/nd/android/u/ui/widge/PopAudioModeNotice;
iload 1
invokevirtual com/nd/android/u/ui/widge/PopAudioModeNotice/setMode(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mAudioModeNotice Lcom/nd/android/u/ui/widge/PopAudioModeNotice;
invokevirtual com/nd/android/u/ui/widge/PopAudioModeNotice/show()V
return
.limit locals 2
.limit stack 6
.end method

.method private showTvState([I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/tvState Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
ifnull L0
aload 1
arraylength
ifne L1
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/tvState Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/chat_offline I
invokevirtual android/widget/TextView/setText(I)V
L2:
return
L1:
aload 1
arraylength
istore 3
iload 3
iconst_1
if_icmpne L3
aload 1
iconst_0
iaload
ifne L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/tvState Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/chat_offline I
invokevirtual android/widget/TextView/setText(I)V
return
L3:
ldc ""
astore 4
iconst_0
istore 2
L4:
iload 2
iload 3
if_icmpge L2
aload 1
iload 2
iaload
tableswitch 1
L5
L6
L7
default : L8
L8:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/tvState Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 0
aload 4
ldc "Web"
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/addState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
goto L8
L6:
aload 0
aload 4
ldc "PC"
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/addState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
goto L8
L7:
aload 0
aload 4
ldc "Mobile"
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/addState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
goto L8
.limit locals 5
.limit stack 3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/initView()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/initEvent()V
aload 1
ifnull L0
aload 0
aload 1
ldc "generalid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mGeneralid J
aload 0
aload 1
ldc "MESSAGE_TYPE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mMessageType I
aload 1
ldc "title"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
aload 1
ldc "SHOW_STATUS"
iconst_0
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mIsShowStatu Z
aload 1
ldc "resid"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 2
iload 2
ifle L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mrightImgv Landroid/widget/ImageView;
iload 2
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mtitleText Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mGeneralid J
ldc2_w 10003057L
lcmp
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mGeneralid J
ldc2_w 666666666L
lcmp
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mGeneralid J
ldc2_w 999999999L
lcmp
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mGeneralid J
ldc2_w 777777777L
lcmp
ifne L3
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mrightlv Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mrightlv Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 4
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/header_btn_left I
if_icmpne L0
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/leftBtnHandle()V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/chat/R$id/header_layout_right I
if_icmpne L1
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/HeadFragment/rightBtnHandle()V
return
.limit locals 3
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/header_refresh I
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
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
iconst_0
invokevirtual com/common/android/utils/audio/AudioPlayer/setMode(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/modeChangedListener Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
invokevirtual com/common/android/utils/audio/AudioPlayer/setOnModeChangedListener(Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mIsShowStatu Z
ifeq L0
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mMessageType I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public onStop()V
aload 0
invokespecial android/support/v4/app/Fragment/onStop()V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/unregistModeChangeListener()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mIsShowStatu Z
ifeq L0
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/mMessageType I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public showBirthday()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment/handler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
