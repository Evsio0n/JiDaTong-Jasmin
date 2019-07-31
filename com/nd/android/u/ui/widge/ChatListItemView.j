.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" 
.end annotation
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$1
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$2
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$3
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$4

.field private 'clickBubble' Landroid/view/View$OnClickListener;

.field private 'clickFailimg' Landroid/view/View$OnClickListener;

.field private 'clickPortrait' Landroid/view/View$OnClickListener;

.field private 'heContentLayout' Landroid/widget/LinearLayout;

.field private 'heLayout' Landroid/widget/LinearLayout;

.field private 'heMergeBottom' Landroid/view/View;

.field private 'heMergeCenter' Landroid/view/View;

.field private 'heMergeTop' Landroid/view/View;

.field private 'heUserNameText' Landroid/widget/TextView;

.field private 'heface' Lcom/nd/android/u/ui/widge/CircleImageView;

.field private 'imgFailMy' Landroid/widget/ImageView;

.field private 'imgFailOthers' Landroid/widget/ImageView;

.field private 'isMerger' Z

.field private 'mContext' Landroid/content/Context;

.field private 'mDispalyingMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.field private 'mDisplayLayout' Landroid/widget/LinearLayout;

.field private 'mDisplayViews' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nd/android/u/controller/innerInterface/IChatListItem;>;"

.field private 'mDisplayingView' Lcom/nd/android/u/controller/innerInterface/IChatListItem;

.field private 'mHeFaceColoumn' Landroid/widget/LinearLayout;

.field private 'mHeViews' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nd/android/u/controller/innerInterface/IChatListItem;>;"

.field private 'mLongClickListener' Landroid/view/View$OnLongClickListener;

.field private 'mMyViews' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nd/android/u/controller/innerInterface/IChatListItem;>;"

.field private 'myContentLayout' Landroid/widget/LinearLayout;

.field private 'myLayout' Landroid/widget/LinearLayout;

.field private 'myMergeBottom' Landroid/view/View;

.field private 'myMergeCenter' Landroid/view/View;

.field private 'myMergeTop' Landroid/view/View;

.field private 'myface' Lcom/nd/android/u/ui/widge/CircleImageView;

.field private 'pbLoadingMy' Landroid/widget/ProgressBar;

.field private 'pbLoadingOthers' Landroid/widget/ProgressBar;

.field private 'rlRead' Landroid/widget/RelativeLayout;

.field private 'timeText' Landroid/widget/TextView;

.field private 'tvHeDuration' Landroid/widget/TextView;

.field private 'tvMyDuration' Landroid/widget/TextView;

.field private 'tvUnread' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/ui/widge/ChatListItemView/mMyViews Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/ui/widge/ChatListItemView/mHeViews Ljava/util/HashMap;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
putfield com/nd/android/u/ui/widge/ChatListItemView/clickPortrait Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
putfield com/nd/android/u/ui/widge/ChatListItemView/clickFailimg Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView$3/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
putfield com/nd/android/u/ui/widge/ChatListItemView/clickBubble Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView$4
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView$4/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
putfield com/nd/android/u/ui/widge/ChatListItemView/mLongClickListener Landroid/view/View$OnLongClickListener;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/getView()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myface Lcom/nd/android/u/ui/widge/CircleImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDispalyingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/ChatListItemView;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/widge/ChatListItemView/viewLocalImg(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/widge/ChatListItemView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/widge/ChatListItemView/viewImg(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heContentLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myContentLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addSubView(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
checkcast android/view/View
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
L0:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayViews Ljava/util/HashMap;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L1
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayViews Ljava/util/HashMap;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IChatListItem
putfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
ifnonnull L2
aload 0
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
aload 1
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
putfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayViews Ljava/util/HashMap;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
invokevirtual java/util/HashMap/containsValue(Ljava/lang/Object;)Z
ifne L3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayViews Ljava/util/HashMap;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
checkcast android/view/View
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 3
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifne L4
iload 2
iconst_5
if_icmpne L5
aload 3
iconst_0
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 3
iconst_0
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
L6:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heLayout Landroid/widget/LinearLayout;
aload 3
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IChatListItem/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayingView Lcom/nd/android/u/controller/innerInterface/IChatListItem;
checkcast android/view/View
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView/mDispalyingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
return
L5:
aload 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
ldc_w 60.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
ldc_w 3.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
goto L6
.limit locals 4
.limit stack 5
.end method

.method private isShowProgress(I)Z
iload 1
iconst_3
if_icmpeq L0
iload 1
sipush 20480
if_icmpeq L0
iload 1
iconst_4
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private viewImg(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;Ljava/util/ArrayList<Ljava/lang/String;>;)V"
invokestatic com/common/android/utils/SdCardUtils/isSdCardExist()Z
ifne L0
getstatic com/nd/android/u/chat/R$string/sdcard_not_found I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "urlList"
aload 1
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 4
ldc "THUMB_LIST"
aload 2
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 4
ldc "chat"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 3
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
ldc com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 3
.end method

.method private viewLocalImg(Ljava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 5
aload 1
invokestatic com/common/android/utils/UrlUtils/getFileUri(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 2
invokestatic com/common/android/utils/UrlUtils/getFileUri(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 4
ldc "THUMB_LIST"
aload 1
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
L0:
aload 4
ldc "urlList"
aload 5
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 4
ldc "chat"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 3
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 3
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
ldc com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 6
.limit stack 3
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDispalyingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getView()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_list_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_layout_he I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView/heLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_layout_me I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView/myLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/ll_he_column I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView/mHeFaceColoumn Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llMyContent I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView/myContentLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llOthersContent I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ChatListItemView/heContentLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_time_tv I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_face_me I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/CircleImageView
putfield com/nd/android/u/ui/widge/ChatListItemView/myface Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_face_he I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/CircleImageView
putfield com/nd/android/u/ui/widge/ChatListItemView/heface Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_merge_me_top I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/ChatListItemView/myMergeTop Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_merge_me_center I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/ChatListItemView/myMergeCenter Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_merge_he_bottom I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/ChatListItemView/heMergeBottom Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_merge_he_top I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/ChatListItemView/heMergeTop Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_merge_he_center I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/ChatListItemView/heMergeCenter Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_row_merge_me_bottom I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/ChatListItemView/myMergeBottom Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myface Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/clickPortrait Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heface Lcom/nd/android/u/ui/widge/CircleImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/clickPortrait Landroid/view/View$OnClickListener;
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/messagedetail_heusername_tv I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/pbLoadingMy I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingMy Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/pbLoadingOthers I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingOthers Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/imgFailMy I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView/imgFailMy Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/imgFailMy Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/clickFailimg Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/imgFailOthers I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView/imgFailOthers Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/imgFailOthers Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/clickFailimg Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvUnread I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView/tvUnread Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvMyDuration I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView/tvMyDuration Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvOthersDuration I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/rlRead I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/ui/widge/ChatListItemView/rlRead Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heContentLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mLongClickListener Landroid/view/View$OnLongClickListener;
invokevirtual android/widget/LinearLayout/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myContentLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mLongClickListener Landroid/view/View$OnLongClickListener;
invokevirtual android/widget/LinearLayout/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heContentLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/clickBubble Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myContentLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/clickBubble Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public hideOrShowBottom(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDispalyingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myMergeBottom Landroid/view/View;
iload 1
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heMergeBottom Landroid/view/View;
iload 1
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public mergeMessage()V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/ChatListItemView/isMerger Z
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDispalyingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myface Lcom/nd/android/u/ui/widge/CircleImageView;
bipush 8
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myMergeTop Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myMergeCenter Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heMergeTop Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heMergeCenter Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heface Lcom/nd/android/u/ui/widge/CircleImageView;
bipush 8
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTimeString()Ljava/lang/String; 0
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
aload 1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView/showUserFace(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTimeTextSize()F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_1
if_icmpne L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 1
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/isMerger Z
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/rlRead Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L5
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myContentLayout Landroid/widget/LinearLayout;
putfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mMyViews Ljava/util/HashMap;
putfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayViews Ljava/util/HashMap;
L6:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvUnread Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvMyDuration Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/imgFailMy Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/imgFailOthers Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingMy Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingOthers Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
istore 2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 3
iload 2
tableswitch -1
L7
L8
L9
L10
L9
L10
L8
L9
L8
L10
default : L8
L8:
iload 3
iconst_3
if_icmpeq L11
iload 3
sipush 20480
if_icmpeq L11
iload 3
iconst_4
if_icmpeq L11
iload 3
bipush 7
if_icmpne L12
L11:
iload 2
iconst_m1
if_icmpne L13
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingMy Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingOthers Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L12:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView/addSubView(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
iconst_5
if_icmpne L14
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heface Lcom/nd/android/u/ui/widge/CircleImageView;
bipush 8
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mHeFaceColoumn Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/timeText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heUserNameText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L3
L5:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heContentLayout Landroid/widget/LinearLayout;
putfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mHeViews Ljava/util/HashMap;
putfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayViews Ljava/util/HashMap;
goto L6
L9:
aload 0
iload 3
invokespecial com/nd/android/u/ui/widge/ChatListItemView/isShowProgress(I)Z
ifeq L15
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L16
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvMyDuration Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvMyDuration Landroid/widget/TextView;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProgress()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L12
L16:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/rlRead Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProgress()Ljava/lang/String; 0
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L12
L15:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingMy Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/pbLoadingOthers Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
goto L12
L10:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/imgFailMy Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/imgFailOthers Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L12
L7:
aload 0
iload 3
invokespecial com/nd/android/u/ui/widge/ChatListItemView/isShowProgress(I)Z
ifeq L12
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/rlRead Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
ldc "0%"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L12
L13:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/rlRead Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isRead()Z 0
ifne L17
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvUnread Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L17:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L18
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvMyDuration Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvMyDuration Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDuration()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L12
L18:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/tvHeDuration Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDuration()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L12
L14:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mHeFaceColoumn Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L19
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayLayout Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$drawable/chatto_bg I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
return
L19:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDisplayLayout Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$drawable/chatfrom_bg I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
return
.limit locals 5
.limit stack 3
.end method

.method public setMerger(Z)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/ChatListItemView/isMerger Z
return
.limit locals 2
.limit stack 2
.end method

.method protected showUserFace(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDispalyingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/mDispalyingMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myMergeTop Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heMergeTop Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myMergeCenter Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heMergeCenter Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heMergeBottom Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myMergeBottom Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myface Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heface Lcom/nd/android/u/ui/widge/CircleImageView;
bipush 8
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setVisibility(I)V
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myface Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/displayPortrait(Landroid/widget/ImageView;Z)V 2
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/myface Lcom/nd/android/u/ui/widge/CircleImageView;
bipush 8
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heface Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/setVisibility(I)V
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView/heface Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/displayPortrait(Landroid/widget/ImageView;Z)V 2
return
.limit locals 2
.limit stack 3
.end method
