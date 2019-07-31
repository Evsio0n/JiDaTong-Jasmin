.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/PostSendActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$1
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$2
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$3
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$4
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$5
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$6
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$7
.inner class private TextLengthWatcher inner com/nd/schoollife/ui/post/activity/PostSendActivity$TextLengthWatcher outer com/nd/schoollife/ui/post/activity/PostSendActivity

.field public static final 'ALBUM_PICKED_WITH_DATA' I = 101


.field public static final 'AT_FRIEND_WITH_NAME' I = 102


.field public static final 'CAMERA_PICKED_WITH_DATA' I = 100


.field static final 'FLAG_SEND_POST_FAIL' I = 1


.field static final 'FLAG_SEND_POST_SUCCESS' I = 0


.field public static final 'REQUEST_CODE_SEND_POST' I = 999


.field static final 'Tips_Alive_Time' J = 1500L


.field private final 'LOCAL_FILE_PREFIX' Ljava/lang/String;

.field private final 'MAX_GIF_SIZE' J

.field private final 'QUALITY' I

.field private final 'SAVE_PHOTO_PATH_TAG' Ljava/lang/String;

.field private final 'SAVE_PIC_TAG' Ljava/lang/String;

.field private final 'TEXT_SIZE' I

.field private 'mEtContent' Lcom/common/android/ui/widget/SpenEditText;

.field private 'mExistView' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/View;>;"

.field private 'mHandler' Landroid/os/Handler;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mIvAdd' Landroid/widget/ImageView;

.field private 'mPhotoPath' Ljava/lang/String;

.field private 'mSView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'mSelected' Landroid/widget/LinearLayout;

.field private 'mSelectedPic' Landroid/widget/LinearLayout;

.field private 'mSelectedPicNum' Landroid/widget/TextView;

.field private 'mSoftInput' Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;

.field private 'mStrPicType' [Ljava/lang/String;

.field private 'mStrWord' Ljava/lang/String;

.field private 'mTeamOrCommunityId' J

.field private 'mTipsFailDialog' Lcom/nd/schoollife/ui/common/fragment/TipsDialog;

.field private 'mTipsSendingDialog' Lcom/nd/schoollife/ui/common/fragment/TipsDialog;

.field private 'mTipsSuccessDialog' Lcom/nd/schoollife/ui/common/fragment/TipsDialog;

.field private 'mTvPicNum' Landroid/widget/TextView;

.field private 'mTvWordLength' Landroid/widget/TextView;

.field private 'mUploadImgPaths' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mWordLength' I

.field private 'scopeType' I

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
bipush 50
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/QUALITY I
aload 0
bipush 17
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/TEXT_SIZE I
aload 0
ldc2_w 5242880L
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/MAX_GIF_SIZE J
aload 0
ldc "file://"
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/LOCAL_FILE_PREFIX Ljava/lang/String;
aload 0
ldc "SAVE_PIC_TAG"
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/SAVE_PIC_TAG Ljava/lang/String;
aload 0
ldc "SAVE_PHOTO_PATH_TAG"
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/SAVE_PHOTO_PATH_TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mWordLength I
aload 0
new android/os/Handler
dup
new com/nd/schoollife/ui/post/activity/PostSendActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$1/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
invokespecial android/os/Handler/<init>(Landroid/os/Handler$Callback;)V
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 6
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/closeTipsDialog()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealTakePhoto()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealLengthOfView(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)Ljava/util/HashMap;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPic Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;I)V
aload 0
iload 1
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/changePicNum(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mIvAdd Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;Ljava/util/ArrayList;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/showImage(Ljava/util/ArrayList;I)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$900(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealPic()V
return
.limit locals 1
.limit stack 1
.end method

.method private changePicNum(I)V
aload 0
getstatic com/nd/schoollife/R$string/post_select_pic_num I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
astore 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTvPicNum Landroid/widget/TextView;
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
iload 1
ifle L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPicNum Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
bipush 8
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPicNum Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPicNum Landroid/widget/TextView;
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPicNum Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 3
.limit stack 7
.end method

.method private closeTipsDialog()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ifnull L1
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method private dealAT()V
bipush 102
aload 0
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoWebioActivityToSelectAt(ILandroid/app/Activity;)V
return
.limit locals 1
.limit stack 2
.end method

.method private dealLengthOfView(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
aload 1
iconst_1
bipush 10
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
f2i
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mWordLength I
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mStrWord Ljava/lang/String;
ifnonnull L2
aload 0
aload 0
getstatic com/nd/schoollife/R$string/post_send_words_tip I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mStrWord Ljava/lang/String;
L2:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mStrWord Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mWordLength I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
sipush 5000
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 3
aload 1
bipush 47
invokevirtual java/lang/String/indexOf(I)I
istore 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mWordLength I
sipush 5000
if_icmpge L3
aload 3
new android/text/style/ForegroundColorSpan
dup
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/sl_cor_post_send_word_length_legal I
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
iload 2
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L4:
aload 3
new android/text/style/AbsoluteSizeSpan
dup
bipush 17
iconst_1
invokespecial android/text/style/AbsoluteSizeSpan/<init>(IZ)V
iconst_0
iload 2
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTvWordLength Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mWordLength I
goto L1
L3:
aload 3
new android/text/style/ForegroundColorSpan
dup
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/sl_cor_post_send_word_length_illegal I
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
iload 2
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L4
.limit locals 4
.limit stack 5
.end method

.method private dealPic()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 9
if_icmplt L0
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
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
ldc com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "imagePaths"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 0
aload 1
bipush 101
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method private dealSmiley()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method private dealTakePhoto()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 9
if_icmplt L0
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
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
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/getSotrePath()Ljava/lang/String;
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mPhotoPath Ljava/lang/String;
aload 1
ldc "output"
new java/io/File
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mPhotoPath Ljava/lang/String;
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
aload 1
bipush 100
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/startActivityForResult(Landroid/content/Intent;I)V
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

.method private isNetAvailable(Landroid/content/Context;)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual android/net/NetworkInfo/isAvailable()Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method private sendPost()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getAtUserList(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L2
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/post_content_not_null I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
return
L2:
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/just_share_images I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
L3:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/showSending()V
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
iconst_3
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_5
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/scopeType I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTeamOrCommunityId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_2
aload 1
aastore
dup
iconst_3
aload 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
aastore
dup
iconst_4
aload 3
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mWordLength I
sipush 5000
if_icmple L4
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mCtx Landroid/content/Context;
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/post_content_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 5000
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L4:
aload 1
invokestatic com/product/android/utils/ContentUtils/replaceAllInputAt(Ljava/lang/String;)Ljava/lang/String;
astore 1
goto L3
.limit locals 4
.limit stack 6
.end method

.method private showFail()V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/common/fragment/TipsDialog
dup
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog/<init>()V
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getstatic com/nd/schoollife/R$string/post_send_dialog_tip I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getstatic com/nd/schoollife/R$string/post_send_dialog_content_fail I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setContent(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_NO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
L0:
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsFailDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ldc "fail"
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mHandler Landroid/os/Handler;
new com/nd/schoollife/ui/post/activity/PostSendActivity$7
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$7/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
ldc2_w 1500L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 4
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
aload 3
bipush 101
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 4
.end method

.method private showSelectPicType()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mStrPicType [Ljava/lang/String;
ifnonnull L0
aload 0
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/local_image_lib I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/take_photo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mStrPicType [Ljava/lang/String;
L0:
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mStrPicType [Ljava/lang/String;
new com/nd/schoollife/ui/post/activity/PostSendActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$4/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private showSending()V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/common/fragment/TipsDialog
dup
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog/<init>()V
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getstatic com/nd/schoollife/R$string/post_send_dialog_tip I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getstatic com/nd/schoollife/R$string/post_send_dialog_content_sending I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setContent(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
new com/nd/schoollife/ui/post/activity/PostSendActivity$5
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$5/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_NO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
L0:
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ldc "sending"
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 2
.limit stack 4
.end method

.method private showSuccess()V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSuccessDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/common/fragment/TipsDialog
dup
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog/<init>()V
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSuccessDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSuccessDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getstatic com/nd/schoollife/R$string/post_send_dialog_tip I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSuccessDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getstatic com/nd/schoollife/R$string/post_send_dialog_content_success I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setContent(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSuccessDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_NO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
L0:
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSuccessDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ldc "success"
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mHandler Landroid/os/Handler;
new com/nd/schoollife/ui/post/activity/PostSendActivity$6
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$6/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
ldc2_w 1500L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method private updateUploadView()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
ifnonnull L2
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
L2:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
invokevirtual java/util/HashMap/keySet()Ljava/util/Set;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L3
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPic Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/widget/LinearLayout/removeView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
aload 5
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L3
L4:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
bipush 9
if_icmpne L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mIvAdd Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L6:
iconst_0
istore 1
L7:
iload 1
iload 2
if_icmpge L8
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 4
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L9
L10:
iload 1
iconst_1
iadd
istore 1
goto L7
L5:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mIvAdd Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L6
L9:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPic Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 3
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mInflater Landroid/view/LayoutInflater;
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
new com/nd/schoollife/ui/post/activity/PostSendActivity$2
dup
aload 0
aload 4
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$2/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;Ljava/lang/String;)V
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
new com/nd/schoollife/ui/post/activity/PostSendActivity$3
dup
aload 0
aload 4
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$3/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;Ljava/lang/String;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mExistView Ljava/util/HashMap;
aload 4
aload 5
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPic Landroid/widget/LinearLayout;
aload 5
iload 3
iconst_1
isub
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;I)V
goto L10
L8:
aload 0
iload 2
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/changePicNum(I)V
return
.limit locals 7
.limit stack 5
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_post_send I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_post_send_length I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTvWordLength Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_post_pic_num I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTvPicNum Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/set_post_send_content I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/sv_post_send_smiley I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_post_send_selected I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPic Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_post_send_pic_selected I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_post_send_photo_num I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelectedPicNum Landroid/widget/TextView;
aload 0
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/schoollife/R$string/send_new_post I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_right I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
getstatic com/nd/schoollife/R$drawable/btn_post_send_selector I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 1
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealLengthOfView(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L0
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/updateUploadView()V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mInflater Landroid/view/LayoutInflater;
ifnonnull L0
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mInflater Landroid/view/LayoutInflater;
L0:
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getIntent()Landroid/content/Intent;
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTeamOrCommunityId J
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getIntent()Landroid/content/Intent;
ldc "INT_SCOPE_TYPE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/scopeType I
aload 1
ifnull L1
aload 0
aload 1
ldc "SAVE_PIC_TAG"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 0
aload 1
ldc "SAVE_PHOTO_PATH_TAG"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mPhotoPath Ljava/lang/String;
L1:
aload 0
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
new com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/<init>(Landroid/content/Context;)V
iconst_3
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
getstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/LIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
astore 1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/ib_post_send_at I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_post_send_pic_add I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mIvAdd Landroid/widget/ImageView;
aload 0
getstatic com/nd/schoollife/R$id/ib_post_send_smiley I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/ib_post_send_take_phone I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_right I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/ib_post_send_photo I
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mIvAdd Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_4
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
new com/nd/schoollife/ui/post/activity/PostSendActivity$TextLengthWatcher
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity$TextLengthWatcher/<init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;Lcom/nd/schoollife/ui/post/activity/PostSendActivity$1;)V
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 5
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
iload 2
iconst_m1
if_icmpeq L7
return
L7:
iload 1
tableswitch 100
L0
L3
L5
default : L8
L8:
return
L0:
aload 0
aload 3
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/onResultCamera(Landroid/content/Intent;)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
L3:
aload 0
aload 3
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/onResultPic(Landroid/content/Intent;)V
L4:
return
L5:
aload 0
aload 3
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/onResultAt(Landroid/content/Intent;)V
L6:
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/set_post_send_content I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L2:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/iv_post_send_pic_add I
if_icmpne L3
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/showSelectPicType()V
return
L3:
iload 2
getstatic com/nd/schoollife/R$id/ib_post_send_at I
if_icmpne L4
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealAT()V
return
L4:
iload 2
getstatic com/nd/schoollife/R$id/ib_post_send_photo I
if_icmpne L5
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
bipush 8
if_icmpne L6
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L8
L7:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealPic()V
L9:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L8:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSelected Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
goto L9
L6:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealPic()V
goto L9
L5:
iload 2
getstatic com/nd/schoollife/R$id/ib_post_send_smiley I
if_icmpne L10
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealSmiley()V
return
L10:
iload 2
getstatic com/nd/schoollife/R$id/ib_post_send_take_phone I
if_icmpne L11
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealTakePhoto()V
return
L11:
iload 2
getstatic com/nd/schoollife/R$id/ib_post_send_take_phone I
if_icmpne L12
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/dealTakePhoto()V
return
L12:
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_right I
if_icmpne L13
aload 0
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/isNetAvailable(Landroid/content/Context;)Z
ifne L14
aload 0
getstatic com/nd/schoollife/R$string/net_warn_no_network I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L14:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/sendPost()V
return
L13:
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/onBackPressed()V
return
.limit locals 3
.limit stack 3
.end method

.method public onResultAt(Landroid/content/Intent;)V
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
aload 0
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mEtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/insertAtName(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onResultCamera(Landroid/content/Intent;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mPhotoPath Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/updateUploadView()V
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
putfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
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
getstatic com/nd/schoollife/R$string/gif_file_exceed_limit I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
L3:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/updateUploadView()V
return
.limit locals 4
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "SAVE_PIC_TAG"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 1
ldc "SAVE_PHOTO_PATH_TAG"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mPhotoPath Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
iconst_3
if_icmpne L0
aload 3
ifnull L0
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L1
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/showSuccess()V
L0:
return
L1:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostSendActivity/showFail()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity/mCtx Landroid/content/Context;
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method
