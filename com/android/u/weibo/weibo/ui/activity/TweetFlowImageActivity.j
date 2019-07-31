.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity
.super com/product/android/ui/showImage/FlowImageActivity
.implements android/view/View$OnClickListener
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$4

.field public static final 'IS_DEL' Ljava/lang/String; = "IS_DEL"

.field public static final 'IS_LIKE' Ljava/lang/String; = "IS_LIKE"

.field private 'mDelDialog' Landroid/app/Dialog;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mImgDelBtn' Landroid/widget/ImageButton;

.field private 'mImgIndexTv' Landroid/widget/TextView;

.field private 'mImgSaveBtn' Landroid/widget/ImageButton;

.field private 'mIsDel' Z

.field private 'mIsLike' Z

.field private 'mLikeTask' Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;

.field private 'mPraiseBtn' Landroid/widget/Button;

.field private 'mTopicInfo' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/showImage/FlowImageActivity/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsDel Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsLike Z
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgDelBtn Landroid/widget/ImageButton;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgIndexTv Landroid/widget/TextView;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgSaveBtn Landroid/widget/ImageButton;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mPraiseBtn Landroid/widget/Button;
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;I)I
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgIndexTv Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;I)I
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1702(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;)Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Landroid/app/Dialog;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mDelDialog Landroid/app/Dialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsDel Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)Lcom/product/android/ui/showImage/FlowImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/adapter Lcom/product/android/ui/showImage/FlowImageAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doLike(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
istore 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iload 3
iconst_1
isub
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_1
istore 2
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/setPraiseNum()V
aload 0
iload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/showToastAfterPraise(Landroid/content/Context;II)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L3
L2:
aload 0
new com/android/u/weibo/weibo/ui/task/LikeAsyncTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iload 2
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mHandler Landroid/os/Handler;
invokespecial com/android/u/weibo/weibo/ui/task/LikeAsyncTask/<init>(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ILandroid/content/Context;Landroid/os/Handler;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mLikeTask Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L3:
new android/content/Intent
dup
ldc "like-event"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "id"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "like"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/sendBroadcast(Landroid/content/Intent;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iload 3
iconst_1
iadd
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 7
.end method

.method private doSave(Ljava/lang/String;Ljava/lang/String;)V
new com/product/android/utils/SaveTweetImageTask
dup
aload 1
aload 2
aload 0
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getWeiboNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokespecial com/product/android/utils/SaveTweetImageTask/<init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
iconst_0
anewarray java/lang/String
invokevirtual com/product/android/utils/SaveTweetImageTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method public finish()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsDel Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsLike Z
ifeq L1
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsDel Z
ifeq L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L4
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/ui/showImage/CommonImage
getfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
aload 2
ldc "SELECTED_IMG"
aload 3
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsDel Z
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsLike Z
ifeq L5
aload 2
ldc "is_like"
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/isTweetLike()Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsLike Z
L5:
aload 0
iconst_m1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/setResult(ILandroid/content/Intent;)V
L1:
aload 0
invokespecial com/product/android/ui/showImage/FlowImageActivity/finish()V
return
.limit locals 4
.limit stack 3
.end method

.method protected initTweetValue(Landroid/os/Bundle;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L7
aload 1
ifnull L0
aload 1
ldc "ImageList"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifne L5
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/getIntent()Landroid/content/Intent;
ldc "topicinfo"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/isLocalUri Z
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/getIntent()Landroid/content/Intent;
ldc "urls"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 1
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/getIntent()Landroid/content/Intent;
ldc "position"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L8
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L8
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifne L8
iconst_0
istore 2
L9:
iload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/size()I
if_icmpge L10
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/product/android/ui/showImage/CommonImage
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L9
L3:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/isLocalUri Z
L4:
goto L1
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L8:
iconst_0
istore 2
L11:
iload 2
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpge L10
new com/product/android/ui/showImage/CommonImage
dup
invokespecial com/product/android/ui/showImage/CommonImage/<init>()V
astore 3
aload 3
aload 1
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
putfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
aload 3
aload 3
getfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
putfield com/product/android/ui/showImage/CommonImage/image_thumb Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L11
L5:
aload 1
ldc "topicinfo"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
aload 0
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
L6:
aload 0
aload 1
ldc "IS_DEL"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsDel Z
aload 0
aload 1
ldc "IS_LIKE"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsLike Z
L10:
aload 0
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getWeiboNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/displayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return
L7:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 4
.limit stack 5
.end method

.method public isTweetLike()Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
i2l
lstore 2
getstatic com/android/u/weibo/R$id/img_delete I
i2l
lload 2
lcmp
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mDelDialog Landroid/app/Dialog;
ifnonnull L1
aload 0
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
getstatic com/android/u/weibo/R$string/prompt_title I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
getstatic com/android/u/weibo/R$string/sure_delete_picture I
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
getstatic com/android/u/weibo/R$string/confirm I
new com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
getstatic com/android/u/weibo/R$string/cancel I
new com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mDelDialog Landroid/app/Dialog;
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mDelDialog Landroid/app/Dialog;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mDelDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/isShowing()Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mDelDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/show()V
L2:
return
L0:
getstatic com/android/u/weibo/R$id/save_pic I
i2l
lload 2
lcmp
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/ui/showImage/CommonImage
astore 1
aload 0
aload 1
getfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
aload 1
getfield com/product/android/ui/showImage/CommonImage/image_ext Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/doSave(Ljava/lang/String;Ljava/lang/String;)V
return
L3:
getstatic com/android/u/weibo/R$id/praise_num I
i2l
lload 2
lcmp
ifne L2
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsLike Z
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/doLike(Landroid/view/View;)V
return
.limit locals 4
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/initTweetValue(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/showImage/FlowImageActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/setupViews()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/showImage/FlowImageActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/showImage/FlowImageActivity/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
aload 1
invokespecial com/product/android/ui/showImage/FlowImageActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L1
L0:
aload 1
ldc "topicinfo"
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 1
ldc "IS_DEL"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsDel Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "IS_LIKE"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mIsLike Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
return
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 4
.end method

.method public setPraiseNum()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mPraiseBtn Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/praise_press I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mPraiseBtn Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mPraiseBtn Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/praise_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
goto L1
.limit locals 1
.limit stack 5
.end method

.method public setupViews()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/tweet_flow_image_activity I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/rel_image_bottom Landroid/widget/RelativeLayout;
aload 1
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/isLocalUri Z
ifeq L0
aload 0
aload 1
getstatic com/android/u/weibo/R$id/img_delete I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
checkcast android/widget/ImageButton
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgDelBtn Landroid/widget/ImageButton;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgDelBtn Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgDelBtn Landroid/widget/ImageButton;
aload 0
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$id/img_index I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgIndexTv Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgIndexTv Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/position I
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgIndexTv Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
new com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)V
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
return
L0:
aload 0
aload 1
getstatic com/android/u/weibo/R$id/save_pic I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
checkcast android/widget/ImageButton
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgSaveBtn Landroid/widget/ImageButton;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgSaveBtn Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mImgSaveBtn Landroid/widget/ImageButton;
aload 0
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$id/praise_num I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mPraiseBtn Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mPraiseBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/setPraiseNum()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/mPraiseBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L1
.limit locals 2
.limit stack 6
.end method
