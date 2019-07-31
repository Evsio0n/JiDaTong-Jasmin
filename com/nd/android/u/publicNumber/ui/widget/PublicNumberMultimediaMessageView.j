.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$1
.inner class private ClickInfoListener inner com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener outer com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView

.field private 'audioView' Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;

.field private 'llMsgLayout' Landroid/widget/LinearLayout;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessage' Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;

.field private 'rlMediaContainer' Landroid/widget/RelativeLayout;

.field private 'tvContent' Landroid/widget/TextView;

.field private 'tvDetail' Landroid/widget/TextView;

.field private 'tvMessageTime' Landroid/widget/TextView;

.field private 'tvTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;)V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/playVideo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkToShowMessageTime()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvMessageTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getTimeString()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvMessageTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvMessageTime Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvMessageTime Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvMessageTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvDetail Landroid/widget/TextView;
new com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener
dup
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/groupId Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$ClickInfoListener/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;Ljava/lang/String;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 6
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_pub_multimedia_message_list_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/ll_msg_layout I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/llMsgLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tv_message_time I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvMessageTime Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tv_title I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tv_message_time I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvMessageTime Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tv_content I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvContent Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/rl_media_container I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/rlMediaContainer Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tv_detail I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvDetail Landroid/widget/TextView;
return
.limit locals 2
.limit stack 3
.end method

.method private openVideo(Ljava/io/File;)V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
new com/nd/teamfile/sdk/type/FileType
dup
aload 1
invokespecial com/nd/teamfile/sdk/type/FileType/<init>(Ljava/io/File;)V
invokevirtual com/nd/teamfile/sdk/type/FileType/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L1
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 1
getstatic com/nd/android/u/chat/R$string/chat_unknow_apk I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 2
.limit stack 3
.end method

.method private playVideo()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mContext Landroid/content/Context;
ldc "play vedio"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getType()I
tableswitch 0
L1
L2
default : L3
L3:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/checkToShowMessageTime()V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/initEvent()V
L0:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
checkcast com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvTitle Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/getmTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvContent Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/AudioMultimediaInfo/getmSummary()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokestatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/getInstance()Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mContext Landroid/content/Context;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/getPspAudioView(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;Landroid/content/Context;)Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/audioView Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/audioView Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/getParent()Landroid/view/ViewParent;
ifnull L4
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/audioView Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/getParent()Landroid/view/ViewParent;
checkcast android/widget/RelativeLayout
invokevirtual android/widget/RelativeLayout/removeAllViews()V
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/rlMediaContainer Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/removeAllViews()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/rlMediaContainer Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/audioView Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
goto L3
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
checkcast com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvTitle Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/getmTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/tvContent Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/getmSummary()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/rlMediaContainer Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/removeAllViews()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/psp_vedio_tip I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/rlMediaContainer Landroid/widget/RelativeLayout;
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/rlMediaContainer Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/chat/R$id/iv_img I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
invokevirtual com/nd/android/u/publicNumber/ui/bean/VideoMultimediaInfo/getmVideoScreenshotUrl()Ljava/lang/String;
aload 1
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 1
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 2
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
iconst_5
imul
bipush 6
idiv
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 2
aload 2
getfield android/widget/RelativeLayout$LayoutParams/width I
i2d
ldc2_w 0.56D
dmul
d2i
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 1
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
new com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView$1/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L3
.limit locals 3
.limit stack 5
.end method
