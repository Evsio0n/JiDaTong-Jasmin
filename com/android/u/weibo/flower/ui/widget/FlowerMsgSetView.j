.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$2
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$3
.inner class public DelFlowerMsgTask inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
.inner class private FlowerAudioRecordManager inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
.inner class static ReceiveUploadAudioHandler inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
.inner class public SetFlowerMsgTask inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask outer com/android/u/weibo/flower/ui/widget/FlowerMsgSetView

.field private static final 'MAX_INPUT' I = 40


.field public static final 'MSG_UPLOAD' I = 0


.field private 'mBtConfirm' Landroid/widget/Button;

.field private 'mBtDel' Landroid/view/View;

.field private 'mBtLongRecord' Landroid/widget/Button;

.field private 'mBtnConfirmAbleResId' I

.field private 'mBtnConfirmUnableResId' I

.field private 'mContext' Landroid/content/Context;

.field private 'mDelFlowerMsgTask' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask;

.field private 'mEtMsgText' Landroid/widget/EditText;

.field 'mHandler' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler;

.field private 'mInfo' Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;

.field private 'mIvMsgText' Landroid/widget/ImageView;

.field private 'mIvRecord' Landroid/widget/ImageView;

.field private 'mMsgValueView' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;

.field private 'mSetFlowerMsgTask' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask;

.field private 'mTvExplain' Landroid/widget/TextView;

.field private 'mTvInputNum' Landroid/widget/TextView;

.field private 'mTvLearnMore' Landroid/widget/TextView;

.field private 'mTvTitle' Landroid/widget/TextView;

.field private 'watcher' Landroid/text/TextWatcher;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/watcher Landroid/text/TextWatcher;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/watcher Landroid/text/TextWatcher;
aload 0
aload 1
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Ljava/lang/Object;)V
aload 0
aload 1
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/sendAudio(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/showValueView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/EditText;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/doDelMessage()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/initView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)I
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/setAudioMsgErr()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtConfirm Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtnConfirmUnableResId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvInputNum Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtnConfirmAbleResId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private doDelMessage()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mDelFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mDelFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask
dup
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/wait I
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Landroid/content/Context;I)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mDelFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mDelFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$DelFlowerMsgTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private hideAllView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
bipush 8
invokevirtual android/widget/EditText/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtConfirm Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtDel Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvInputNum Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
bipush 8
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private init(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/wbflow_message I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/android/u/weibo/R$id/bt_wbflower_confirm I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtConfirm Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/iv_wbflower_record I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/bt_wbflower_longclick I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/iv_wbflower_del I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtDel Landroid/view/View;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_learnMore I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvLearnMore Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/et_wbflower_input I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_inputNum I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvInputNum Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/iv_wbflower_text I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_title I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_wbflower_explain I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvExplain Landroid/widget/TextView;
aload 0
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mHandler Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/wbflower_msg_value I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/flower/ui/widget/FlowerMsgValueView
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mHandler Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$ReceiveUploadAudioHandler;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setUploadHandler(Landroid/os/Handler;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
iconst_1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/isInManageView Z
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtConfirm Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtDel Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvLearnMore Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvLearnMore Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "<u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/common_learn_more I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "</u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/watcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager
dup
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$FlowerAudioRecordManager/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Landroid/content/Context;Landroid/widget/Button;)V
pop
return
.limit locals 2
.limit stack 5
.end method

.method private initView()V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/hideAllView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private sendAudio(Ljava/lang/Object;)V
aload 1
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
checkcast java/lang/String
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgVoiceLocal(Ljava/lang/String;)V
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
iconst_1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setContentType(I)V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/setMessage()V
return
.limit locals 2
.limit stack 2
.end method

.method private setAudioMsgErr()I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
iconst_1
if_icmpne L0
new java/io/File
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/uid J
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/delFlowerMessageInfo(JI)V
aload 0
new com/product/android/commonInterface/weibo/FlowerMessageInfo
dup
invokespecial com/product/android/commonInterface/weibo/FlowerMessageInfo/<init>()V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setType(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setUid(J)V
getstatic com/android/u/weibo/R$string/wbflower_set_null_record I
ireturn
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
ifne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
iconst_1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setState(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setFlowerMessageInfo(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
L0:
getstatic com/android/u/weibo/R$string/wbflower_set_msg_err I
ireturn
.limit locals 1
.limit stack 4
.end method

.method private setMessage()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mSetFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mSetFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
ifnull L2
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/isFinishing()Z
ifne L1
L2:
aload 0
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask
dup
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/wait I
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;Landroid/content/Context;I)V
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mSetFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mSetFlowerMsgTask Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$SetFlowerMsgTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private showValueView()V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/hideAllView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setValue(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
iconst_0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtDel Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/bt_wbflower_confirm I
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/wbflower_input_err I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
return
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgText(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
iconst_0
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setContentType(I)V
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/setMessage()V
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/iv_wbflower_record I
if_icmpne L3
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/hideAllView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mEtMsgText Landroid/widget/EditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/iv_wbflower_text I
if_icmpne L4
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/initView()V
return
L4:
iload 2
getstatic com/android/u/weibo/R$id/iv_wbflower_del I
if_icmpne L5
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/android/u/weibo/R$string/prompt_title I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/android/u/weibo/R$string/wbflower_del_record_warn I
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/android/u/weibo/R$string/confirm I
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$2
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$2/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/android/u/weibo/R$string/cancel I
new com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$3
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$3/<init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
L5:
iload 2
getstatic com/android/u/weibo/R$id/tv_wbflower_learnMore I
if_icmpne L2
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
ldc com/android/u/weibo/flower/ui/activity/FlowerMsgExplainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "FlowerMessageType"
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 5
.end method

.method public onPause()V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
return
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvTitle Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_request_message I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvExplain Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_request_explain I
invokevirtual android/widget/TextView/setText(I)V
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
iconst_1
if_icmpne L3
L2:
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/showValueView()V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvTitle Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_thank_message I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvExplain Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/wbflower_thank_explain I
invokevirtual android/widget/TextView/setText(I)V
goto L1
L3:
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method public setUIStyle()V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
getstatic com/android/u/weibo/R$drawable/wbflower_msg_bg I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setViewBackground(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/bt_talk_bg_normal I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/username_text_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtDel Landroid/view/View;
getstatic com/android/u/weibo/R$drawable/wbflower_msg_del_bg I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/bt_header_right_bg I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/common_icon_record I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/bt_header_return_bg I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/bt_text_bg_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvLearnMore Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/wbflower_learn_more_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getstatic com/android/u/weibo/R$drawable/bt_header_right_bg I
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtnConfirmAbleResId I
aload 0
getstatic com/android/u/weibo/R$drawable/btn_confirm_unable I
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtnConfirmUnableResId I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtConfirm Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/black I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mMsgValueView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgValueView;
getstatic com/android/u/weibo/R$drawable/bg_flower_msg_content I
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgValueView/setViewBackground(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/bg_flower_record I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtLongRecord Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtDel Landroid/view/View;
getstatic com/android/u/weibo/R$drawable/btn_xy_flower_delete_normal_selected I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/btn_flower_record_normal_selected I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvRecord Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/btn_xy_flower_text_bg_normal_selected I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mIvMsgText Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/btn_xy_text_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mTvLearnMore Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/blue_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getstatic com/android/u/weibo/R$drawable/btn_blue_normal_selected I
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtnConfirmAbleResId I
aload 0
getstatic com/android/u/weibo/R$drawable/btn_flower_grey I
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtnConfirmUnableResId I
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/mBtConfirm Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/Button/setTextColor(I)V
return
.limit locals 1
.limit stack 3
.end method
