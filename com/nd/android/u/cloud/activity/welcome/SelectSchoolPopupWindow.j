.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow
.super java/lang/Object
.inner class HighSchoolAdapter inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter outer com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow
.inner class inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter$1
.inner class public static abstract interface OnDataSelectedListener inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener outer com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow
.inner class ViewHolder inner com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$ViewHolder outer com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow

.field private 'mAdapter' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;>;"

.field private 'mDesView' Landroid/view/View;

.field private 'mHandle' Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;

.field private 'mListView' Landroid/widget/ListView;

.field private 'mListener' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener;

.field private 'mWindow' Landroid/widget/PopupWindow;

.method public <init>(Landroid/content/Context;Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mDesView Landroid/view/View;
aload 0
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mHandle Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mHandle Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mContext Landroid/content/Context;
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/openDatabase(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;)Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mListener Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static dip2px(Landroid/content/Context;F)I
fload 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mDesView Landroid/view/View;
invokevirtual android/view/View/getWidth()I
istore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903588
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
ldc_w 2131626344
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mListView Landroid/widget/ListView;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mData Ljava/util/List;
aload 0
new com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mData Ljava/util/List;
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/<init>(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow;Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mAdapter Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mAdapter Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new android/widget/PopupWindow
dup
aload 2
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mContext Landroid/content/Context;
ldc_w 138.0F
invokestatic com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/dip2px(Landroid/content/Context;F)I
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
ldc_w 2131230903
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
iconst_2
invokevirtual android/widget/PopupWindow/setSoftInputMode(I)V
L0:
return
.limit locals 3
.limit stack 7
.end method

.method private setData(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mData Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mData Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mHandle Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 1
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/getSchoolInfoBySubName(Ljava/lang/String;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
checkcast com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$HighSchoolAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public disappear()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setOnDataSelectedListener(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mListener Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow$OnDataSelectedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public show()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifne L0
iconst_2
newarray int
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mDesView Landroid/view/View;
aload 1
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mDesView Landroid/view/View;
iconst_0
aload 1
iconst_0
iaload
aload 1
iconst_1
iaload
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mDesView Landroid/view/View;
invokevirtual android/view/View/getHeight()I
iadd
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public update(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/initView()V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/setData(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mData Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/mData Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/disappear()V
return
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolPopupWindow/show()V
return
.limit locals 2
.limit stack 2
.end method
