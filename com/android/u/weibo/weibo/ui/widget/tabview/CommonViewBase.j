.bytecode 50.0
.class public synchronized abstract com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase
.super android/widget/LinearLayout
.inner class inner com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$1
.inner class private GetDataTask inner com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask outer com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase
.inner class private GridViewAdapter inner com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter outer com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private static final 'HEIGHT_DP' I = 60


.field protected static final 'SINGLE' I = 1


.field private 'click' Landroid/view/View$OnClickListener;

.field private 'contentBitmap' Landroid/graphics/Bitmap;

.field private 'getDataTask' Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;

.field private 'gvContent' Landroid/widget/GridView;

.field private 'gvHeight' I

.field private 'ivDefault' Landroid/widget/ImageView;

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'params' Landroid/widget/AbsListView$LayoutParams;

.field private 'pbLoad' Landroid/view/View;

.field private 'tvTitle' Landroid/widget/TextView;

.method <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$1/<init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)V
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/click Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mContext Landroid/content/Context;
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/initViewAndData()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/pbLoad Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)Landroid/widget/AbsListView$LayoutParams;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/params Landroid/widget/AbsListView$LayoutParams;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;Landroid/widget/AbsListView$LayoutParams;)Landroid/widget/AbsListView$LayoutParams;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/params Landroid/widget/AbsListView$LayoutParams;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private initViewAndData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/view I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/setOrientation(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/ivDefault I
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/ivDefault Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvTitle I
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/tvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/pbLoad I
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/pbLoad Landroid/view/View;
aload 0
getstatic com/android/u/weibo/R$id/ivForeGround I
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/findViewById(I)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/click Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/gridContent I
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
aload 0
ldc_w 60.0F
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fmul
f2i
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvHeight I
aload 0
new android/widget/AbsListView$LayoutParams
dup
iconst_m1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvHeight I
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/params Landroid/widget/AbsListView$LayoutParams;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/tvTitle Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/isNeedTask()Z
ifeq L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getImageOrTagData()V
return
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/initBlankImage()V
return
.limit locals 1
.limit stack 5
.end method

.method public abstract clearData()V
.end method

.method public abstract doClick()V
.end method

.method public abstract getDataAndProcessBitmap()V
.end method

.method protected abstract getDefaultBitmap()I
.end method

.method getImageOrTagData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/pbLoad Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/ivDefault Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataTask Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataTask Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/<init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$1;)V
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataTask Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataTask Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public initBlankImage()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
iconst_4
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/pbLoad Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/ivDefault Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
aconst_null
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/setCountNum(I)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L2
L1:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mContext Landroid/content/Context;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDefaultBitmap()I
invokestatic com/android/u/weibo/weibo/utils/ImageUtil/getZoomBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/ivDefault Landroid/widget/ImageView;
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/graphics/Bitmap;)V
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected abstract isNeedTask()Z
.end method

.method notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onDestory()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataTask Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataTask Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataTask Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/contentBitmap Landroid/graphics/Bitmap;
L1:
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract setGridViewData(ILandroid/view/View;Landroid/widget/AbsListView$LayoutParams;)Landroid/view/View;
.end method

.method setMultiGrid(IIII)V
iload 1
iload 2
if_icmple L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
iload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/setCountNum(I)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
iload 4
invokevirtual android/widget/GridView/setNumColumns(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvHeight I
iload 3
idiv
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/setItemHeight(I)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
iload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/setCountNum(I)V
goto L1
.limit locals 5
.limit stack 3
.end method

.method setSingleGrid()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/setCountNum(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
iconst_1
invokevirtual android/widget/GridView/setNumColumns(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvHeight I
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/setItemHeight(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected toShowValueView()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/ivDefault Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/gvContent Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter/<init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$1;)V
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/mAdapter Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GridViewAdapter;
return
.limit locals 1
.limit stack 5
.end method

.method public abstract updateData(Ljava/lang/Object;)V
.end method

.method public updateTitle(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/tvTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public abstract updateView()V
.end method
