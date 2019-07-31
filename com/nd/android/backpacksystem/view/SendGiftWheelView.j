.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/view/SendGiftWheelView
.super android/widget/LinearLayout
.inner class inner com/nd/android/backpacksystem/view/SendGiftWheelView$1

.field private 'mContext' Landroid/content/Context;

.field private 'mCurGiftCount' I

.field private 'mMyGiftInfoList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/backpacksystem/struct/MyGiftInfo;>;"

.field private 'mSelectCountAdapter' Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;

.field private 'mSelectGiftAdapter' Lcom/nd/android/backpacksystem/adapter/SelectGiftWheelAdapter;

.field private 'mSelectGiftListener' Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;

.field private 'mSelectUserAdapter' Lcom/nd/android/backpacksystem/adapter/SelectUserWheelAdapter;

.field private 'mWvSelectCount' Lcom/nd/android/backpacksystem/widget/TDWheelView;

.field private 'mWvSelectGift' Lcom/nd/android/backpacksystem/widget/TDWheelView;

.field private 'mWvSelectUser' Lcom/nd/android/backpacksystem/widget/TDWheelView;

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/backpacksystem/view/SendGiftWheelView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mCurGiftCount I
aload 0
new com/nd/android/backpacksystem/view/SendGiftWheelView$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/view/SendGiftWheelView$1/<init>(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)V
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectGiftListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/backpacksystem/view/SendGiftWheelView/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/view/SendGiftWheelView/initEvent()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)I
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mCurGiftCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;I)I
aload 0
iload 1
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mCurGiftCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectCountAdapter Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initData()V
aload 0
new com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter
dup
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mContext Landroid/content/Context;
aconst_null
invokespecial com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/<init>(Landroid/content/Context;[Ljava/lang/String;)V
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectUserAdapter Lcom/nd/android/backpacksystem/adapter/SelectUserWheelAdapter;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectUser Lcom/nd/android/backpacksystem/widget/TDWheelView;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectUserAdapter Lcom/nd/android/backpacksystem/adapter/SelectUserWheelAdapter;
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setAdapter(Landroid/widget/SpinnerAdapter;)V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectUser Lcom/nd/android/backpacksystem/widget/TDWheelView;
iconst_0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setSelection(IZ)V
aload 0
new com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter
dup
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mContext Landroid/content/Context;
invokespecial com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectCountAdapter Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectCountAdapter Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mCurGiftCount I
invokevirtual com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/setData(I)V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectCount Lcom/nd/android/backpacksystem/widget/TDWheelView;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectCountAdapter Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setAdapter(Landroid/widget/SpinnerAdapter;)V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectCount Lcom/nd/android/backpacksystem/widget/TDWheelView;
iconst_0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setSelection(IZ)V
aload 0
new com/nd/android/backpacksystem/adapter/SelectGiftWheelAdapter
dup
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mContext Landroid/content/Context;
aconst_null
invokespecial com/nd/android/backpacksystem/adapter/SelectGiftWheelAdapter/<init>(Landroid/content/Context;[Ljava/lang/String;)V
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectGiftAdapter Lcom/nd/android/backpacksystem/adapter/SelectGiftWheelAdapter;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectGiftAdapter Lcom/nd/android/backpacksystem/adapter/SelectGiftWheelAdapter;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
invokevirtual com/nd/android/backpacksystem/adapter/SelectGiftWheelAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectGift Lcom/nd/android/backpacksystem/widget/TDWheelView;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectGiftAdapter Lcom/nd/android/backpacksystem/adapter/SelectGiftWheelAdapter;
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setAdapter(Landroid/widget/SpinnerAdapter;)V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectGift Lcom/nd/android/backpacksystem/widget/TDWheelView;
iconst_0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setSelection(IZ)V
return
.limit locals 1
.limit stack 5
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectGift Lcom/nd/android/backpacksystem/widget/TDWheelView;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mSelectGiftListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setOnItemSelectedListener(Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/backpacksystem/R$layout/send_gift_wheel_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/wvSelectUser I
invokevirtual com/nd/android/backpacksystem/view/SendGiftWheelView/findViewById(I)Landroid/view/View;
checkcast com/nd/android/backpacksystem/widget/TDWheelView
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectUser Lcom/nd/android/backpacksystem/widget/TDWheelView;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectUser Lcom/nd/android/backpacksystem/widget/TDWheelView;
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setScrollCycle(Z)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/wvSelectGift I
invokevirtual com/nd/android/backpacksystem/view/SendGiftWheelView/findViewById(I)Landroid/view/View;
checkcast com/nd/android/backpacksystem/widget/TDWheelView
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectGift Lcom/nd/android/backpacksystem/widget/TDWheelView;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectGift Lcom/nd/android/backpacksystem/widget/TDWheelView;
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setScrollCycle(Z)V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/wvSelectCount I
invokevirtual com/nd/android/backpacksystem/view/SendGiftWheelView/findViewById(I)Landroid/view/View;
checkcast com/nd/android/backpacksystem/widget/TDWheelView
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectCount Lcom/nd/android/backpacksystem/widget/TDWheelView;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mWvSelectCount Lcom/nd/android/backpacksystem/widget/TDWheelView;
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDWheelView/setScrollCycle(Z)V
return
.limit locals 1
.limit stack 4
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/backpacksystem/struct/MyGiftInfo;>;)V"
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L1
aload 0
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView/mMyGiftInfoList Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/backpacksystem/struct/MyGiftInfo
getfield com/nd/android/backpacksystem/struct/MyGiftInfo/total I
putfield com/nd/android/backpacksystem/view/SendGiftWheelView/mCurGiftCount I
L1:
aload 0
invokespecial com/nd/android/backpacksystem/view/SendGiftWheelView/initData()V
L0:
return
.limit locals 2
.limit stack 3
.end method
