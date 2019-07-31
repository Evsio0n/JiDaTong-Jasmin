.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/CreateCommunityActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements android/view/GestureDetector$OnGestureListener
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$1
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$6
.inner class private CommunitySignGridListener inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CommunitySignGridListener outer com/nd/schoollife/ui/community/activity/CreateCommunityActivity
.inner class private CreateCommunityOnClickListener inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener outer com/nd/schoollife/ui/community/activity/CreateCommunityActivity
.inner class private OwnOnTextContextMenuItem inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$OwnOnTextContextMenuItem outer com/nd/schoollife/ui/community/activity/CreateCommunityActivity
.inner class private SelItemGridViewOnClickListener inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$SelItemGridViewOnClickListener outer com/nd/schoollife/ui/community/activity/CreateCommunityActivity
.inner class private SelItemGridViewOnLongClickListener inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$SelItemGridViewOnLongClickListener outer com/nd/schoollife/ui/community/activity/CreateCommunityActivity

.field public static final 'CATEGORIES_NUM' I = 12


.field public static final 'COMMUNITY_INTRO_MAX_LENGTH' I = 140


.field public static final 'COMMUNITY_NAME_MAX_LENGTH' I = 30


.field public static final 'MAX_SIGN_SEL_NUM' I = 5


.field private static final 'START_CHAGE_USR_IMG_POPMENU_REQUESTCODE' I = 1


.field public static final 'TAG' Ljava/lang/String;

.field private 'communityCategorys' Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;

.field private 'communityTags' Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;

.field 'communityTypeRadioGroup' Lcom/nd/schoollife/ui/team/view/ExRadioGroup;

.field 'createCommunityOnClickListener' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener;

.field private 'getImageUtil' Lcom/nd/schoollife/ui/common/util/GetImageUtil;

.field private 'mCurrentPage' I

.field private 'mGestureDetector' Landroid/view/GestureDetector;

.field private 'mInputMethodManager' Landroid/view/inputmethod/InputMethodManager;

.field private 'mTotalCategory' I

.field 'ownOnTextContextMenuItem' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$OwnOnTextContextMenuItem;

.field private 'selTags' Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;

.method static <clinit>()V
ldc com/nd/schoollife/ui/community/activity/CreateCommunityActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityCategorys Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTypeRadioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/createCommunityOnClickListener Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/ownOnTextContextMenuItem Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$OwnOnTextContextMenuItem;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCurrentPage I
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mTotalCategory I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityCategorys Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/updateCurSelSignCrid()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/uncheckCommunitySign(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/view/GestureDetector;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mGestureDetector Landroid/view/GestureDetector;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;I)V
aload 0
iload 1
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/popSelSignMenu(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2100(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/commit()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2300(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/popChageImgMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mTotalCategory I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private chageUsrImageCamera()V
aload 0
ldc "chage usr img from camera"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method private chageUsrImagePhotos()V
aload 0
ldc "chage usr img from photo"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method private commit()V
iconst_1
istore 1
iconst_1
istore 3
aload 0
getstatic com/nd/schoollife/R$id/et_create_community_community_name I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 4
aload 4
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
iconst_0
bipush 30
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
ldc_w 30.0F
fcmpl
ifle L0
aload 4
getstatic com/nd/schoollife/R$drawable/bg_exedittext_error I
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$string/community_name_length_must_less_30 I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
istore 1
L0:
aload 4
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
ldc "[a-zA-Z0-9_\u4e00-\u9fa5]*"
invokevirtual java/lang/String/matches(Ljava/lang/String;)Z
ifne L1
aload 4
getstatic com/nd/schoollife/R$drawable/bg_exedittext_error I
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$string/create_community_wrong_name_tip I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
istore 1
L1:
iload 1
istore 2
aload 4
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L2
aload 4
getstatic com/nd/schoollife/R$drawable/bg_exedittext_error I
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$string/community_name_length_must_bigger_0 I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
istore 2
L2:
iload 2
ifeq L3
aload 4
iconst_m1
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundColor(I)V
L3:
aload 0
getstatic com/nd/schoollife/R$id/ev_create_community_community_intro I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 4
iload 3
istore 1
aload 4
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
iconst_0
sipush 140
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
ldc_w 140.0F
fcmpl
ifle L4
aload 4
getstatic com/nd/schoollife/R$drawable/bg_exedittext_error I
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$string/community_intro_length_must_less_140 I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
istore 1
L4:
aload 4
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L5
aload 4
getstatic com/nd/schoollife/R$drawable/bg_exedittext_error I
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$string/community_intro_length_must_bigger_0 I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iconst_0
istore 1
L5:
iload 1
ifeq L6
aload 4
iconst_m1
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundColor(I)V
L6:
iload 2
ifeq L7
iload 1
ifeq L7
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/onCommitTask()V
L7:
return
.limit locals 5
.limit stack 3
.end method

.method private initCommunityTypeRadioGroup()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/onUpdateCommunityTypeTask()V
return
.limit locals 1
.limit stack 1
.end method

.method private onCommitTask()V
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
astore 3
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4102
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 3
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
astore 6
ldc ""
astore 3
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/getCropImgUri()Landroid/net/Uri;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/getCropImgUri()Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 3
L0:
aload 3
astore 4
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/getDefaultAvatarPath(Landroid/content/Context;)Ljava/lang/String;
astore 4
L1:
aload 0
getstatic com/nd/schoollife/R$id/et_create_community_community_name I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 7
aload 0
getstatic com/nd/schoollife/R$id/ev_create_community_community_intro I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 8
ldc ""
astore 3
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/size()I
istore 2
aload 3
astore 5
iload 2
ifeq L2
iconst_0
istore 1
L3:
aload 3
astore 5
iload 1
iload 2
iconst_1
isub
if_icmpgt L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTypeRadioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTypeRadioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
invokevirtual com/nd/schoollife/ui/team/view/ExRadioGroup/getCheckButton()Lcom/nd/schoollife/ui/team/view/ExRadioButton;
ifnonnull L5
L4:
aload 0
ldc "\u8bf7\u5148\u9009\u62e9\u4e00\u4e2a\u5206\u7c7b\uff01"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L5:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityCategorys Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTypeRadioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
invokevirtual com/nd/schoollife/ui/team/view/ExRadioGroup/getCheckButton()Lcom/nd/schoollife/ui/team/view/ExRadioButton;
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/getText()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/getCategoryInfoByName(Ljava/lang/String;)Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 6
iconst_5
anewarray java/lang/String
dup
iconst_0
aload 4
aastore
dup
iconst_1
aload 7
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aastore
dup
iconst_2
aload 3
aastore
dup
iconst_3
aload 5
aastore
dup
iconst_4
aload 8
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 9
.limit stack 6
.end method

.method private onNextCommunitySignTask()V
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
astore 1
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4098
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCurrentPage I
bipush 12
imul
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mTotalCategory I
if_icmpge L0
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCurrentPage I
iconst_1
iadd
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCurrentPage I
aload 1
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCurrentPage I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
ldc "12"
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L0:
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCurrentPage I
aload 1
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCurrentPage I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
ldc "12"
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private onUpdateCommunityTypeTask()V
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
astore 1
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4101
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc ""
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private popChageImgMenu()V
iconst_4
newarray int
astore 3
aload 3
iconst_0
getstatic com/nd/schoollife/R$id/btn_chage_img_from_camera I
iastore
aload 3
iconst_1
getstatic com/nd/schoollife/R$id/btn_chage_img_from_photos I
iastore
aload 3
iconst_2
getstatic com/nd/schoollife/R$id/btn_chage_img_cancel I
iastore
aload 3
iconst_3
getstatic com/nd/schoollife/R$id/rl_chage_usr_img_popmenu I
iastore
getstatic com/nd/schoollife/R$layout/popmenu_change_usrimg I
istore 1
aload 3
arraylength
istore 2
aload 0
aload 0
iload 1
aload 3
iconst_4
newarray int
dup
iconst_0
iconst_1
iastore
dup
iconst_1
iconst_2
iastore
dup
iconst_2
iconst_0
iastore
dup
iconst_3
iconst_0
iastore
iload 2
invokestatic com/nd/schoollife/ui/team/view/PopMenuActivity/getPopMenuIntent(Landroid/content/Context;I[I[II)Landroid/content/Intent;
iconst_1
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 8
.end method

.method private popSelSignMenu(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/create_community_confirm_delete_tag I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\"?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/operator I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 2
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/confirm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/cancel I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5
dup
aload 0
iload 1
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;I)V
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$6
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$6/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 9
.end method

.method private uncheckCommunitySign(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/findTagInfoByName(Ljava/lang/String;)I
istore 2
iload 2
iflt L0
aload 0
getstatic com/nd/schoollife/R$id/gv_create_community_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
iload 2
invokevirtual android/widget/GridView/getChildAt(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExtCheckButton
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheck(Z)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method private updateCurSelSignCrid()V
aload 0
getstatic com/nd/schoollife/R$id/gv_create_community_sel_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/community/adapter/CommunityTagSelectedGridviewAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagSelectedGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 5
.end method

.method private updateUserImage(Landroid/graphics/Bitmap;)V
aload 0
getstatic com/nd/schoollife/R$id/iv_create_community_community_img I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 2
aload 0
getstatic com/nd/schoollife/R$id/civ_community_avatar I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/CircleImageView
astore 3
aload 2
aload 1
bipush 10
invokestatic com/nd/schoollife/common/utils/ui/BlurUtil/blurFullBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 3
aload 1
invokevirtual com/nd/schoollife/ui/common/view/CircleImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_create_community I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/setContentView(I)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/initCommunityTypeRadioGroup()V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$drawable/ic_community_header I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/updateUserImage(Landroid/graphics/Bitmap;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 0
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$1;)V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/createCommunityOnClickListener Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener;
aload 0
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$OwnOnTextContextMenuItem
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$OwnOnTextContextMenuItem/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$1;)V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/ownOnTextContextMenuItem Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$OwnOnTextContextMenuItem;
aload 0
new com/nd/schoollife/ui/community/adapter/CommunityTagList
dup
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagList/<init>()V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
new com/nd/schoollife/ui/community/adapter/CommunityTagList
dup
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagList/<init>()V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
new com/nd/schoollife/ui/community/adapter/CommunityCategoryList
dup
invokespecial com/nd/schoollife/ui/community/adapter/CommunityCategoryList/<init>()V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityCategorys Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
aload 0
new com/nd/schoollife/ui/team/view/ExRadioGroup
dup
invokespecial com/nd/schoollife/ui/team/view/ExRadioGroup/<init>()V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTypeRadioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 0
new com/nd/schoollife/ui/common/util/GetImageUtil
dup
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/util/GetImageUtil/<init>(Landroid/content/Context;Landroid/os/Bundle;)V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
aload 0
new android/view/GestureDetector
dup
aload 0
invokespecial android/view/GestureDetector/<init>(Landroid/view/GestureDetector$OnGestureListener;)V
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mGestureDetector Landroid/view/GestureDetector;
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_create_community_next_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/createCommunityOnClickListener Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_create_community_commit I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/createCommunityOnClickListener Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_create_community_community_img I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/createCommunityOnClickListener Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/createCommunityOnClickListener Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/sv_create_community I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$1/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
invokevirtual android/widget/ScrollView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getstatic com/nd/schoollife/R$id/et_create_community_community_name I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 1
aload 1
new com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher
dup
aload 0
bipush 30
aload 1
invokespecial com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/<init>(Landroid/content/Context;ILandroid/widget/EditText;)V
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getstatic com/nd/schoollife/R$id/ev_create_community_community_intro I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 1
aload 1
new com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher
dup
aload 0
sipush 140
aload 1
invokespecial com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/<init>(Landroid/content/Context;ILandroid/widget/EditText;)V
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getstatic com/nd/schoollife/R$id/gv_create_community_sel_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
astore 1
aload 1
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$SelItemGridViewOnLongClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$SelItemGridViewOnLongClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$1;)V
invokevirtual android/widget/GridView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
aload 1
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$SelItemGridViewOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$SelItemGridViewOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$1;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/gv_create_community_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CommunitySignGridListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CommunitySignGridListener/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$1;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/nextCommunitySigns()V
return
.limit locals 2
.limit stack 6
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/schoollife/R$string/create_community I
invokevirtual android/widget/TextView/setText(I)V
aload 1
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 2
aload 2
invokevirtual android/widget/Button/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 3
aload 3
aload 0
ldc_w 20.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/view/ViewGroup$LayoutParams/width I
aload 3
aload 0
ldc_w 20.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/view/ViewGroup$LayoutParams/height I
aload 2
aload 3
invokevirtual android/widget/Button/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
getstatic com/nd/schoollife/R$drawable/search_community_clear I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public nextCommunitySigns()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/onNextCommunitySignTask()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 1
iconst_1
if_icmpne L0
iload 2
tableswitch 0
L1
L2
L3
default : L1
L1:
aload 0
iload 1
iload 2
aload 3
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onActivityResult(IILandroid/content/Intent;)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/doTakePhoto()V
goto L1
L3:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/doPickPhotoFromGallery()V
goto L1
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
iload 1
iload 2
aload 3
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/onActivityResult(IILandroid/content/Intent;)Landroid/graphics/Bitmap;
astore 4
aload 4
ifnull L1
aload 0
aload 4
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity/updateUserImage(Landroid/graphics/Bitmap;)V
goto L1
.limit locals 5
.limit stack 4
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
iconst_0
ireturn
.limit locals 5
.limit stack 1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/getImageUtil Lcom/nd/schoollife/ui/common/util/GetImageUtil;
aload 1
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/onSaveInstanceState(Landroid/os/Bundle;)V
L0:
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 0
getstatic com/nd/schoollife/R$id/sv_create_community I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
invokevirtual android/widget/ScrollView/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method
