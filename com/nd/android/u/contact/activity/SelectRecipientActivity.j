.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SelectRecipientActivity
.super com/nd/android/u/contact/activity/base/GroupOpActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/SelectRecipientActivity$1
.inner class inner com/nd/android/u/contact/activity/SelectRecipientActivity$2
.inner class inner com/nd/android/u/contact/activity/SelectRecipientActivity$3
.inner class inner com/nd/android/u/contact/activity/SelectRecipientActivity$4
.inner class private SearchUserTask inner com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask outer com/nd/android/u/contact/activity/SelectRecipientActivity

.field private static final 'TAG' Ljava/lang/String; = "SelectRecipientActivity"

.field private static final 'maxListSize' I = 500


.field private static final 'maxSize' I = 20


.field private 'adapter' Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;

.field private 'clearbtn' Landroid/widget/ImageView;

.field private 'contractList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'editText' Landroid/widget/EditText;

.field private 'freshflag' Z

.field private 'getMoreView' Landroid/widget/LinearLayout;

.field private 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field private 'groupkey' Ljava/lang/String;

.field private 'grouplist' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'grouptype' I

.field private 'handler' Landroid/os/Handler;

.field private 'imm' Landroid/view/inputmethod/InputMethodManager;

.field private 'init_dialog' Landroid/app/ProgressDialog;

.field private 'inputbtn' Landroid/widget/ImageView;

.field private 'inputly' Landroid/widget/LinearLayout;

.field private 'isfootviewcancel' Z

.field private 'isloading' Z

.field private 'listView' Landroid/widget/ListView;

.field private 'mSearchUserTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchUserTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'no_user_list_foot_layout' Landroid/widget/LinearLayout;

.field private 'onScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.field private 'pageNo' I

.field private final 'pos' I

.field private 'progressBar' Landroid/widget/ProgressBar;

.field private 'selectcontractlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field 'textWatcher' Landroid/text/TextWatcher;

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/selectcontractlist Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/total I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/pageNo I
aload 0
bipush 20
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/pos I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/isfootviewcancel Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/isloading Z
aload 0
new com/nd/android/u/contact/activity/SelectRecipientActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SelectRecipientActivity$1/<init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/SelectRecipientActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SelectRecipientActivity$2/<init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/textWatcher Landroid/text/TextWatcher;
aload 0
new com/nd/android/u/contact/activity/SelectRecipientActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SelectRecipientActivity$3/<init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/SelectRecipientActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SelectRecipientActivity$4/<init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/pageNo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/grouplist Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/pageNo I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$108(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/pageNo I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/pageNo I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/freshflag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/editText Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/isloading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1402(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/isloading Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/no_user_list_foot_layout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/getMoreView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/adapter Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/adapter Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/isfootviewcancel Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/isfootviewcancel Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/contractList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/contractList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/selectcontractlist Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/send_addfriend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/contact/R$layout/selectrecipient I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/getIntent()Landroid/content/Intent;
ldc "group"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
astore 1
aload 1
ifnull L2
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/grouplist Ljava/util/List;
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/grouplist Ljava/util/List;
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L2:
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/groupkey Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getChatGroupType()I
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/grouptype I
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/contractList Ljava/util/List;
ifnonnull L4
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/searchUser(Z)V
L4:
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/initEvent()V
L0:
iconst_1
ireturn
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/finish()V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected final groupOpMsgFail()V
aload 0
getstatic com/nd/android/u/contact/R$string/add_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final groupOpMsgSuccess()V
aload 0
getstatic com/nd/android/u/contact/R$string/add_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method public final initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponent()V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_header_right_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/selectrecipient_title I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/local_search_edit I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/editText Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/editText Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/textWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/local_search_bt_clear I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/clearbtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/local_search_bt_input I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/inputbtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/local_search_bt_input_ly I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/inputly Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/local_search_result_list I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/search_more_list_foot I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/getMoreView Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/getMoreView Landroid/widget/LinearLayout;
getstatic com/nd/android/u/contact/R$id/head_progressBar I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/progressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/no_user_list_foot_layout I
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/no_user_list_foot_layout Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 4
.end method

.method public final initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
aload 0
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
iconst_1
invokevirtual android/widget/ListView/setTextFilterEnabled(Z)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/inputbtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/inputly Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/clearbtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/rightBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/onScrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public final moresearchFriend()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/isloading Z
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/searchUser(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/local_search_bt_input I
if_icmpeq L0
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/local_search_bt_input_ly I
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/imm Landroid/view/inputmethod/InputMethodManager;
iconst_0
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/toggleSoftInput(II)V
L2:
return
L1:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/local_search_bt_clear I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/editText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_right I
if_icmpne L2
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/sendMessage2C()V
return
.limit locals 2
.limit stack 3
.end method

.method protected final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/init_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/init_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
return
.limit locals 6
.limit stack 0
.end method

.method public final onWindowFocusChanged(Z)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onWindowFocusChanged(Z)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/editText Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/editText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getContext()Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/editText Landroid/widget/EditText;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/showSoftInput(Landroid/view/View;I)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public final searchUser(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/freshflag Z
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Lcom/nd/android/u/contact/activity/SelectRecipientActivity$1;)V
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public final sendMessage2C()V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/selectcontractlist Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/selectcontractlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
getstatic com/nd/android/u/contact/R$string/not_select I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/selectcontractlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
ifle L2
iload 2
newarray long
astore 3
iconst_0
istore 1
L3:
iload 1
iload 2
if_icmpge L4
aload 3
iload 1
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/selectcontractlist Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/SearchContract
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
lastore
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20061
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L6:
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/startGroupOp()V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/grouptype I
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity/groupkey Ljava/lang/String;
aload 3
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsGroupAddMember(ILjava/lang/String;[J)Ljava/lang/String;
astore 3
aload 3
ifnull L7
aload 0
aload 3
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/setGenKey(Ljava/lang/String;)V
return
L7:
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectRecipientActivity/dismissDialog()V
return
.limit locals 4
.limit stack 4
.end method

.method protected final setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected final setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity/mGroupOpmessage Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
