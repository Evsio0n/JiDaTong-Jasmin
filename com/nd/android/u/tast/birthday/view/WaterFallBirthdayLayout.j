.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1
.inner class inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$2
.inner class inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$3
.inner class inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$4
.inner class Coordinate inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$Coordinate outer com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout
.inner class public InitTask inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask outer com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout
.inner class public RefreshTask inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask outer com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout

.field private 'Spacing' I

.field private 'addEndFlag' Z

.field private 'birthuserlist' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;>;"

.field private 'endt' I

.field 'flowBirthdayViewList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;>;"

.field private 'footLayout' Landroid/widget/LinearLayout;

.field private 'isClean' Z

.field private 'isOuterRefresh' Z

.field private 'itemWidth' I

.field private 'mBottomIndex' [I

.field private 'mColumnCount' I

.field private 'mColumnHeights' [I

.field private 'mConditionUserListListener' Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mCurrentPage' I

.field private 'mHandler' Landroid/os/Handler;

.field protected 'mInitTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field public 'mInitTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mLineIndex' [I

.field protected 'mLoadTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mLoadedCount' I

.field private 'mOnHeaderScrollListener' Lcom/product/android/ui/waterfall/OnHeaderScrollListener;

.field private 'mPageCount' I

.field private 'mPinMark' [Ljava/util/HashMap; signature "[Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"

.field private 'mPromptStr' Ljava/lang/String;

.field protected 'mRefreshTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mTopIndex' [I

.field private 'mbStopFlag' Z

.field public 'myTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field 'onTouchListener' Landroid/view/View$OnTouchListener;

.field private 'promptTextView' Landroid/widget/TextView;

.field private 'refreshLayout' Landroid/widget/LinearLayout;

.field private 'resultList' Ljava/util/Vector; signature "Ljava/util/Vector<Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;>;"

.field private 'scrollHeight' I

.field private 'showFootLayoutDisplay' Z

.field private 'total' I

.field private 'userList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field private 'waterfallContainer' Landroid/widget/LinearLayout;

.field private 'waterfallItems' Ljava/util/Vector; signature "Ljava/util/Vector<Landroid/widget/LinearLayout;>;"

.field private 'waterfallScroll' Lcom/product/android/ui/waterfall/LazyScrollView;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_3
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
aload 0
bipush 15
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPageCount I
aload 0
iconst_m1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
aload 0
bipush 10
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/Spacing I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadedCount I
aload 0
aconst_null
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/resultList Ljava/util/Vector;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/flowBirthdayViewList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/showFootLayoutDisplay Z
aload 0
iconst_1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/addEndFlag Z
aload 0
iconst_m1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/total I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isOuterRefresh Z
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isClean Z
aload 0
aconst_null
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mHandler Landroid/os/Handler;
aload 0
iconst_1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mbStopFlag Z
aload 0
new com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$2
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$2/<init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/myTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$3
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$3/<init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$4
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$4/<init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/onTouchListener Landroid/view/View$OnTouchListener;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mContext Landroid/content/Context;
aload 0
iconst_3
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 1
aload 1
invokevirtual android/view/Display/getWidth()I
istore 3
aload 1
invokevirtual android/view/Display/getHeight()I
istore 4
iload 3
iload 4
if_icmple L0
iload 4
istore 3
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/hr_waterfallbirthday_layout I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
iload 3
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mContext Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/no_data_now I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/initData(IILjava/lang/String;)V
return
L0:
goto L1
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mOnHeaderScrollListener Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/addEndFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mbStopFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mbStopFlag Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$102(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/addEndFlag Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/footLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/Vector;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/resultList Ljava/util/Vector;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isClean Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1302(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isClean Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/refreshLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/promptTextView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)[I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/Vector;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mConditionUserListListener Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/userList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPageCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;I)V
aload 0
iload 1
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/addItemToContainer(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isOuterRefresh Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadedCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$506(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/total I
iconst_1
isub
istore 1
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/total I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/showFootLayoutDisplay Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/showFootLayoutDisplay Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;JJ)V
aload 0
lload 1
lload 3
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/reLoadAndRecycleFlowView(JJ)V
return
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$802(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/endt I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/LazyScrollView;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallScroll Lcom/product/android/ui/waterfall/LazyScrollView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addImage(Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/resultList Ljava/util/Vector;
aload 0
aload 1
iload 2
iconst_0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/createFlowView(Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;IZ)Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 5
.end method

.method private addItemToContainer(I)V
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
iconst_1
iadd
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
istore 4
new java/util/ArrayList
dup
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/birthuserlist Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
astore 5
aload 5
invokeinterface java/util/List/size()I 0
istore 3
iload 3
istore 2
iload 3
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/total I
if_icmpge L0
iload 3
istore 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
iconst_1
iadd
iload 1
imul
iload 3
if_icmplt L0
iload 3
istore 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mConditionUserListListener Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mConditionUserListListener Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
invokeinterface com/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener/initData()Ljava/util/ArrayList; 0
pop
aload 5
invokeinterface java/util/List/size()I 0
istore 2
L0:
iload 4
iload 1
imul
istore 3
L1:
iload 3
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
iconst_1
iadd
iload 1
imul
if_icmpge L2
iload 3
iload 2
if_icmpge L2
aload 0
aload 5
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/dataStructure/Birthuserlist
iload 3
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/addImage(Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;I)V
aload 0
iload 3
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadedCount I
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadedCount I
istore 1
return
.limit locals 6
.limit stack 3
.end method

.method private createFlowView(Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;IZ)Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
new com/nd/android/u/tast/birthday/view/FlowBirthdayView
dup
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mContext Landroid/content/Context;
aload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/itemWidth I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/Spacing I
isub
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView/<init>(Landroid/content/Context;Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;I)V
astore 4
aload 4
iload 2
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/setId(I)V
new com/product/android/ui/waterfall/FlowTag
dup
invokespecial com/product/android/ui/waterfall/FlowTag/<init>()V
astore 5
aload 5
iload 2
invokevirtual com/product/android/ui/waterfall/FlowTag/setFlowId(I)V
aload 5
aload 1
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getUid()J
invokevirtual com/product/android/ui/waterfall/FlowTag/setUid(J)V
aload 5
iload 3
invokevirtual com/product/android/ui/waterfall/FlowTag/setIsEntrance(Z)V
aload 5
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/itemWidth I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/Spacing I
isub
invokevirtual com/product/android/ui/waterfall/FlowTag/setItemWidth(I)V
aload 4
aload 5
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/setFlowTag(Lcom/product/android/ui/waterfall/FlowTag;)V
aload 4
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
ifnull L0
aload 4
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/itemWidth I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/Spacing I
isub
putfield android/view/ViewGroup$LayoutParams/width I
L1:
aload 4
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/measure(II)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/flowBirthdayViewList Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
areturn
L0:
aload 4
new android/widget/LinearLayout$LayoutParams
dup
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/itemWidth I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/Spacing I
isub
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto L1
.limit locals 6
.limit stack 6
.end method

.method private getMinHeight()I
iconst_0
istore 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
arraylength
istore 4
iconst_0
istore 1
L0:
iload 1
iload 4
if_icmpge L1
iload 2
istore 3
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
iload 1
iaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
iload 2
iaload
if_icmpge L2
iload 1
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
L1:
iload 2
ireturn
.limit locals 5
.limit stack 3
.end method

.method private initData(IILjava/lang/String;)V
aload 0
iload 2
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
aload 0
aload 3
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPromptStr Ljava/lang/String;
aload 0
iload 1
iload 2
idiv
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/itemWidth I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
anewarray java/util/HashMap
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
if_icmpge L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 1
iconst_m1
iastore
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 1
iconst_m1
iastore
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 1
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
aastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/initComponent()V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/initLayout()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/promptTextView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPromptStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/onTouchListener Landroid/view/View$OnTouchListener;
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method private initLayout()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallScroll Lcom/product/android/ui/waterfall/LazyScrollView;
new com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/<init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
invokevirtual com/product/android/ui/waterfall/LazyScrollView/setOnScrollListener(Lcom/product/android/ui/waterfall/LazyScrollView$OnScrollListener;)V
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
if_icmpge L1
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 2
new android/widget/LinearLayout$LayoutParams
dup
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/itemWidth I
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 3
aload 2
iconst_5
iconst_5
iconst_5
iconst_5
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 2
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 2
aload 3
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
aload 2
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallContainer Landroid/widget/LinearLayout;
aload 2
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 4
.limit stack 5
.end method

.method private reLoadAndRecycleFlowView(JJ)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
ifne L0
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallScroll Lcom/product/android/ui/waterfall/LazyScrollView;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getMeasuredHeight()I
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
L0:
lload 1
lload 3
lcmp
ifle L1
L2:
lload 1
lload 3
lcmp
ifle L3
lload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
i2l
lcmp
ifle L4
iconst_0
istore 5
L5:
iload 5
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
if_icmpge L4
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 5
iaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 5
iaload
invokestatic java/lang/Math/min(II)I
istore 7
iload 7
istore 6
iload 7
ifge L6
iconst_0
istore 6
L6:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 5
aaload
iload 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L7
L3:
return
L7:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 5
aaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
iload 5
iaload
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
i2l
lload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
iconst_2
imul
i2l
lsub
lcmp
ifge L8
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
iload 5
iaload
istore 7
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
iload 5
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast android/widget/LinearLayout
iload 7
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/recycle()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
iload 5
iaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 5
iaload
if_icmpge L8
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
astore 8
aload 8
iload 5
aload 8
iload 5
iaload
iconst_1
iadd
iastore
L8:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 5
aaload
iload 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
i2l
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
iconst_2
imul
i2l
lload 1
ladd
lcmp
ifge L9
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
iload 5
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast android/widget/LinearLayout
iload 6
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/reLoadImage()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 5
iaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 5
iaload
if_icmpge L9
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
astore 8
aload 8
iload 5
aload 8
iload 5
iaload
iconst_1
iadd
iastore
L9:
iload 5
iconst_1
iadd
istore 5
goto L5
L4:
lload 1
ldc2_w 200L
lsub
lstore 1
goto L2
L1:
lload 1
lload 3
lcmp
ifge L3
L10:
lload 1
lload 3
lcmp
ifge L3
iconst_0
istore 5
L11:
iload 5
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
if_icmpge L12
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
iload 5
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast android/widget/LinearLayout
astore 8
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
iload 5
iaload
iconst_0
invokestatic java/lang/Math/max(II)I
istore 6
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 5
aaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 5
iaload
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 5
aaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 5
iaload
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
i2l
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
iconst_2
imul
i2l
lload 1
ladd
lcmp
iflt L13
aload 8
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 5
iaload
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/recycle()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 5
iaload
ifle L13
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
astore 9
aload 9
iload 5
aload 9
iload 5
iaload
iconst_1
isub
iastore
L13:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 5
aaload
iload 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
i2l
lload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
iconst_2
imul
i2l
lsub
lcmp
iflt L14
aload 8
iload 6
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/reLoadImage()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
iload 5
iaload
ifle L14
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
astore 8
aload 8
iload 5
aload 8
iload 5
iaload
iconst_1
isub
iastore
L14:
iload 5
iconst_1
iadd
istore 5
goto L11
L12:
lload 1
ldc2_w 200L
ladd
lstore 1
goto L10
.limit locals 10
.limit stack 6
.end method

.method public addFlowView(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/getMinHeight()I
istore 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
iload 2
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast android/widget/LinearLayout
aload 1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 1
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/getMeasuredHeight()I
istore 3
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
astore 4
aload 4
iload 2
aload 4
iload 2
iaload
iconst_1
iadd
iastore
aload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 2
iaload
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/setRowIndex(I)V
aload 1
iload 2
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/setColumnIndex(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
iload 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
iload 2
iaload
iload 3
iadd
iastore
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 2
aaload
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 2
iaload
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
iload 2
iaload
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 2
iaload
iastore
aload 1
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/loadImage()V
return
.limit locals 5
.limit stack 4
.end method

.method public clear(Z)V
iload 1
ifeq L0
aload 0
iconst_1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isClean Z
aload 0
iconst_m1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadedCount I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnHeights [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
newarray int
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
anewarray java/util/HashMap
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iconst_0
istore 2
L1:
iload 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
if_icmpge L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 2
iconst_m1
iastore
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 2
iconst_m1
iastore
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 2
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
aastore
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
invokevirtual java/util/Vector/removeAllElements()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallContainer Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
iconst_0
istore 2
L3:
iload 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
if_icmpge L4
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 3
new android/widget/LinearLayout$LayoutParams
dup
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/itemWidth I
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 3
iconst_5
iconst_5
iconst_5
iconst_5
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 3
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 3
aload 4
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
aload 3
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallContainer Landroid/widget/LinearLayout;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/footLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public getCurrentPage()I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mCurrentPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPageCount()I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPageCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUserList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Long;>;"
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/userList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/waterflow_foot_layout I
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/footLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/waterfall_container I
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallContainer Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/waterfall_scroll I
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/waterfall/LazyScrollView
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallScroll Lcom/product/android/ui/waterfall/LazyScrollView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/waterfall_layout_refresh I
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/refreshLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/waterfall_text_prompt I
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/promptTextView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/footLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallScroll Lcom/product/android/ui/waterfall/LazyScrollView;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getView()V
return
.limit locals 1
.limit stack 3
.end method

.method public initWaterFall(Z)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
iload 1
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/clear(Z)V
aload 0
new com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask/<init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public isOuterRefresh()Z
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isOuterRefresh Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLoadTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
return
.limit locals 1
.limit stack 2
.end method

.method public refresh()V
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mColumnCount I
if_icmpge L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mBottomIndex [I
iload 2
iaload
iconst_1
iadd
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mLineIndex [I
iload 2
iaload
invokestatic java/lang/Math/min(II)I
istore 3
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mTopIndex [I
iload 2
iaload
iconst_1
isub
iconst_0
invokestatic java/lang/Math/max(II)I
istore 6
iconst_0
istore 1
L2:
iload 3
iload 6
if_icmpge L3
iload 1
ifeq L4
L3:
iconst_0
istore 5
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 2
aaload
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPinMark [Ljava/util/HashMap;
iload 2
aaload
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 7
iload 7
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/endt I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
iconst_2
imul
iadd
if_icmpge L5
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/waterfallItems Ljava/util/Vector;
iload 2
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast android/widget/LinearLayout
iload 3
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
astore 8
aload 8
ifnull L5
aload 8
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/loadImage()V
L5:
iload 3
iconst_1
isub
istore 4
iload 5
istore 1
iload 4
istore 3
iload 4
iload 6
if_icmpgt L2
iload 5
istore 1
iload 4
istore 3
iload 7
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/endt I
if_icmple L2
iconst_1
istore 1
iload 4
istore 3
goto L2
L4:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 9
.limit stack 4
.end method

.method public refreshItem(JI)V
iconst_0
istore 4
L0:
iload 4
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/birthuserlist Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/flowBirthdayViewList Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/getBirthuser()Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getUid()J
lload 1
lcmp
ifne L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/flowBirthdayViewList Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/getBirthuser()Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getBlesscount()J
iload 3
i2l
lcmp
ifge L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/flowBirthdayViewList Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/getBirthuser()Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;
iload 3
i2l
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/setBlesscount(J)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/flowBirthdayViewList Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/view/FlowBirthdayView
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/refreshCount(Ljava/lang/String;)V
L2:
iload 4
iconst_1
iadd
istore 4
goto L0
L1:
return
.limit locals 5
.limit stack 4
.end method

.method public refreshWaterFlow()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/addEndFlag Z
ifeq L1
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/addEndFlag Z
aload 0
new com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/<init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/myTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mRefreshTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public setConditionUserList(Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mConditionUserListListener Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Birthuserlist;>;)V"
aload 0
iconst_1
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/clear(Z)V
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/promptTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/refreshLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 2
L2:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L3
aload 3
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/dataStructure/Birthuserlist
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 0
aload 3
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/userList Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/birthuserlist Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isClean Z
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/refreshWaterFlow()V
return
.limit locals 4
.limit stack 3
.end method

.method public setOnHeaderScrollListener(Lcom/product/android/ui/waterfall/OnHeaderScrollListener;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mOnHeaderScrollListener Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOuterRefresh(Z)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/isOuterRefresh Z
return
.limit locals 2
.limit stack 2
.end method

.method public setPageCount(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/mPageCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setScrollHeight(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/scrollHeight I
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/total I
return
.limit locals 2
.limit stack 2
.end method

.method public setUserList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/userList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
