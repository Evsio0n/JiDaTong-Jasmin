.bytecode 50.0
.class public synchronized com/common/android/utils/smiley/SmileyView
.super android/widget/LinearLayout
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
.inner class inner com/common/android/utils/smiley/SmileyView$1
.inner class inner com/common/android/utils/smiley/SmileyView$2
.inner class inner com/common/android/utils/smiley/SmileyView$3
.inner class inner com/common/android/utils/smiley/SmileyView$4
.inner class inner com/common/android/utils/smiley/SmileyView$5
.inner class inner com/common/android/utils/smiley/SmileyView$5$1
.inner class inner com/common/android/utils/smiley/SmileyView$6
.inner class inner com/common/android/utils/smiley/SmileyView$7
.inner class public static abstract interface GetWordLengthConfig inner com/common/android/utils/smiley/SmileyView$GetWordLengthConfig outer com/common/android/utils/smiley/SmileyView
.inner class public static abstract interface OnSelectGifListener inner com/common/android/utils/smiley/SmileyView$OnSelectGifListener outer com/common/android/utils/smiley/SmileyView
.inner class public static abstract interface OnSmileyCutListener inner com/common/android/utils/smiley/SmileyView$OnSmileyCutListener outer com/common/android/utils/smiley/SmileyView
.inner class OnSmileyDelTouchListener inner com/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener outer com/common/android/utils/smiley/SmileyView
.inner class inner com/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener$1
.inner class static SmileyHandler inner com/common/android/utils/smiley/SmileyView$SmileyHandler outer com/common/android/utils/smiley/SmileyView

.field private static final 'DEL_ONE' I = 1


.field private static final 'MAX_HISTORY_COUNT' I = 24


.field public static final 'MAX_INPUT_LEN' I = 500


.field private 'adapter' Landroid/support/v4/view/PagerAdapter;

.field private 'itemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'listener' Landroid/view/View$OnClickListener;

.field private 'llNode' Landroid/widget/LinearLayout;

.field private 'mColumns' [I

.field private 'mContext' Landroid/content/Context;

.field private 'mCurrentItemIndexs' [I

.field private 'mCurrentSmileyCatagory' I

.field private 'mDelTouchListener' Lcom/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener;

.field private 'mEditText' Landroid/widget/EditText;

.field private 'mFunctionList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"

.field private 'mGetWordLengthConfig' Lcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;

.field private 'mHandler' Lcom/common/android/utils/smiley/SmileyView$SmileyHandler;

.field private 'mIds' [I

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mIsInputLimited' Z

.field public 'mIsTouchDel' Z

.field private 'mMaxLength' I

.field private 'mOnSmileyCutListener' Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;

.field private 'mPageItems' [I

.field private 'mPageSizes' [I

.field private 'mPager' Landroid/support/v4/view/ViewPager;

.field private 'mPasteListener' Lcom/product/android/utils/MyPasteListener;

.field private 'mSelectGifListener' Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;

.field private 'mSelectedDrawables' [I

.field private 'mSmileyDrawableSize' I

.field private 'mTotalCatagory' I

.field private 'mType' I

.field private 'mUnSelectedDrawables' [I

.field private 'mbIsSwitchCatagory' Z

.field private 'onItemLongClickListener' Landroid/widget/AdapterView$OnItemLongClickListener;

.field private 'pageChangeListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private 'pasteCatSmileyListener' Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;

.field private 'watcher' Landroid/text/TextWatcher;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mIsTouchDel Z
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$id/imgHistory I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$id/imgNormal I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$id/imgEmoji I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$id/imgCos I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$id/imgCat I
iastore
putfield com/common/android/utils/smiley/SmileyView/mIds [I
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$drawable/smiley_history_press I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$drawable/smiley_normal_press I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$drawable/smiley_emoji_press I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cos_press I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cat_press I
iastore
putfield com/common/android/utils/smiley/SmileyView/mSelectedDrawables [I
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$drawable/smiley_history I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$drawable/smiley_normal I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$drawable/smiley_emoji I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cos I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cat I
iastore
putfield com/common/android/utils/smiley/SmileyView/mUnSelectedDrawables [I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/SmileyView/mFunctionList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mbIsSwitchCatagory Z
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mMaxLength I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mIsInputLimited Z
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mSmileyDrawableSize I
aload 0
new com/common/android/utils/smiley/SmileyView$1
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$1/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/listener Landroid/view/View$OnClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$2
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$2/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/pageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
aload 0
new com/common/android/utils/smiley/SmileyView$3
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$3/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/adapter Landroid/support/v4/view/PagerAdapter;
aload 0
new com/common/android/utils/smiley/SmileyView$4
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$4/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/onItemLongClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$5
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$5/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$6
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$6/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/watcher Landroid/text/TextWatcher;
aload 0
new com/common/android/utils/smiley/SmileyView$7
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$7/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/pasteCatSmileyListener Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;
aload 0
aconst_null
putfield com/common/android/utils/smiley/SmileyView/mOnSmileyCutListener Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;
aload 0
aload 1
invokespecial com/common/android/utils/smiley/SmileyView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mIsTouchDel Z
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$id/imgHistory I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$id/imgNormal I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$id/imgEmoji I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$id/imgCos I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$id/imgCat I
iastore
putfield com/common/android/utils/smiley/SmileyView/mIds [I
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$drawable/smiley_history_press I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$drawable/smiley_normal_press I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$drawable/smiley_emoji_press I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cos_press I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cat_press I
iastore
putfield com/common/android/utils/smiley/SmileyView/mSelectedDrawables [I
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$drawable/smiley_history I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$drawable/smiley_normal I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$drawable/smiley_emoji I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cos I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cat I
iastore
putfield com/common/android/utils/smiley/SmileyView/mUnSelectedDrawables [I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/SmileyView/mFunctionList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mbIsSwitchCatagory Z
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mMaxLength I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mIsInputLimited Z
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mSmileyDrawableSize I
aload 0
new com/common/android/utils/smiley/SmileyView$1
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$1/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/listener Landroid/view/View$OnClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$2
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$2/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/pageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
aload 0
new com/common/android/utils/smiley/SmileyView$3
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$3/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/adapter Landroid/support/v4/view/PagerAdapter;
aload 0
new com/common/android/utils/smiley/SmileyView$4
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$4/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/onItemLongClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$5
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$5/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$6
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$6/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/watcher Landroid/text/TextWatcher;
aload 0
new com/common/android/utils/smiley/SmileyView$7
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$7/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/pasteCatSmileyListener Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;
aload 0
aconst_null
putfield com/common/android/utils/smiley/SmileyView/mOnSmileyCutListener Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;
aload 0
aload 1
invokespecial com/common/android/utils/smiley/SmileyView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mIsTouchDel Z
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$id/imgHistory I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$id/imgNormal I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$id/imgEmoji I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$id/imgCos I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$id/imgCat I
iastore
putfield com/common/android/utils/smiley/SmileyView/mIds [I
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$drawable/smiley_history_press I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$drawable/smiley_normal_press I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$drawable/smiley_emoji_press I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cos_press I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cat_press I
iastore
putfield com/common/android/utils/smiley/SmileyView/mSelectedDrawables [I
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/android/u/allcommon/R$drawable/smiley_history I
iastore
dup
iconst_1
getstatic com/nd/android/u/allcommon/R$drawable/smiley_normal I
iastore
dup
iconst_2
getstatic com/nd/android/u/allcommon/R$drawable/smiley_emoji I
iastore
dup
iconst_3
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cos I
iastore
dup
iconst_4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_cat I
iastore
putfield com/common/android/utils/smiley/SmileyView/mUnSelectedDrawables [I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/SmileyView/mFunctionList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mbIsSwitchCatagory Z
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mMaxLength I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mIsInputLimited Z
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mSmileyDrawableSize I
aload 0
new com/common/android/utils/smiley/SmileyView$1
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$1/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/listener Landroid/view/View$OnClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$2
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$2/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/pageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
aload 0
new com/common/android/utils/smiley/SmileyView$3
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$3/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/adapter Landroid/support/v4/view/PagerAdapter;
aload 0
new com/common/android/utils/smiley/SmileyView$4
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$4/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/onItemLongClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$5
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$5/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/common/android/utils/smiley/SmileyView$6
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$6/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/watcher Landroid/text/TextWatcher;
aload 0
new com/common/android/utils/smiley/SmileyView$7
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$7/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/pasteCatSmileyListener Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;
aload 0
aconst_null
putfield com/common/android/utils/smiley/SmileyView/mOnSmileyCutListener Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;
aload 0
aload 1
invokespecial com/common/android/utils/smiley/SmileyView/init(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 5
.end method

.method static synthetic access$000(Lcom/common/android/utils/smiley/SmileyView;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mFunctionList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/common/android/utils/smiley/SmileyView;)Z
aload 0
getfield com/common/android/utils/smiley/SmileyView/mbIsSwitchCatagory Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/common/android/utils/smiley/SmileyView;)Lcom/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mDelTouchListener Lcom/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/common/android/utils/smiley/SmileyView;Z)Z
aload 0
iload 1
putfield com/common/android/utils/smiley/SmileyView/mbIsSwitchCatagory Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/common/android/utils/smiley/SmileyView;)Landroid/widget/EditText;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mEditText Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/common/android/utils/smiley/SmileyView;Lcom/common/android/utils/smiley/Smiley;)Z
aload 0
aload 1
invokespecial com/common/android/utils/smiley/SmileyView/checkDeleteSmiley(Lcom/common/android/utils/smiley/Smiley;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/common/android/utils/smiley/SmileyView;)Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mSelectGifListener Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/common/android/utils/smiley/SmileyView;)I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/common/android/utils/smiley/SmileyView;)I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mMaxLength I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/common/android/utils/smiley/SmileyView;)I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mSmileyDrawableSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/common/android/utils/smiley/SmileyView;)Lcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mGetWordLengthConfig Lcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/common/android/utils/smiley/SmileyView;)Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mOnSmileyCutListener Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/common/android/utils/smiley/SmileyView;)Lcom/product/android/utils/MyPasteListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/utils/smiley/SmileyView;)[I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentItemIndexs [I
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/common/android/utils/smiley/SmileyView;)Lcom/common/android/utils/smiley/SmileyView$SmileyHandler;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mHandler Lcom/common/android/utils/smiley/SmileyView$SmileyHandler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/common/android/utils/smiley/SmileyView;)V
aload 0
invokespecial com/common/android/utils/smiley/SmileyView/deleteOne()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/utils/smiley/SmileyView;)I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/utils/smiley/SmileyView;)V
aload 0
invokespecial com/common/android/utils/smiley/SmileyView/showCurrentPage()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/common/android/utils/smiley/SmileyView;)[I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageSizes [I
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/common/android/utils/smiley/SmileyView;)Landroid/view/LayoutInflater;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mInflater Landroid/view/LayoutInflater;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/common/android/utils/smiley/SmileyView;)[I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mColumns [I
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/common/android/utils/smiley/SmileyView;)Landroid/content/Context;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/common/android/utils/smiley/SmileyView;)Landroid/widget/AdapterView$OnItemClickListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkDeleteSmiley(Lcom/common/android/utils/smiley/Smiley;)Z
aload 1
getfield com/common/android/utils/smiley/Smiley/id I
sipush 993
if_icmpne L0
aload 0
invokespecial com/common/android/utils/smiley/SmileyView/deleteOne()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private deleteOne()V
new android/view/KeyEvent
dup
iconst_0
bipush 67
invokespecial android/view/KeyEvent/<init>(II)V
astore 1
new android/view/KeyEvent
dup
iconst_1
bipush 67
invokespecial android/view/KeyEvent/<init>(II)V
astore 2
aload 0
getfield com/common/android/utils/smiley/SmileyView/mEditText Landroid/widget/EditText;
bipush 67
aload 1
invokevirtual android/widget/EditText/onKeyDown(ILandroid/view/KeyEvent;)Z
pop
aload 0
getfield com/common/android/utils/smiley/SmileyView/mEditText Landroid/widget/EditText;
bipush 67
aload 2
invokevirtual android/widget/EditText/onKeyUp(ILandroid/view/KeyEvent;)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method private init(Landroid/content/Context;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView/mContext Landroid/content/Context;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/smiley_dialog I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
return
.limit locals 2
.limit stack 4
.end method

.method private initPageSize()V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
if_icmpge L1
iload 1
ifeq L2
iload 1
iconst_4
if_icmpeq L2
iload 1
iconst_3
if_icmpne L3
L2:
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageItems [I
iload 1
bipush 8
iastore
aload 0
getfield com/common/android/utils/smiley/SmileyView/mColumns [I
iload 1
iconst_4
iastore
L4:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileyList(I)Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageSizes [I
astore 4
iload 2
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageItems [I
iload 1
iaload
idiv
istore 3
iload 2
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageItems [I
iload 1
iaload
irem
ifne L5
iconst_0
istore 2
L6:
aload 4
iload 1
iload 2
iload 3
iadd
iastore
iload 1
iconst_1
iadd
istore 1
goto L0
L3:
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageItems [I
iload 1
bipush 21
iastore
aload 0
getfield com/common/android/utils/smiley/SmileyView/mColumns [I
iload 1
bipush 7
iastore
goto L4
L5:
iconst_1
istore 2
goto L6
L1:
return
.limit locals 5
.limit stack 4
.end method

.method private initView()V
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mIds [I
arraylength
putfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
if_icmpge L1
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mIds [I
iload 1
iaload
invokespecial com/common/android/utils/smiley/SmileyView/setOnClickListener(I)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
newarray int
putfield com/common/android/utils/smiley/SmileyView/mCurrentItemIndexs [I
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
newarray int
putfield com/common/android/utils/smiley/SmileyView/mPageSizes [I
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
newarray int
putfield com/common/android/utils/smiley/SmileyView/mColumns [I
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
newarray int
putfield com/common/android/utils/smiley/SmileyView/mPageItems [I
aload 0
invokespecial com/common/android/utils/smiley/SmileyView/initPageSize()V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/viewpager I
invokevirtual com/common/android/utils/smiley/SmileyView/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/common/android/utils/smiley/SmileyView/mPager Landroid/support/v4/view/ViewPager;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/llNode I
invokevirtual com/common/android/utils/smiley/SmileyView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/common/android/utils/smiley/SmileyView/llNode Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/utils/smiley/SmileyView/adapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/utils/smiley/SmileyView/pageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
new com/common/android/utils/smiley/SmileyView$SmileyHandler
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$SmileyHandler/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/mHandler Lcom/common/android/utils/smiley/SmileyView$SmileyHandler;
aload 0
new com/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener/<init>(Lcom/common/android/utils/smiley/SmileyView;)V
putfield com/common/android/utils/smiley/SmileyView/mDelTouchListener Lcom/common/android/utils/smiley/SmileyView$OnSmileyDelTouchListener;
return
.limit locals 2
.limit stack 4
.end method

.method private setOnClickListener(I)V
aload 0
iload 1
invokevirtual com/common/android/utils/smiley/SmileyView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 2
aload 2
aload 0
getfield com/common/android/utils/smiley/SmileyView/listener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/common/android/utils/smiley/SmileyView/mFunctionList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method private showCurrentPage()V
aload 0
getfield com/common/android/utils/smiley/SmileyView/llNode Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 3
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageSizes [I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
iaload
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 0
getfield com/common/android/utils/smiley/SmileyView/llNode Landroid/widget/LinearLayout;
iload 1
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
astore 4
aload 4
iconst_0
invokevirtual android/view/View/setVisibility(I)V
iload 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentItemIndexs [I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
iaload
if_icmpne L2
aload 4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_node_select I
invokevirtual android/view/View/setBackgroundResource(I)V
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
aload 4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_node_normal I
invokevirtual android/view/View/setBackgroundResource(I)V
goto L3
L1:
iload 2
istore 1
L4:
iload 1
iload 3
if_icmpge L5
aload 0
getfield com/common/android/utils/smiley/SmileyView/llNode Landroid/widget/LinearLayout;
iload 1
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
return
.limit locals 5
.limit stack 3
.end method

.method public getDefaultTextChangeListener()Landroid/text/TextWatcher;
aload 0
getfield com/common/android/utils/smiley/SmileyView/watcher Landroid/text/TextWatcher;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPasteListener()Lcom/product/android/utils/MyPasteListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hideCatagory(I)V
aload 0
getfield com/common/android/utils/smiley/SmileyView/mFunctionList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/widget/ImageView
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public isShowing()Z
aload 0
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setInputLimited()V
aload 0
iconst_1
putfield com/common/android/utils/smiley/SmileyView/mIsInputLimited Z
return
.limit locals 1
.limit stack 2
.end method

.method public setIsShowSmileyFunc(Z)V
aload 0
getstatic com/nd/android/u/allcommon/R$id/llFunction I
invokevirtual com/common/android/utils/smiley/SmileyView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 2
iload 1
ifne L0
aload 2
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public setOnSelectGifListener(Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView/mSelectGifListener Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnSmileyCutListener(Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView/mOnSmileyCutListener Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setParam(Landroid/widget/EditText;I)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView/mEditText Landroid/widget/EditText;
aload 0
iload 2
putfield com/common/android/utils/smiley/SmileyView/mType I
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mContext Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/common/android/utils/smiley/SmileyView/mInflater Landroid/view/LayoutInflater;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mEditText Landroid/widget/EditText;
aload 0
getfield com/common/android/utils/smiley/SmileyView/watcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
new com/product/android/utils/MyPasteListener
dup
aload 0
getfield com/common/android/utils/smiley/SmileyView/mContext Landroid/content/Context;
invokespecial com/product/android/utils/MyPasteListener/<init>(Landroid/content/Context;)V
putfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
iload 2
invokevirtual com/product/android/utils/MyPasteListener/setType(I)V
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
aload 0
getfield com/common/android/utils/smiley/SmileyView/pasteCatSmileyListener Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;
invokevirtual com/product/android/utils/MyPasteListener/setOnPasteCatSmileyListener(Lcom/product/android/utils/MyPasteListener$onPasteCatSmileyListener;)V
aload 0
getfield com/common/android/utils/smiley/SmileyView/mIsInputLimited Z
ifeq L0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mEditText Landroid/widget/EditText;
iconst_2
anewarray android/text/InputFilter
dup
iconst_0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
aastore
dup
iconst_1
new android/text/InputFilter$LengthFilter
dup
sipush 500
invokespecial android/text/InputFilter$LengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
L1:
aload 0
invokespecial com/common/android/utils/smiley/SmileyView/initView()V
return
L0:
aload 0
getfield com/common/android/utils/smiley/SmileyView/mEditText Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
goto L1
.limit locals 3
.limit stack 7
.end method

.method public setParam(Landroid/widget/EditText;II)V
aload 0
aload 1
iload 2
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;I)V
aload 0
iload 3
putfield com/common/android/utils/smiley/SmileyView/mMaxLength I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPasteListener Lcom/product/android/utils/MyPasteListener;
iload 3
invokevirtual com/product/android/utils/MyPasteListener/setMaxLength(I)V
return
.limit locals 4
.limit stack 3
.end method

.method public setShow(Z)V
iload 1
ifeq L0
aload 0
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L0:
aload 0
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSmileyDrawableSize(I)V
iload 1
ifge L0
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mSmileyDrawableSize I
return
L0:
aload 0
iload 1
putfield com/common/android/utils/smiley/SmileyView/mSmileyDrawableSize I
return
.limit locals 2
.limit stack 2
.end method

.method public setWordLengthConfig(Lcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView/mGetWordLengthConfig Lcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;
return
.limit locals 2
.limit stack 2
.end method

.method public showSelection(I)V
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
iload 1
if_icmpne L0
return
L0:
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentItemIndexs [I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
iastore
aload 0
iload 1
putfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
iconst_0
istore 1
L1:
iload 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mTotalCatagory I
if_icmpge L2
aload 0
getfield com/common/android/utils/smiley/SmileyView/mFunctionList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/widget/ImageView
astore 4
iload 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
if_icmpne L3
aload 4
getstatic com/nd/android/u/allcommon/R$drawable/smiley_select I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 4
aload 0
getfield com/common/android/utils/smiley/SmileyView/mSelectedDrawables [I
iload 1
iaload
invokevirtual android/widget/ImageView/setImageResource(I)V
L4:
iload 1
iconst_1
iadd
istore 1
goto L1
L3:
aload 4
iconst_0
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 4
aload 0
getfield com/common/android/utils/smiley/SmileyView/mUnSelectedDrawables [I
iload 1
iaload
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L4
L2:
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
ifne L5
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileyList(I)Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageSizes [I
astore 4
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
istore 2
iload 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageItems [I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
iaload
idiv
istore 3
iload 1
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPageItems [I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
iaload
irem
ifne L6
iconst_0
istore 1
L7:
aload 4
iload 2
iload 1
iload 3
iadd
iastore
L5:
aload 0
iconst_1
putfield com/common/android/utils/smiley/SmileyView/mbIsSwitchCatagory Z
aload 0
getfield com/common/android/utils/smiley/SmileyView/adapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/notifyDataSetChanged()V
aload 0
getfield com/common/android/utils/smiley/SmileyView/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentItemIndexs [I
aload 0
getfield com/common/android/utils/smiley/SmileyView/mCurrentSmileyCatagory I
iaload
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(IZ)V
aload 0
invokespecial com/common/android/utils/smiley/SmileyView/showCurrentPage()V
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyView/mbIsSwitchCatagory Z
return
L6:
iconst_1
istore 1
goto L7
.limit locals 5
.limit stack 4
.end method
