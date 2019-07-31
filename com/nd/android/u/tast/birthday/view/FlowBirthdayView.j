.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/view/FlowBirthdayView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.implements android/view/View$OnLongClickListener
.implements com/product/android/business/headImage/ProfileUserShowImageCacheCallback
.inner class inner com/nd/android/u/tast/birthday/view/FlowBirthdayView$1
.inner class inner com/nd/android/u/tast/birthday/view/FlowBirthdayView$2
.inner class inner com/nd/android/u/tast/birthday/view/FlowBirthdayView$2$1
.inner class private Task inner com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task outer com/nd/android/u/tast/birthday/view/FlowBirthdayView

.field private 'ad' Landroid/graphics/drawable/AnimationDrawable;

.field private 'addParentView' Z

.field private 'birthuser' Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;

.field private 'clickListener' Landroid/view/View$OnClickListener;

.field private 'columnIndex' I

.field private 'flowTag' Lcom/product/android/ui/waterfall/FlowTag;

.field private 'isRecyle' Z

.field private 'isUserShow' Z

.field private 'mContext' Landroid/content/Context;

.field private 'mImageView' Landroid/widget/ImageView;

.field private 'mTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mbtnBless' Landroid/widget/Button;

.field private 'mbtnSendFlowers' Landroid/widget/Button;

.field private 'mivHeart' Landroid/widget/ImageView;

.field private 'mrlBlessCount' Landroid/widget/RelativeLayout;

.field private 'mrlBottom' Landroid/widget/RelativeLayout;

.field private 'mtvBlessedCount' Landroid/widget/TextView;

.field private 'mtvDepartNameText' Landroid/widget/TextView;

.field private 'mtvUserNameText' Landroid/widget/TextView;

.field private 'rowIndex' I

.field private 'task' Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView$Task;

.field private 'tvHappyBirthday' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;I)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/addParentView Z
aload 0
iconst_1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isRecyle Z
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
aload 0
new com/nd/android/u/tast/birthday/view/FlowBirthdayView$1
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView$1/<init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/clickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/tast/birthday/view/FlowBirthdayView$2
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/<init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
aload 0
iload 3
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/initComponent(I)V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/initEvent()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/doBelss()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/sendFlowers()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/clickHotArea()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)Landroid/graphics/drawable/AnimationDrawable;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/ad Landroid/graphics/drawable/AnimationDrawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/broadcastBlessTaskOver()V
return
.limit locals 1
.limit stack 1
.end method

.method private broadcastBlessTaskOver()V
new android/content/Intent
dup
ldc "com.nd.android.u.chat.flowertaskover"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "activity_context"
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "task_over_type"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method private clickHotArea()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
invokevirtual android/widget/Button/getVisibility()I
ifne L0
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/doBelss()V
L1:
return
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
invokevirtual android/widget/Button/getVisibility()I
ifne L1
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/sendFlowers()V
return
.limit locals 1
.limit stack 1
.end method

.method private doBelss()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
bipush 8
if_icmpeq L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
iconst_4
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvBlessedCount Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 2
iconst_0
istore 1
aload 2
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L2
aload 2
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
iconst_1
iadd
istore 1
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvBlessedCount Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$anim/bless I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getBackground()Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/AnimationDrawable
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/ad Landroid/graphics/drawable/AnimationDrawable;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/ad Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/start()V
aload 0
new com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/<init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView$1;)V
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/task Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView$Task;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/task Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView$Task;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/task Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView$Task;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView$Task/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method private initComponent(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/flowviewbirthday_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/rl_bless_count I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/iv_heart I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_bless_count I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvBlessedCount Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/flowview_item_text_name I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvUserNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/flowview_item_image I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/flowview_item_text_departname I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvDepartNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_happy_birthday I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/tvHappyBirthday Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
iconst_0
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/setFocusable(Z)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setFocusable(Z)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/flowview_bottom_layout I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBottom Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_bless I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_send_flowers I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
return
.limit locals 2
.limit stack 4
.end method

.method private initDisplayUserShow()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
getfield com/product/android/ui/waterfall/FlowTag/isUserShow Z
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
getfield com/product/android/ui/waterfall/FlowTag/isUserShow Z
ifne L0
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
getfield com/product/android/ui/waterfall/FlowTag/uid J
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
putfield com/product/android/ui/waterfall/FlowTag/sysAvatarId I
L0:
return
.limit locals 2
.limit stack 4
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvUserNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvDepartNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBottom Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private sendFlowers()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/sendFlowers(Landroid/content/Context;J)V
return
.limit locals 1
.limit stack 3
.end method

.method public blessFail(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvBlessedCount Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 4
iconst_0
istore 2
aload 4
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L0
aload 4
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
iconst_1
isub
istore 2
L0:
iload 2
istore 3
iload 2
ifge L1
iconst_0
istore 3
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvBlessedCount Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 1
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/blessing_fail_double I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L3:
return
L2:
iload 1
iconst_2
if_icmpne L3
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/blessing_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
iload 3
iconst_1
if_icmpge L4
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setClickable(Z)V
return
.limit locals 5
.limit stack 3
.end method

.method public getBirthuser()Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getColumnIndex()I
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/columnIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFlowTag()Lcom/product/android/ui/waterfall/FlowTag;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRowIndex()I
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/rowIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initValue()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvUserNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getUsername()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getDeptname()Ljava/lang/String;
ifnull L1
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getDeptname()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvDepartNameText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvBlessedCount Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getBlesscount()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getIsblessed()J
lconst_1
lcmp
ifne L4
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/bless_heart_4 I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L5:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getBlesscount()J
lconst_1
lcmp
ifge L6
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L7:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L8
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/tvHappyBirthday Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
return
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvDepartNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getDeptname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L4:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L5
L6:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L7
L8:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/tvHappyBirthday Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public isAddParentView()Z
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/addParentView Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isUserShow()Z
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public loadImage()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
ifeq L1
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getUid()J
iconst_m1
bipush 6
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
L2:
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isRecyle Z
L0:
return
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getUid()J
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
getfield com/product/android/ui/waterfall/FlowTag/sysAvatarId I
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/initValue()V
goto L2
.limit locals 1
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getClickListener()Lcom/product/android/ui/waterfall/FlowViewOnClickListener;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getClickListener()Lcom/product/android/ui/waterfall/FlowViewOnClickListener;
invokeinterface com/product/android/ui/waterfall/FlowViewOnClickListener/onLongClick()V 0
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L0
default : L0
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public reLoadImage()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isRecyle Z
ifeq L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
ifeq L1
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getUid()J
iconst_m1
bipush 6
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
L2:
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isRecyle Z
L0:
return
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
invokevirtual com/product/android/ui/waterfall/FlowTag/getUid()J
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
getfield com/product/android/ui/waterfall/FlowTag/sysAvatarId I
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/initValue()V
goto L2
.limit locals 1
.limit stack 5
.end method

.method public recycle()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isRecyle Z
ifeq L0
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isRecyle Z
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
ifeq L1
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageCache/mDefaultUserShowBitmap Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageCache/mDefaultBitmap Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
return
.limit locals 1
.limit stack 2
.end method

.method public refresh(Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 2
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isRecyle Z
ifne L0
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public refreshCount(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/bless_heart_4 I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mivHeart Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mtvBlessedCount Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mrlBlessCount Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnBless Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mbtnSendFlowers Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAddParentView(Z)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/addParentView Z
return
.limit locals 2
.limit stack 2
.end method

.method public setBirthuser(Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/birthuser Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
return
.limit locals 2
.limit stack 2
.end method

.method public setColumnIndex(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/columnIndex I
return
.limit locals 2
.limit stack 2
.end method

.method public setFlowTag(Lcom/product/android/ui/waterfall/FlowTag;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/flowTag Lcom/product/android/ui/waterfall/FlowTag;
ifnonnull L0
return
L0:
aload 0
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/initDisplayUserShow()V
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 2
aload 2
ifnull L1
aload 1
invokevirtual com/product/android/ui/waterfall/FlowTag/getIsEntrance()Z
ifeq L2
aload 2
iconst_5
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
L3:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L1:
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/initValue()V
return
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
ifeq L4
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 1
invokevirtual com/product/android/ui/waterfall/FlowTag/getItemWidth()I
bipush 10
isub
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/width I
bipush 15
imul
bipush 10
idiv
putfield android/view/ViewGroup$LayoutParams/height I
aload 2
iconst_5
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
goto L3
L4:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 1
invokevirtual com/product/android/ui/waterfall/FlowTag/getItemWidth()I
bipush 10
isub
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/width I
putfield android/view/ViewGroup$LayoutParams/height I
aload 2
iconst_5
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
goto L3
.limit locals 3
.limit stack 3
.end method

.method public setRowIndex(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/rowIndex I
return
.limit locals 2
.limit stack 2
.end method

.method public setUserShow(Z)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView/isUserShow Z
return
.limit locals 2
.limit stack 2
.end method
