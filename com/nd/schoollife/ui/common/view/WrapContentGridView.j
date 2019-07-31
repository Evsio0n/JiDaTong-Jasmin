.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/WrapContentGridView
.super android/widget/GridView
.inner class inner com/nd/schoollife/ui/common/view/WrapContentGridView$1

.field private 'mPost' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/GridView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/GridView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/GridView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/common/view/WrapContentGridView;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/ui/common/view/WrapContentGridView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static resizerImageview(II)[I
iconst_2
newarray int
astore 6
aload 6
iconst_0
iload 0
iastore
aload 6
iconst_1
iload 1
iastore
iload 1
i2f
fconst_1
fmul
iload 0
i2f
fdiv
fstore 2
iload 0
i2f
fconst_1
fmul
iload 1
i2f
fdiv
fstore 3
iload 0
sipush 240
if_icmpgt L0
iload 0
istore 4
iload 1
istore 5
iload 1
sipush 240
if_icmple L1
L0:
iload 1
iload 0
if_icmple L2
fload 2
ldc_w 3.0F
fcmpg
ifge L3
iload 0
sipush 240
imul
iload 1
idiv
istore 4
sipush 240
istore 5
L1:
aload 6
iconst_0
iload 4
iastore
aload 6
iconst_1
iload 5
iastore
aload 6
areturn
L3:
sipush 240
istore 5
bipush 70
istore 4
goto L1
L2:
fload 3
ldc_w 3.0F
fcmpg
ifge L4
iload 1
sipush 240
imul
iload 0
idiv
istore 5
sipush 240
istore 4
goto L1
L4:
bipush 70
istore 5
sipush 240
istore 4
goto L1
.limit locals 7
.limit stack 3
.end method

.method public static resizerTweetImage(II)[I
iload 0
iload 1
invokestatic com/nd/schoollife/ui/common/view/WrapContentGridView/resizerImageview(II)[I
astore 5
aload 5
iconst_0
iaload
istore 3
aload 5
iconst_1
iaload
istore 4
iload 0
istore 2
iload 0
aload 5
iconst_0
iaload
if_icmple L0
aload 5
iconst_0
iaload
istore 2
L0:
iload 1
istore 0
iload 1
aload 5
iconst_1
iaload
if_icmple L1
aload 5
iconst_1
iaload
istore 0
L1:
iconst_4
newarray int
dup
iconst_0
iload 2
iastore
dup
iconst_1
iload 0
iastore
dup
iconst_2
iload 3
iastore
dup
iconst_3
iload 4
iastore
areturn
.limit locals 6
.limit stack 4
.end method

.method public bindImageData(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;ZZZ)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;ZZZ)V"
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setVisibility(I)V
return
L1:
aload 0
aload 3
putfield com/nd/schoollife/ui/common/view/WrapContentGridView/mPost Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setVisibility(I)V
aload 2
invokeinterface java/util/List/size()I 0
istore 8
iload 8
anewarray java/lang/String
astore 3
iconst_0
istore 7
L2:
iload 7
iload 8
if_icmpge L3
aload 3
iload 7
aload 2
iload 7
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/FileInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getFid()J
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getPostImageUrl(J)Ljava/lang/String;
aastore
iload 7
iconst_1
iadd
istore 7
goto L2
L3:
iconst_0
istore 9
iconst_0
istore 10
aload 2
invokeinterface java/util/List/size()I 0
istore 11
iload 11
newarray float
astore 2
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 12
aload 1
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 12
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
iload 9
istore 7
iload 10
istore 8
iload 5
ifeq L4
iload 9
istore 7
iload 10
istore 8
iconst_1
iload 11
if_icmpne L4
aload 3
iconst_0
aaload
astore 13
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 14
aload 14
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 13
aload 14
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 14
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 7
iload 7
aload 14
getfield android/graphics/BitmapFactory$Options/outHeight I
invokestatic com/nd/schoollife/ui/common/view/WrapContentGridView/resizerTweetImage(II)[I
astore 13
aload 2
iconst_0
iload 7
i2f
aload 13
iconst_2
iaload
i2f
fdiv
fastore
aload 13
iconst_0
iaload
istore 7
aload 13
iconst_1
iaload
istore 8
L4:
iload 4
ifeq L5
aload 12
getfield android/util/DisplayMetrics/widthPixels I
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$dimen/ui_margin I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
iconst_5
imul
isub
istore 9
aload 3
arraylength
iconst_1
if_icmpne L6
iload 9
istore 8
iload 7
ifle L7
iload 9
istore 8
iload 7
iload 9
iconst_1
ishr
if_icmpge L7
iload 7
istore 8
L7:
aload 0
aload 1
aload 3
iload 8
iload 8
i2f
fconst_1
fmul
f2i
iload 5
iload 4
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/initData(Landroid/content/Context;[Ljava/lang/String;IIZZ)V
L8:
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setVisibility(I)V
aload 0
new com/nd/schoollife/ui/common/view/WrapContentGridView$1
dup
aload 0
aload 1
aload 3
iload 6
invokespecial com/nd/schoollife/ui/common/view/WrapContentGridView$1/<init>(Lcom/nd/schoollife/ui/common/view/WrapContentGridView;Landroid/content/Context;[Ljava/lang/String;Z)V
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
L6:
aload 0
aload 1
aload 3
iload 9
iload 8
iload 5
iload 4
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/initData(Landroid/content/Context;[Ljava/lang/String;IIZZ)V
goto L8
L5:
aload 0
aload 1
aload 3
iload 7
iload 8
iload 5
iload 4
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/initData(Landroid/content/Context;[Ljava/lang/String;IIZZ)V
goto L8
.limit locals 15
.limit stack 7
.end method

.method public initData(Landroid/content/Context;[Ljava/lang/String;IIZZ)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/getAdapter()Landroid/widget/ListAdapter;
checkcast com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter
astore 9
aload 9
astore 8
aload 9
ifnonnull L0
new com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter
dup
aload 1
invokespecial com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/<init>(Landroid/content/Context;)V
astore 8
L0:
aload 8
aload 2
invokevirtual com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/setData([Ljava/lang/String;)V
aload 8
iload 5
invokevirtual com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/setIsLocalImg(Z)V
iload 6
ifeq L1
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$dimen/thumbnail_high I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
istore 7
L2:
iload 3
ifle L3
aload 0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 3
putfield android/view/ViewGroup$LayoutParams/width I
L4:
aload 2
arraylength
iconst_1
if_icmpne L5
iload 3
ifle L6
iload 4
ifle L6
aload 8
iload 3
iload 4
invokevirtual com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/setImgSize(II)V
L7:
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setNumColumns(I)V
L8:
aload 0
aload 8
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
return
L1:
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$dimen/thumbnail_width I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
istore 7
goto L2
L3:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 7
putfield android/view/ViewGroup$LayoutParams/width I
goto L4
L6:
aload 8
iload 7
iload 7
invokevirtual com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/setImgSize(II)V
goto L7
L5:
aload 2
arraylength
iconst_4
if_icmpne L9
aload 8
iload 7
iload 7
invokevirtual com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/setImgSize(II)V
aload 0
iconst_2
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setNumColumns(I)V
iload 6
ifeq L10
aload 0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 3
iconst_3
idiv
iconst_2
imul
putfield android/view/ViewGroup$LayoutParams/width I
goto L8
L10:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 7
iconst_2
imul
i2f
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$dimen/thumbnail_spacing I
invokevirtual android/content/res/Resources/getDimension(I)F
fadd
f2i
putfield android/view/ViewGroup$LayoutParams/width I
goto L8
L9:
aload 8
iload 7
iload 7
invokevirtual com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/setImgSize(II)V
aload 0
iconst_3
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/setNumColumns(I)V
iload 6
ifne L8
aload 0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 7
iconst_3
imul
i2f
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$dimen/thumbnail_spacing I
invokevirtual android/content/res/Resources/getDimension(I)F
fconst_2
fmul
fadd
f2i
putfield android/view/ViewGroup$LayoutParams/width I
goto L8
.limit locals 10
.limit stack 4
.end method

.method protected onMeasure(II)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/height I
bipush -2
if_icmpne L0
ldc_w 536870911
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
L1:
aload 0
iload 1
iload 2
invokespecial android/widget/GridView/onMeasure(II)V
return
L0:
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected startTweetFlowImageActivity(Landroid/content/Context;[Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;IZ)V
aload 2
ifnull L0
aload 2
arraylength
ifne L1
L0:
return
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
iconst_0
istore 6
L2:
iload 6
aload 2
arraylength
if_icmpge L3
aload 7
aload 2
iload 6
aaload
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 6
iconst_1
iadd
istore 6
goto L2
L3:
new android/content/Intent
dup
aload 1
ldc com/nd/schoollife/ui/post/activity/ImageBrowserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "ImageList"
aload 7
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 2
ldc "isLocalUri"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "IS_HAVE_PRAISE"
iload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "position"
iload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ifnull L4
aload 2
ldc "PRAISE_NUM"
new java/lang/Long
dup
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraises()J
invokespecial java/lang/Long/<init>(J)V
invokevirtual java/lang/Long/intValue()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "IS_PRAISE"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "INT_POST_ID"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
instanceof android/app/Activity
ifeq L0
aload 1
checkcast android/app/Activity
aload 2
bipush 103
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L4:
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 8
.limit stack 6
.end method
