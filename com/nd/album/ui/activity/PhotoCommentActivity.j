.bytecode 50.0
.class public synchronized com/nd/album/ui/activity/PhotoCommentActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$1
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$2
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$3
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$4
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$5
.inner class private GetCommentListTask inner com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask outer com/nd/album/ui/activity/PhotoCommentActivity
.inner class private LikeTask inner com/nd/album/ui/activity/PhotoCommentActivity$LikeTask outer com/nd/album/ui/activity/PhotoCommentActivity
.inner class private SendCommentTask inner com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask outer com/nd/album/ui/activity/PhotoCommentActivity

.field private static final 'PAGE_SIZE' I = 5


.field private 'SendCommentTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'btnLike' Landroid/widget/Button;

.field private 'btnReply' Landroid/widget/Button;

.field private 'footView' Landroid/view/View;

.field private 'getCommentListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'hasAllComment' Z

.field private 'index' I

.field private 'isInputShow' Z

.field private 'likeTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mAdapter' Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;

.field private 'mCommentList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/album/bean/Comment;>;"

.field private 'mCommentListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mCurrentPage' I

.field private 'mEdtContent' Lcom/common/android/ui/widget/SpenEditText;

.field private 'mGetCommentListTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mHeaderView' Landroid/view/View;

.field private 'mImage' Lcom/product/android/commonInterface/album/Image;

.field private 'mLikeTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSendCommentTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSmileyView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'mTempList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/album/bean/Comment;>;"

.field private 'oap_id' Ljava/lang/Long;

.field private 'rootview' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
aload 0
iconst_0
putfield com/nd/album/ui/activity/PhotoCommentActivity/hasAllComment Z
aload 0
iconst_1
putfield com/nd/album/ui/activity/PhotoCommentActivity/mCurrentPage I
aload 0
new com/nd/album/ui/activity/PhotoCommentActivity$3
dup
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$3/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
putfield com/nd/album/ui/activity/PhotoCommentActivity/getCommentListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/album/ui/activity/PhotoCommentActivity$4
dup
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$4/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
putfield com/nd/album/ui/activity/PhotoCommentActivity/SendCommentTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/album/ui/activity/PhotoCommentActivity$5
dup
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$5/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
putfield com/nd/album/ui/activity/PhotoCommentActivity/likeTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mAdapter Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Z
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/hasAllComment Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mTempList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/album/ui/activity/PhotoCommentActivity;Z)Z
aload 0
iload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity/hasAllComment Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/album/ui/activity/PhotoCommentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/common/android/utils/task/genericTask/TaskParams;)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/getCommentList(Lcom/common/android/utils/task/genericTask/TaskParams;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/updateLikeDrawable()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Landroid/view/View;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/footView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/album/ui/activity/PhotoCommentActivity;Z)V
aload 0
iload 1
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/loadCommentList(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Z
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/isInputShow Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/album/ui/activity/PhotoCommentActivity;Z)Z
aload 0
iload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity/isInputShow Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Landroid/view/View;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/rootview Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/album/ui/activity/PhotoCommentActivity;)I
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCurrentPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$808(Lcom/nd/album/ui/activity/PhotoCommentActivity;)I
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCurrentPage I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/album/ui/activity/PhotoCommentActivity/mCurrentPage I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$900(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/updateReplyDrawable()V
return
.limit locals 1
.limit stack 1
.end method

.method private doBack()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "index"
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/index I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "image"
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/setResult(ILandroid/content/Intent;)V
aload 1
ldc "com.nd.android.image_action"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "action_flag"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/sendBroadcast(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method private getCommentList(Lcom/common/android/utils/task/genericTask/TaskParams;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mTempList Ljava/util/ArrayList;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/album/ui/activity/PhotoCommentActivity/mTempList Ljava/util/ArrayList;
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mTempList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
new com/nd/album/com/CommentCom
dup
invokespecial com/nd/album/com/CommentCom/<init>()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCurrentPage I
iconst_5
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mTempList Ljava/util/ArrayList;
invokevirtual com/nd/album/com/CommentCom/getPhotoComments(JIILjava/util/ArrayList;)I
istore 2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
iload 2
invokevirtual com/product/android/commonInterface/album/Image/setCommentcnt(I)V
L3:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 6
.end method

.method private initHeaderView(Landroid/view/View;Lcom/product/android/commonInterface/album/Image;)V
aload 1
getstatic com/nd/album/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 5
aload 1
getstatic com/nd/album/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 3
aload 1
getstatic com/nd/album/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/oap_id Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/oap_id Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokestatic com/nd/android/u/AlbumCallOtherModel/getUserSysAvatarId(J)I
aload 5
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/oap_id Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokestatic com/nd/android/u/AlbumCallOtherModel/getOapUserLocal(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
aload 5
ifnull L1
aload 3
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
invokevirtual com/product/android/commonInterface/album/Image/getUrl_480()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/appendSid(Ljava/lang/String;)Ljava/lang/String;
aload 4
aload 0
invokestatic com/nd/album/data/ImageCacheOpt/getAlbumNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/nd/album/data/ImageCacheOpt/getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L0:
aload 0
aload 1
getstatic com/nd/album/R$id/like_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/album/ui/activity/PhotoCommentActivity/btnLike Landroid/widget/Button;
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/updateLikeDrawable()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/btnLike Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
getstatic com/nd/album/R$id/reply_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/album/ui/activity/PhotoCommentActivity/btnReply Landroid/widget/Button;
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/updateReplyDrawable()V
return
L1:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/oap_id Ljava/lang/Long;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
.limit locals 6
.limit stack 5
.end method

.method private loadCommentList(Z)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mGetCommentListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mGetCommentListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask
dup
aload 0
aconst_null
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$GetCommentListTask/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/nd/album/ui/activity/PhotoCommentActivity$1;)V
putfield com/nd/album/ui/activity/PhotoCommentActivity/mGetCommentListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mGetCommentListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/getCommentListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "isFirst"
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mGetCommentListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method private updateLikeDrawable()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/btnLike Landroid/widget/Button;
aload 0
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$drawable/like_press I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
ifeq L2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/btnLike Landroid/widget/Button;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/btnLike Landroid/widget/Button;
aload 0
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$drawable/like I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto L1
L2:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/btnLike Landroid/widget/Button;
ldc ""
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 5
.end method

.method private updateReplyDrawable()V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getCommentcnt()I
ifeq L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/btnReply Landroid/widget/Button;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getCommentcnt()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/btnReply Landroid/widget/Button;
ldc ""
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/album/R$id/smiley I
if_icmpne L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
bipush 8
if_icmpne L1
aload 0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getWindowToken()Landroid/os/IBinder;
invokestatic com/common/android/utils/InputMethodUtils/collapseSoftInputMethod(Landroid/content/Context;Landroid/os/IBinder;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L2:
return
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
aload 0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
return
L0:
iload 2
getstatic com/nd/album/R$id/comment_content I
if_icmpne L3
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L3:
iload 2
getstatic com/nd/album/R$id/send I
if_icmpne L4
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokevirtual java/lang/String/length()I
ifne L5
aload 0
getstatic com/nd/album/R$string/please_enter_comment I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
aload 1
invokevirtual java/lang/String/length()I
sipush 140
if_icmple L6
aload 0
getstatic com/nd/album/R$string/comment_too_long I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSendCommentTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L7
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSendCommentTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpeq L2
L7:
aload 0
new com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask
dup
aload 0
aconst_null
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$SendCommentTask/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/nd/album/ui/activity/PhotoCommentActivity$1;)V
putfield com/nd/album/ui/activity/PhotoCommentActivity/mSendCommentTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSendCommentTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/SendCommentTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSendCommentTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L4:
iload 2
getstatic com/nd/album/R$id/back I
if_icmpne L8
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/doBack()V
return
L8:
iload 2
getstatic com/nd/album/R$id/like_count I
if_icmpne L2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
ifnull L2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mLikeTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L9
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mLikeTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpeq L2
L9:
aload 0
new com/nd/album/ui/activity/PhotoCommentActivity$LikeTask
dup
aload 0
aconst_null
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$LikeTask/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;Lcom/nd/album/ui/activity/PhotoCommentActivity$1;)V
putfield com/nd/album/ui/activity/PhotoCommentActivity/mLikeTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mLikeTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/likeTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mLikeTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 0
aload 1
ldc "Image"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/product/android/commonInterface/album/Image
putfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
aload 0
aload 1
ldc "index"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/album/ui/activity/PhotoCommentActivity/index I
aload 0
aload 1
ldc "oap_id"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield com/nd/album/ui/activity/PhotoCommentActivity/oap_id Ljava/lang/Long;
L1:
aload 0
getstatic com/nd/album/R$layout/comment_list_view I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/setContentView(I)V
aload 0
getstatic com/nd/album/R$id/actionbar_title I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/album/R$string/pic_comment I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/album/R$id/comment_list I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
ldc "layout_inflater"
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 1
aload 0
aload 1
getstatic com/nd/album/R$layout/photo_comment_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/album/ui/activity/PhotoCommentActivity/mHeaderView Landroid/view/View;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mHeaderView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
new com/nd/album/ui/adapter/PhotoCommentListAdapter
dup
aload 0
invokespecial com/nd/album/ui/adapter/PhotoCommentListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/album/ui/activity/PhotoCommentActivity/mAdapter Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mAdapter Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mHeaderView Landroid/view/View;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/initHeaderView(Landroid/view/View;Lcom/product/android/commonInterface/album/Image;)V
aload 0
aload 1
getstatic com/nd/album/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/album/ui/activity/PhotoCommentActivity/footView Landroid/view/View;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/footView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 0
getstatic com/nd/album/R$id/comment_content I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/ui/widget/SpenEditText/setFocusable(Z)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/ui/widget/SpenEditText/setFocusableInTouchMode(Z)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/requestFocus()Z
pop
aload 0
getstatic com/nd/album/R$id/smiley I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/album/R$id/send I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/album/R$id/back I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/album/R$id/albumSmileyView I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;I)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_4
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_2
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
L2:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mCommentListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nd/album/ui/activity/PhotoCommentActivity$1
dup
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$1/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
aload 0
getstatic com/nd/album/R$id/root I
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/findViewById(I)Landroid/view/View;
putfield com/nd/album/ui/activity/PhotoCommentActivity/rootview Landroid/view/View;
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/rootview Landroid/view/View;
invokevirtual android/view/View/getViewTreeObserver()Landroid/view/ViewTreeObserver;
new com/nd/album/ui/activity/PhotoCommentActivity$2
dup
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity$2/<init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
aload 0
iconst_1
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/loadCommentList(Z)V
return
L0:
aload 0
aload 1
ldc "Image"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/product/android/commonInterface/album/Image
putfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
aload 0
aload 1
ldc "index"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/album/ui/activity/PhotoCommentActivity/index I
aload 0
aload 1
ldc "oap_id"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield com/nd/album/ui/activity/PhotoCommentActivity/oap_id Ljava/lang/Long;
goto L1
.limit locals 2
.limit stack 4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L1
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L2:
iconst_1
ireturn
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/isInputShow Z
ifne L2
aload 0
invokespecial com/nd/album/ui/activity/PhotoCommentActivity/doBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onKeyUp(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "Image"
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
ldc "index"
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/index I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "oap_id"
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity/oap_id Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
return
.limit locals 2
.limit stack 4
.end method
