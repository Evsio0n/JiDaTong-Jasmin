.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetCommentActivity
.super com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity
.inner class static synthetic inner com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$1
.inner class private SendTask inner com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask outer com/android/u/weibo/weibo/ui/activity/TweetCommentActivity
.inner class private TextLengthWatcher inner com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$TextLengthWatcher outer com/android/u/weibo/weibo/ui/activity/TweetCommentActivity

.field private static final 'AT_FRIEND_WITH_NAME' I = 103


.field private static final 'BIND_WEIBO' I = 104


.field private static final 'MAX_POST_SIZE_OF_TWEET' I = 255


.field private static final 'MAX_SIZE_OF_TWEET' I = 140


.field private 'composeMore' Landroid/widget/CheckBox;

.field private 'isFromOutside' Z

.field private 'isOnlySina' Z

.field private 'mContent' Ljava/lang/String;

.field private 'mEdtContent' Lcom/common/android/ui/widget/SpenEditText;

.field private 'mRid' J

.field private 'mSmileyView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'mTweetId' J

.field private 'mWbAtView' Lcom/product/android/utils/wbAtUtils/WbAtView;

.field private 'mWords' Landroid/widget/TextView;

.field private 'sendTask' Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/isFromOutside Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/isOnlySina Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/isFromOutside Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Landroid/widget/CheckBox;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/composeMore Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mRid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mTweetId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/isOnlySina Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mWords Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private atFriend()V
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/ContactListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
bipush 103
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 1
.limit stack 5
.end method

.method protected handleBackButtonClick()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method protected handleRightButtonClick()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask
dup
aload 0
aload 0
getstatic com/android/u/weibo/R$string/wait I
invokespecial com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;Landroid/content/Context;I)V
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
ldc "cq"
ldc "onActivityResult"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 2
ifeq L0
iload 1
bipush 103
if_icmpne L1
aload 3
ifnull L1
aload 3
ldc "name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
L0:
return
L2:
aload 0
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/product/android/utils/wbAtUtils/WbAtView/insertAtName(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)V
return
L1:
iload 1
bipush 104
if_icmpne L0
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
getstatic com/android/u/weibo/R$drawable/btn_sync_sina_selected I
invokevirtual android/widget/ImageButton/setImageResource(I)V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/at I
if_icmpne L0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/atFriend()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/content I
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/smiley I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
bipush 8
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getWindowToken()Landroid/os/IBinder;
invokestatic com/common/android/utils/InputMethodUtils/collapseSoftInputMethod(Landroid/content/Context;Landroid/os/IBinder;)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/tweet_compose I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getIntent()Landroid/content/Intent;
ldc "comment"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mContent Ljava/lang/String;
aload 0
getstatic com/android/u/weibo/R$id/stub_tweet_header I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/initHeadComponent(I)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/android/u/weibo/R$drawable/xy_btn_ensure_bg I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/setRightButtonBackground(I)V
L1:
aload 0
getstatic com/android/u/weibo/R$string/post_new_comment I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/setHeadTitle(I)V
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/setRightButtonVisibility(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/content I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
new com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$TextLengthWatcher
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$TextLengthWatcher/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity$1;)V
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/word_length I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mWords Landroid/widget/TextView;
aload 0
getstatic com/android/u/weibo/R$id/at I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/smiley I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/photo I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/composeMore I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/composeMore Landroid/widget/CheckBox;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/composeMore Landroid/widget/CheckBox;
getstatic com/android/u/weibo/R$string/compose_more_retweet I
invokevirtual android/widget/CheckBox/setText(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/commentSmileyView I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_4
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_2
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getstatic com/android/u/weibo/R$id/scroll_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/findViewById(I)Landroid/view/View;
new com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener
dup
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokespecial com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/<init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
new com/product/android/utils/wbAtUtils/WbAtView
dup
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/product/android/utils/wbAtUtils/WbAtView/<init>(Landroid/content/Context;Landroid/widget/EditText;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mWbAtView Lcom/product/android/utils/wbAtUtils/WbAtView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/requestFocus()Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mContent Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/input_comment_content I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/common/android/ui/widget/SpenEditText/setHint(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mWords Landroid/widget/TextView;
sipush 140
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getIntent()Landroid/content/Intent;
ldc "isFromOutside"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/isFromOutside Z
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getIntent()Landroid/content/Intent;
ldc "tweet_id"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mTweetId J
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getIntent()Landroid/content/Intent;
ldc "is_only_sina"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/isOnlySina Z
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getIntent()Landroid/content/Intent;
ldc "rid"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mRid J
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L5
aload 0
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L5:
return
L0:
aload 0
getstatic com/android/u/weibo/R$string/send I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/setRightButtonText(I)V
goto L1
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mContent Ljava/lang/String;
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getTextSize()F
f2i
invokestatic com/product/android/utils/wbAtUtils/WbAtView/setSpanAtName(Landroid/content/Context;Landroid/text/Editable;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mContent Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokevirtual com/common/android/ui/widget/SpenEditText/setSelection(I)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mContent Ljava/lang/String;
sipush 140
ldc_w -16777216
ldc_w -65536
getstatic com/android/u/weibo/R$string/words_limit I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mWords Landroid/widget/TextView;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/judgeLengthIsOutOfRang(Landroid/content/Context;Ljava/lang/String;IIIILandroid/widget/TextView;)V
goto L4
.limit locals 2
.limit stack 7
.end method

.method protected onDestroy()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mWbAtView Lcom/product/android/utils/wbAtUtils/WbAtView;
invokevirtual com/product/android/utils/wbAtUtils/WbAtView/onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onPause()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/isShowing()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mContent Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mContent Ljava/lang/String;
bipush 32
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveSmiley(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getTextSize()F
f2i
invokestatic com/product/android/utils/wbAtUtils/WbAtView/setSpanAtName(Landroid/content/Context;Landroid/text/Editable;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/requestFocus()Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method protected onResume()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onResume()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/isShowing()Z
ifne L1
L0:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public showSimplyPopWindow()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method
