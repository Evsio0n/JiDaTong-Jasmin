.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspBottomFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$3
.inner class private final GetInfoTask inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask outer com/nd/android/u/publicNumber/ui/activity/PspBottomFragment
.inner class public static abstract interface PubNumBottomListener inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener outer com/nd/android/u/publicNumber/ui/activity/PspBottomFragment

.field private static final 'DELAYMILLIS' I = 200


.field private static final 'FIRSTITEM' I = 0


.field private static final 'HIDE' I = 0


.field private static final 'INTIITEMVALUE' I = -1


.field private static final 'MAX_THREAD_COUNT' I = 1


.field private static final 'SECONDITEM' I = 1


.field private static final 'SHOW' I = 1


.field private static final 'SHOWLOADTIEM' J = 2000L


.field private static final 'THIRDITEM' I = 2


.field private 'handler' Landroid/os/Handler;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
.end field

.field private 'handlerInit' Ljava/lang/Runnable;

.field private 'mDataSupplier' Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;

.field private 'mExecutorService' Ljava/util/concurrent/ExecutorService;

.field private 'mMenubtnlist' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;>;"

.field private 'mcallback' Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;

.field private 'mhidepositon' I

.field private 'mimgSwitch' Landroid/widget/LinearLayout;

.field private 'mloaddatalyt' Landroid/widget/LinearLayout;

.field private 'mpopFirstImgV' Landroid/widget/ImageView;

.field private 'mpopFirstItem' Landroid/widget/RelativeLayout;

.field private 'mpopFirsttv' Landroid/widget/TextView;

.field private 'mpopSecondImgV' Landroid/widget/ImageView;

.field private 'mpopSecondItem' Landroid/widget/RelativeLayout;

.field private 'mpopSecondtv' Landroid/widget/TextView;

.field private 'mpopSelectView' Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;

.field private 'mpopthirdImgV' Landroid/widget/ImageView;

.field private 'mpopthirdItem' Landroid/widget/RelativeLayout;

.field private 'mpopthirdtv' Landroid/widget/TextView;

.field private 'mpositon' I

.field private 'mpubNumBottomCallBack' Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
aload 0
iconst_m1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
aload 0
iconst_m1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$3
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$3/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/handlerInit Ljava/lang/Runnable;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/dealMenuSubbuttonOnClick(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mloaddatalyt Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;I)I
aload 0
iload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstImgV Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondImgV Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdImgV Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Ljava/lang/Runnable;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/handlerInit Ljava/lang/Runnable;
areturn
.limit locals 1
.limit stack 1
.end method

.method private dealMenuSubbuttonOnClick(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/type Ljava/lang/String;
ldc "click"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
ifnull L1
bipush 6
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/type Ljava/lang/String;
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/key Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/XmlMessageAnalyser/createEventMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aconst_null
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
L1:
return
L0:
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/type Ljava/lang/String;
ldc "view"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/url Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/appendSidUidToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/openWebView(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/handler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method private getMenuFromDB()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpubNumBottomCallBack Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpubNumBottomCallBack Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;
invokeinterface com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener/getMenu()Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo; 0
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuInfo/getMenuBottons()Ljava/util/ArrayList;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showMenuByList(Ljava/util/ArrayList;)V
return
L0:
aload 0
aconst_null
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showMenuByList(Ljava/util/ArrayList;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstItem Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondItem Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdItem Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mimgSwitch Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_frist_item_rl I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstItem Landroid/widget/RelativeLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_second_item_rl I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondItem Landroid/widget/RelativeLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_third_item_rl I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdItem Landroid/widget/RelativeLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_frist_item_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirsttv Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_second_item_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondtv Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_third_item_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdtv Landroid/widget/TextView;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_frist_item_ImgV I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstImgV Landroid/widget/ImageView;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_second_item_ImgV I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondImgV Landroid/widget/ImageView;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pop_third_item_ImgV I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdImgV Landroid/widget/ImageView;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_pub_num_lv_switch I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mimgSwitch Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/loading_data_lyt I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mloaddatalyt Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mloaddatalyt Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method public static newInstance()Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
new com/nd/android/u/publicNumber/ui/activity/PspBottomFragment
dup
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private showView(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
aload 2
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/hasSubButton()Z
ifeq L0
aload 3
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
aload 3
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 4
.limit stack 2
.end method

.method public getInfoByItemOnclick(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
.catch java/util/concurrent/RejectedExecutionException from L0 to L1 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mExecutorService Ljava/util/concurrent/ExecutorService;
ifnonnull L0
aload 0
iconst_1
invokestatic java/util/concurrent/Executors/newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mExecutorService Ljava/util/concurrent/ExecutorService;
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mExecutorService Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask
dup
aload 0
aload 1
aconst_null
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1;)V
invokeinterface java/util/concurrent/ExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/util/concurrent/RejectedExecutionException/printStackTrace()V
return
.limit locals 2
.limit stack 6
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/initView()V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/initEvent()V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getMenuFromDB()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAttach(Landroid/app/Activity;)V
.catch java/lang/ClassCastException from L0 to L1 using L2
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onAttach(Landroid/app/Activity;)V
L0:
aload 0
aload 1
checkcast com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpubNumBottomCallBack Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;
aload 1
instanceof com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter
ifeq L1
aload 0
aload 1
checkcast com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter
invokeinterface com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter/getDataSupplier()Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier; 0
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/ClassCastException/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
ifnonnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L2
L1:
return
L2:
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspMenuView
dup
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
invokespecial com/nd/android/u/publicNumber/ui/widget/PspMenuView/<init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/handler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/handlerInit Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/chat_pop_frist_item_rl I
if_icmpne L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
if_icmpne L4
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
ifne L4
aload 0
iconst_m1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
return
L4:
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/setAnchor(Landroid/view/View;I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/showLikePopDownSelection()V
return
L3:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_pop_second_item_rl I
if_icmpne L5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
if_icmpne L6
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
iconst_1
if_icmpne L6
aload 0
iconst_m1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
return
L6:
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondItem Landroid/widget/RelativeLayout;
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/setAnchor(Landroid/view/View;I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/showLikePopDownSelection()V
return
L5:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_pop_third_item_rl I
if_icmpne L7
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
if_icmpne L8
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
iconst_2
if_icmpne L8
aload 0
iconst_m1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mhidepositon I
aload 0
iconst_2
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
return
L8:
aload 0
iconst_2
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpositon I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdItem Landroid/widget/RelativeLayout;
iconst_2
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/setAnchor(Landroid/view/View;I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/showLikePopDownSelection()V
return
L7:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_pub_num_lv_switch I
if_icmpne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpubNumBottomCallBack Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpubNumBottomCallBack Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;
invokeinterface com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener/onClickSwitchBtn()V 0
return
.limit locals 3
.limit stack 6
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/chat_pub_bottom I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public onDestroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public showMenuByList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;>;)V"
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
tableswitch 0
L1
L2
L3
default : L4
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirsttv Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstImgV Landroid/widget/ImageView;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showView(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
iconst_1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondtv Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondImgV Landroid/widget/ImageView;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showView(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
iconst_2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdtv Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdImgV Landroid/widget/ImageView;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showView(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
ifnull L5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/dismiss()V
L5:
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspMenuView
dup
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mcallback Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
invokespecial com/nd/android/u/publicNumber/ui/widget/PspMenuView/<init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSelectView Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
L6:
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirsttv Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstImgV Landroid/widget/ImageView;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showView(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
goto L1
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondItem Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopthirdItem Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirsttv Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopFirstImgV Landroid/widget/ImageView;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showView(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mMenubtnlist Ljava/util/ArrayList;
iconst_1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondtv Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpopSecondImgV Landroid/widget/ImageView;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/showView(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
goto L1
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpubNumBottomCallBack Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;
ifnull L6
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/mpubNumBottomCallBack Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener;
invokeinterface com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$PubNumBottomListener/onClickSwitchBtn()V 0
return
.limit locals 2
.limit stack 6
.end method
