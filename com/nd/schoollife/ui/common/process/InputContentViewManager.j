.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/process/InputContentViewManager
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$1
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$2
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$3
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$4
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$5
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$6
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$7
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$8
.inner class static synthetic inner com/nd/schoollife/ui/common/process/InputContentViewManager$9
.inner class public static final enum COMMENT_TYPE inner com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE outer com/nd/schoollife/ui/common/process/InputContentViewManager
.inner class public static abstract interface InputContentListener inner com/nd/schoollife/ui/common/process/InputContentViewManager$InputContentListener outer com/nd/schoollife/ui/common/process/InputContentViewManager
.inner class public static abstract interface OnCommentViewShowListener inner com/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener outer com/nd/schoollife/ui/common/process/InputContentViewManager
.inner class public static abstract interface SendCommentListener inner com/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener outer com/nd/schoollife/ui/common/process/InputContentViewManager
.inner class private TextLengthWatcher inner com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher outer com/nd/schoollife/ui/common/process/InputContentViewManager

.field public static final 'ALBUM_PICKED_WITH_DATA' I = 101


.field public static final 'AT_FRIEND_WITH_NAME' I = 102


.field public static final 'CAMERA_PICKED_WITH_DATA' I = 100


.field private static 'isSending' Z

.field private final 'IMG_PATHS' Ljava/lang/String;

.field private final 'LOCAL_FILE_PREFIX' Ljava/lang/String;

.field private final 'MAX_GIF_SIZE' J

.field private final 'QUALITY' I

.field private final 'RESULT_IMG' Ljava/lang/String;

.field private final 'SAVE_PIC_TAG' Ljava/lang/String;

.field private final 'SAVE_TYPE_TAG' Ljava/lang/String;

.field private 'mActivity' Landroid/app/Activity;

.field private 'mAdapter' Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;

.field private 'mBtnSend' Landroid/widget/Button;

.field private 'mCallback' Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;

.field private 'mContainer' Landroid/view/ViewGroup;

.field private 'mCustomCommentFilter' Lcom/nd/schoollife/ui/common/view/CustomCommentFilter;

.field private 'mEtContent' Lcom/common/android/ui/widget/SpenEditText;

.field private 'mExistView' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/View;>;"

.field private 'mGvMore' Landroid/widget/GridView;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mIvAdd' Landroid/widget/ImageView;

.field private 'mIvMore' Landroid/widget/ImageView;

.field private 'mIvSmiley' Landroid/widget/ImageView;

.field private 'mLengthWatcher' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher;

.field private 'mListener' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener;

.field private 'mOnCommentViewShowListener' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;

.field private 'mPhotoPath' Ljava/lang/String;

.field private 'mPositionListener' Lcom/nd/schoollife/ui/square/listener/PositionListener;

.field private 'mSView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'mSelected' Landroid/widget/LinearLayout;

.field private 'mSelectedPic' Landroid/widget/LinearLayout;

.field private 'mSoftInput' Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;

.field private 'mStrPicType' [Ljava/lang/String;

.field private 'mStrWord' Ljava/lang/String;

.field private 'mTvPicNum' Landroid/widget/TextView;

.field private 'mTvWordLength' Landroid/widget/TextView;

.field private 'mType' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;

.field private 'mUploadImgPaths' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mView' Landroid/view/View;

.field private 'mWordLength' I

.field private 'maxCount' I

.field private 'panelUpdateCallBack' Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;

.field private 'warnCount' I

.method public <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
aload 2
aload 3
aconst_null
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;Landroid/os/Bundle;)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
aload 0
aload 3
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mCallback Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mInflater Landroid/view/LayoutInflater;
ifnonnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mInflater Landroid/view/LayoutInflater;
L0:
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_comment I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_post_pic_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mTvPicNum Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/tv_post_send_length I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mTvWordLength Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/btn_common_comment_send I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mBtnSend Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/iv_common_comment_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvMore Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/iv_common_comment_smiley I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvSmiley Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/iv_common_comment_pic_add I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvAdd Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/set_common_comment_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/gv_common_comment_icons I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/sv_common_comment_smiley I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/ll_common_comment_selected I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelectedPic Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
getstatic com/nd/schoollife/R$id/ll_common_comment_pic_selected I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Lcom/nd/schoollife/ui/common/process/InputContentViewManager$1;)V
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mLengthWatcher Lcom/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher;
aload 0
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/initEvent()V
aload 4
ifnull L1
aload 0
aload 4
ldc "SAVE_PIC_TAG"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
aload 0
aload 4
ldc "SAVE_TYPE_TAG"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/updateUploadView()V
L1:
return
.limit locals 5
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
bipush 50
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/QUALITY I
aload 0
ldc2_w 5242880L
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/MAX_GIF_SIZE J
aload 0
ldc "file://"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/LOCAL_FILE_PREFIX Ljava/lang/String;
aload 0
ldc "SELECTED_IMG"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/RESULT_IMG Ljava/lang/String;
aload 0
ldc "imagePaths"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/IMG_PATHS Ljava/lang/String;
aload 0
ldc "SAVE_PIC_TAG"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/SAVE_PIC_TAG Ljava/lang/String;
aload 0
ldc "SAVE_TYPE_TAG"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/SAVE_TYPE_TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mWordLength I
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
bipush 50
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/QUALITY I
aload 0
ldc2_w 5242880L
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/MAX_GIF_SIZE J
aload 0
ldc "file://"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/LOCAL_FILE_PREFIX Ljava/lang/String;
aload 0
ldc "SELECTED_IMG"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/RESULT_IMG Ljava/lang/String;
aload 0
ldc "imagePaths"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/IMG_PATHS Ljava/lang/String;
aload 0
ldc "SAVE_PIC_TAG"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/SAVE_PIC_TAG Ljava/lang/String;
aload 0
ldc "SAVE_TYPE_TAG"
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/SAVE_TYPE_TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mWordLength I
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealLengthOfView(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)I
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mWordLength I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)I
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/warnCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mTvWordLength Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)I
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mCallback Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Ljava/util/HashMap;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelectedPic Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;I)V
aload 0
iload 1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/changePicNum(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvAdd Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/util/ArrayList;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/showImage(Ljava/util/ArrayList;I)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$800(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealPic()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealTakePhoto()V
return
.limit locals 1
.limit stack 1
.end method

.method private changePicNum(I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/post_select_pic_num I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
astore 2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mTvPicNum Landroid/widget/TextView;
aload 2
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
bipush 9
iload 1
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 7
.end method

.method private dealAT()V
bipush 102
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoWebioActivityToSelectAt(ILandroid/app/Activity;)V
return
.limit locals 1
.limit stack 2
.end method

.method private dealLengthOfView(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
astore 3
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
if_acmpne L1
aload 1
ldc "\n"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 3
L1:
aload 0
aload 3
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
f2i
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mWordLength I
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mStrWord Ljava/lang/String;
ifnonnull L2
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/post_send_words_tip I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mStrWord Ljava/lang/String;
L2:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mWordLength I
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
if_icmplt L3
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mStrWord Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
L4:
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 3
aload 1
bipush 47
invokevirtual java/lang/String/indexOf(I)I
istore 2
aload 3
new android/text/style/ForegroundColorSpan
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/sl_cor_post_send_word_length_legal I
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
iload 2
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mTvWordLength Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mStrWord Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mWordLength I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
goto L4
.limit locals 4
.limit stack 5
.end method

.method private dealPic()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 9
if_icmplt L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/tweet_upload_images_limit I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
ldc com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "imagePaths"
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 1
bipush 101
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method private dealSmiley()V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/toogleSmileyView()V
return
.limit locals 1
.limit stack 1
.end method

.method private dealTakePhoto()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 9
if_icmplt L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/tweet_upload_images_limit I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
new android/content/Intent
dup
ldc "android.media.action.IMAGE_CAPTURE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/getSotrePath()Ljava/lang/String;
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mPhotoPath Ljava/lang/String;
aload 1
ldc "output"
new java/io/File
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mPhotoPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.extra.videoQuality"
bipush 50
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 1
bipush 100
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 5
.end method

.method private getSotrePath()Ljava/lang/String;
new android/text/format/Time
dup
invokespecial android/text/format/Time/<init>()V
astore 1
aload 1
invokevirtual android/text/format/Time/setToNow()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/DCIM/Camera/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
aload 3
invokevirtual java/io/File/isDirectory()Z
ifne L0
aload 3
invokevirtual java/io/File/mkdirs()Z
pop
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "IMG_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
ldc "%Y%m%d_%H%M%S"
invokevirtual android/text/format/Time/format(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private getView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)Landroid/view/View;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$9/$SwitchMap$com$nd$schoollife$ui$common$process$InputContentViewManager$COMMENT_TYPE [I
aload 1
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/ordinal()I
iaload
tableswitch 1
L0
L1
L2
default : L3
L3:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aconst_null
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L4:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
ifnull L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
invokevirtual java/util/HashMap/keySet()Ljava/util/Set;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L6:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelectedPic Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
aload 3
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/widget/LinearLayout/removeView(Landroid/view/View;)V
goto L6
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mAdapter Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;
getstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/INSTANCE Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/InputContentIconsManager/getIcon(Landroid/content/Context;Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)Ljava/util/ArrayList;
invokevirtual com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/setAppList(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mAdapter Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;
invokevirtual com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/notifyDataSetChanged()V
aload 0
sipush 5000
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
aload 0
sipush 4900
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/warnCount I
aload 0
iconst_1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/isShowMore(Z)V
goto L3
L1:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mAdapter Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;
getstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/INSTANCE Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/InputContentIconsManager/getIcon(Landroid/content/Context;Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)Ljava/util/ArrayList;
invokevirtual com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/setAppList(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mAdapter Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;
invokevirtual com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/notifyDataSetChanged()V
aload 0
sipush 140
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
aload 0
bipush 70
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/warnCount I
aload 0
iconst_1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/isShowMore(Z)V
goto L3
L2:
aload 0
sipush 140
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
aload 0
bipush 70
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/warnCount I
aload 0
iconst_0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/isShowMore(Z)V
goto L3
L7:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
L5:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnull L8
aload 0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/changePicNum(I)V
L8:
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/initStates(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method private initEvent()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mBtnSend Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvMore Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvSmiley Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvAdd Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mView Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new com/nd/schoollife/ui/common/adapter/InputContentIconAdapter
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokespecial com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mAdapter Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mAdapter Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;
getstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/INSTANCE Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/InputContentIconsManager/getIcon(Landroid/content/Context;Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)Ljava/util/ArrayList;
invokevirtual com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/setAppList(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mAdapter Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mLengthWatcher Lcom/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher;
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
ldc_w 2147483647
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;II)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getDefaultTextChangeListener()Landroid/text/TextWatcher;
invokevirtual com/common/android/ui/widget/SpenEditText/removeTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_4
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
new com/nd/schoollife/ui/common/process/InputContentViewManager$1
dup
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$1/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
invokevirtual com/common/android/ui/widget/SpenEditText/setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
aload 0
new com/nd/schoollife/ui/common/view/CustomCommentFilter
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getTextSize()F
invokespecial com/nd/schoollife/ui/common/view/CustomCommentFilter/<init>(Landroid/content/Context;F)V
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mCustomCommentFilter Lcom/nd/schoollife/ui/common/view/CustomCommentFilter;
return
.limit locals 1
.limit stack 5
.end method

.method private isShowMore(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvMore Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
bipush 8
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvMore Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvMore Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvMore Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private showImage(Ljava/util/ArrayList;I)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;I)V"
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
L0:
return
L1:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
ldc com/nd/schoollife/ui/post/activity/ImageBrowserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
ldc "ImageList"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 3
ldc "position"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "isLocalUri"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 3
bipush 101
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 4
.end method

.method private showSelectPicType()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mStrPicType [Ljava/lang/String;
ifnonnull L0
aload 0
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/local_image_lib I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/take_photo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mStrPicType [Ljava/lang/String;
L0:
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mStrPicType [Ljava/lang/String;
new com/nd/schoollife/ui/common/process/InputContentViewManager$4
dup
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$4/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private updateUploadView()V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/showPicView()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
invokevirtual java/util/HashMap/keySet()Ljava/util/Set;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 5
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelectedPic Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/widget/LinearLayout/removeView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L1
L2:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
bipush 9
if_icmpne L3
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvAdd Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L4:
iconst_0
istore 1
L5:
iload 1
iload 2
if_icmpge L6
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 4
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L7
L8:
iload 1
iconst_1
iadd
istore 1
goto L5
L3:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mIvAdd Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L4
L7:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelectedPic Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 3
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_comment_pic_selected I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 5
aload 5
getstatic com/nd/schoollife/R$id/iv_comment_selected I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 6
aload 5
getstatic com/nd/schoollife/R$id/iv_comment_selected_del I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
new com/nd/schoollife/ui/common/process/InputContentViewManager$2
dup
aload 0
aload 4
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$2/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
aload 6
new com/nd/schoollife/ui/common/process/InputContentViewManager$3
dup
aload 0
aload 4
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$3/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mExistView Ljava/util/HashMap;
aload 4
aload 5
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelectedPic Landroid/widget/LinearLayout;
aload 5
iload 3
iconst_1
isub
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;I)V
goto L8
L6:
aload 0
iload 2
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/changePicNum(I)V
return
.limit locals 7
.limit stack 5
.end method

.method public getEditText()Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPanelUpdateCallBack()Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/panelUpdateCallBack Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPositionListener()Lcom/nd/schoollife/ui/square/listener/PositionListener;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mPositionListener Lcom/nd/schoollife/ui/square/listener/PositionListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hideAllView()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
ifne L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L2:
return
.limit locals 1
.limit stack 2
.end method

.method public hideInputMethod()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
ifnull L0
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public hideSendingDialog()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mBtnSend Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mBtnSend Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/comment_sendbtn_send I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
putstatic com/nd/schoollife/ui/common/process/InputContentViewManager/isSending Z
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/ui/widget/SpenEditText/setEnabled(Z)V
return
.limit locals 1
.limit stack 3
.end method

.method public hideView()V
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager/isSending Z
ifeq L0
L1:
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideInputMethod()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/getChildCount()I
ifle L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/removeAllViews()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mOnCommentViewShowListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mOnCommentViewShowListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;
invokeinterface com/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener/afterCommentViewHide()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public initStates(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)V
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager/isSending Z
ifeq L0
return
L0:
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setType(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideInputMethod()V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideSendingDialog()V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideAllView()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_common_comment_send I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aconst_null
astore 1
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L3
L2:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/post_content_not_null I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
L4:
return
L3:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/just_share_images I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 3
L5:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener;
ifnull L4
aload 3
ldc "\n"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener;
aload 3
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
aload 1
invokeinterface com/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener/onSendBefore(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V 3
return
L1:
aload 3
invokestatic com/product/android/utils/ContentUtils/replaceAllInputAt(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getAtUserList(Ljava/lang/String;)Ljava/lang/String;
astore 1
goto L5
L0:
iload 2
getstatic com/nd/schoollife/R$id/iv_common_comment_more I
if_icmpne L6
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/toogleMoreView()V
return
L6:
iload 2
getstatic com/nd/schoollife/R$id/set_common_comment_content I
if_icmpne L7
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/changeSoftInput(Landroid/view/View;)V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideAllView()V
return
L7:
iload 2
getstatic com/nd/schoollife/R$id/iv_common_comment_pic_add I
if_icmpne L8
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/showSelectPicType()V
return
L8:
iload 2
getstatic com/nd/schoollife/R$id/iv_common_comment_smiley I
if_icmpne L4
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealSmiley()V
return
.limit locals 4
.limit stack 4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager/isSending Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
getstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/INSTANCE Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentIconsManager/getType()Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
if_acmpne L4
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
bipush 8
if_icmpne L5
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L7
L6:
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealPic()V
L8:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
ifne L3
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
return
L7:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L8
L5:
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealPic()V
goto L8
L4:
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealAT()V
return
L1:
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealTakePhoto()V
return
L2:
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/dealAT()V
return
.limit locals 6
.limit stack 2
.end method

.method public onResultAt(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideAllView()V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
ldc "name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
i2f
fcmpl
ifle L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/post_conmment_auto_cut I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
aload 1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/insertAtName(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)V
return
.limit locals 2
.limit stack 6
.end method

.method public onResultCamera(Landroid/content/Intent;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mPhotoPath Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/updateUploadView()V
return
.limit locals 2
.limit stack 3
.end method

.method public onResultPic(Landroid/content/Intent;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
aload 1
ldc "SELECTED_IMG"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 2
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
aload 2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/isGifPicture(Ljava/lang/String;)Z
ifeq L2
aload 3
invokevirtual java/io/File/length()J
ldc2_w 5242880L
lcmp
ifle L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/gif_file_exceed_limit I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
L3:
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/updateUploadView()V
return
.limit locals 4
.limit stack 4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "SAVE_PIC_TAG"
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
ifnull L0
aload 1
ldc "SAVE_TYPE_TAG"
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/name()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public onSendResult(Z)V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideSendingDialog()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
L0:
iload 1
ifeq L1
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public setOnCommentViewShowListener(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mOnCommentViewShowListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setPanelUpdateCallBack(Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/panelUpdateCallBack Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;
return
.limit locals 2
.limit stack 2
.end method

.method public setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mPositionListener Lcom/nd/schoollife/ui/square/listener/PositionListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSendCommentResult(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
return
.limit locals 2
.limit stack 2
.end method

.method public showCommentView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager/isSending Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mOnCommentViewShowListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mOnCommentViewShowListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;
invokeinterface com/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener/beforeCommentViewShow()Z 0
ifeq L1
L2:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/getView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)Landroid/view/View;
astore 1
aload 1
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/removeAllViews()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mContainer Landroid/view/ViewGroup;
aload 1
iconst_m1
bipush -2
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;II)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;II)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
new com/nd/schoollife/ui/common/process/InputContentViewManager$5
dup
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$5/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
invokevirtual com/common/android/utils/smiley/SmileyView/setWordLengthConfig(Lcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
new com/nd/schoollife/ui/common/process/InputContentViewManager$6
dup
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$6/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
invokevirtual com/common/android/utils/smiley/SmileyView/setOnSmileyCutListener(Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getDefaultTextChangeListener()Landroid/text/TextWatcher;
invokevirtual com/common/android/ui/widget/SpenEditText/removeTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mCustomCommentFilter Lcom/nd/schoollife/ui/common/view/CustomCommentFilter;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/maxCount I
invokevirtual com/nd/schoollife/ui/common/view/CustomCommentFilter/setMaxLength(I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mCustomCommentFilter Lcom/nd/schoollife/ui/common/view/CustomCommentFilter;
aastore
invokevirtual com/common/android/ui/widget/SpenEditText/setFilters([Landroid/text/InputFilter;)V
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$9/$SwitchMap$com$nd$schoollife$ui$common$process$InputContentViewManager$COMMENT_TYPE [I
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/ordinal()I
iaload
tableswitch 1
L3
L4
default : L5
L5:
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
aload 2
invokevirtual com/common/android/ui/widget/SpenEditText/setHint(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/ui/widget/SpenEditText/setEnabled(Z)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mOnCommentViewShowListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mOnCommentViewShowListener Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;
invokeinterface com/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener/afterCommentViewShow()V 0
return
L3:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/comment_content_hint_comment I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
astore 2
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager$7
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$7/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setSendCommentResult(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener;)V
goto L5
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/str_do_reply I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "@"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager$8
dup
aload 0
aload 3
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$8/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setSendCommentResult(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener;)V
goto L5
.limit locals 4
.limit stack 5
.end method

.method public showInputMethod()V
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager/isSending Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
ifnull L1
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
ifnull L1
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideAllView()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/showSoftInput(Landroid/view/View;)V
return
.limit locals 1
.limit stack 2
.end method

.method public showPicView()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L2:
return
.limit locals 1
.limit stack 2
.end method

.method public showSendingDialog()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mBtnSend Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mBtnSend Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/comment_sendbtn_sending I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_1
putstatic com/nd/schoollife/ui/common/process/InputContentViewManager/isSending Z
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mEtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_0
invokevirtual com/common/android/ui/widget/SpenEditText/setEnabled(Z)V
return
.limit locals 1
.limit stack 3
.end method

.method public toogleMoreView()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
bipush 8
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public toogleSmileyView()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
ifne L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mGvMore Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSelected Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
bipush 8
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/mSView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public updateOperatorPanelCommentCount(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/panelUpdateCallBack Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager/panelUpdateCallBack Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;
aload 1
invokeinterface com/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack/updateCommentInfo(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method
