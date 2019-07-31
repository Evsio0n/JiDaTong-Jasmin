.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/WrapContentGridView
.super android/widget/GridView
.inner class inner com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1

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
ldc_w 3.4285715F
fcmpg
ifge L3
sipush 240
iload 0
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
ldc_w 3.4285715F
fcmpg
ifge L4
sipush 240
iload 1
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
invokestatic com/android/u/weibo/weibo/ui/widget/WrapContentGridView/resizerImageview(II)[I
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

.method public bindImageData(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)Ljava/util/ArrayList;
.signature "(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)Ljava/util/ArrayList<Ljava/lang/String;>;"
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L0
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifeq L1
L0:
aconst_null
areturn
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 15
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 16
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 17
iconst_0
istore 7
iconst_0
istore 6
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/size()I
newarray float
astore 18
fconst_1
fstore 5
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
astore 19
iconst_0
istore 8
L2:
iload 8
aload 19
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/size()I
if_icmpge L3
aload 19
iload 8
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/WbImage
astore 14
new com/android/u/weibo/weibo/business/bean/ImageExtraInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/ImageExtraInfo/<init>()V
astore 12
aload 12
aload 14
invokevirtual com/android/u/weibo/weibo/business/bean/ImageExtraInfo/copyByImageInfo(Lcom/android/u/weibo/weibo/business/bean/WbImage;)V
aload 17
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
astore 12
aload 12
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
ldc ""
astore 13
L5:
aload 16
aload 13
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/isLocalTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
ifeq L6
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
astore 13
aload 13
astore 12
aload 13
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
ldc ""
astore 12
L7:
aload 15
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L8:
iload 8
iconst_1
iadd
istore 8
goto L2
L4:
aload 12
astore 13
goto L5
L6:
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifne L9
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_width I
istore 9
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_height I
istore 10
iload 9
iload 10
invokestatic com/android/u/weibo/weibo/ui/widget/WrapContentGridView/resizerTweetImage(II)[I
astore 13
aload 18
iload 8
iload 9
i2f
aload 13
iconst_2
iaload
i2f
fdiv
fastore
iload 9
istore 7
iload 10
istore 6
iload 3
ifne L10
iload 9
istore 7
iload 10
istore 6
iload 8
ifne L10
aload 13
iconst_0
iaload
istore 7
aload 13
iconst_1
iaload
istore 6
L10:
iload 6
i2f
iload 7
i2f
fdiv
fstore 5
iload 7
sipush 240
if_icmpge L11
iload 6
sipush 240
if_icmpge L11
aload 15
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L8
L11:
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
astore 14
aload 14
astore 13
aload 14
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
aload 12
astore 13
L12:
aload 15
aload 13
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L8
L9:
iload 3
ifeq L13
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_middle Ljava/lang/String;
astore 12
L14:
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
astore 13
aload 12
astore 14
aload 12
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L15
aload 13
astore 14
L15:
aload 15
aload 14
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 13
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L16
ldc ""
astore 12
L17:
aload 16
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 18
iconst_0
fconst_1
fastore
goto L8
L13:
aload 14
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
astore 12
goto L14
L16:
aload 13
astore 12
goto L17
L3:
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 12
aload 1
ldc "window"
invokevirtual android/app/Activity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 12
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 2
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/isLocalTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
istore 11
iload 7
istore 8
iload 6
istore 9
iload 11
ifeq L18
iload 7
istore 8
iload 6
istore 9
iconst_1
aload 15
invokevirtual java/util/ArrayList/size()I
if_icmpne L18
aload 15
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
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
istore 6
iload 6
aload 14
getfield android/graphics/BitmapFactory$Options/outHeight I
invokestatic com/android/u/weibo/weibo/ui/widget/WrapContentGridView/resizerTweetImage(II)[I
astore 13
aload 18
iconst_0
iload 6
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
istore 8
aload 13
iconst_1
iaload
istore 9
L18:
iload 3
ifeq L19
aload 12
getfield android/util/DisplayMetrics/widthPixels I
aload 1
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/ui_margin I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
iconst_5
imul
iload 4
imul
isub
istore 6
aload 16
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L20
iload 6
istore 4
iload 8
ifle L21
iload 6
istore 4
iload 8
iload 6
iconst_1
ishr
if_icmpge L21
iload 8
istore 4
L21:
aload 0
aload 1
aload 16
aload 17
iload 4
iload 4
i2f
fload 5
fmul
f2i
iload 11
iload 3
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/initData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZ)V
L22:
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 0
new com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1
dup
aload 0
aload 1
aload 2
aload 16
aload 15
aload 18
invokespecial com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/<init>(Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;[F)V
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 16
areturn
L20:
aload 0
aload 1
aload 16
aload 17
iload 6
iload 9
iload 11
iload 3
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/initData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZ)V
goto L22
L19:
aload 0
aload 1
aload 15
aload 17
iload 8
iload 9
iload 11
iload 3
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/initData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZ)V
goto L22
.limit locals 20
.limit stack 9
.end method

.method public initData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZ)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/String;>;Ljava/util/ArrayList<Lcom/android/u/weibo/weibo/business/bean/ImageExtraInfo;>;IIZZ)V"
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getAdapter()Landroid/widget/ListAdapter;
checkcast com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter
astore 10
aload 10
astore 9
aload 10
ifnonnull L0
new com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter
dup
aload 1
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/<init>(Landroid/content/Context;)V
astore 9
L0:
aload 9
aload 2
aload 3
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
aload 9
iload 6
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/setIsLocalImg(Z)V
iload 7
ifeq L1
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/thumbnail_high I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
istore 8
L2:
iload 4
ifle L3
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 4
putfield android/view/ViewGroup$LayoutParams/width I
L4:
aload 2
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L5
iload 4
ifle L6
iload 5
ifle L6
aload 9
iload 4
iload 5
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/setImgSize(II)V
L7:
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setNumColumns(I)V
L8:
aload 0
aload 9
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
return
L1:
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/thumbnail_width I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
istore 8
goto L2
L3:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 8
putfield android/view/ViewGroup$LayoutParams/width I
goto L4
L6:
aload 9
iload 8
iload 8
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/setImgSize(II)V
goto L7
L5:
aload 2
invokevirtual java/util/ArrayList/size()I
iconst_4
if_icmpne L9
aload 9
iload 8
iload 8
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/setImgSize(II)V
aload 0
iconst_2
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setNumColumns(I)V
iload 7
ifeq L10
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 4
iconst_3
idiv
iconst_2
imul
putfield android/view/ViewGroup$LayoutParams/width I
goto L8
L10:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 8
iconst_2
imul
i2f
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/thumbnail_spacing I
invokevirtual android/content/res/Resources/getDimension(I)F
fadd
f2i
putfield android/view/ViewGroup$LayoutParams/width I
goto L8
L9:
aload 9
iload 8
iload 8
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/setImgSize(II)V
aload 0
iconst_3
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setNumColumns(I)V
iload 7
ifne L8
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 8
iconst_3
imul
i2f
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/thumbnail_spacing I
invokevirtual android/content/res/Resources/getDimension(I)F
fconst_2
fmul
fadd
f2i
putfield android/view/ViewGroup$LayoutParams/width I
goto L8
.limit locals 11
.limit stack 4
.end method

.method protected onMeasure(II)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
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

.method protected startTweetFlowImageActivity(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;I[F)V
.signature "(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/util/ArrayList<Ljava/lang/String;>;Ljava/util/ArrayList<Ljava/lang/String;>;I[F)V"
.catch org/json/JSONException from L0 to L1 using L2
aload 3
ifnonnull L3
aload 2
ifnull L4
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L4
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifeq L3
L4:
return
L3:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 14
iconst_0
istore 9
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/size()I
istore 10
aconst_null
astore 13
aconst_null
astore 12
iconst_0
istore 7
L5:
iload 9
istore 8
aload 13
astore 11
iload 7
iload 10
if_icmpge L6
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
iload 7
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/WbImage
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_type I
iconst_1
if_icmpne L7
iconst_1
istore 8
new com/android/u/weibo/weibo/business/bean/WbImage
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbImage/<init>()V
astore 11
aload 11
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
iload 7
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/WbImage
getfield com/android/u/weibo/weibo/business/bean/WbImage/id Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/WbImage/id Ljava/lang/String;
aload 11
aload 4
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
aload 11
aload 3
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
aload 12
astore 4
iconst_0
ifne L8
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L8:
aload 4
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
astore 11
L6:
aload 2
ifnull L9
ldc ""
astore 4
L0:
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 2
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 2
L1:
aload 14
ldc "topicinfo"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L9:
iload 8
ifeq L10
aload 14
ldc "image_position"
iload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
aload 14
aload 11
sipush 1012
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;I)V
return
L7:
iload 7
iconst_1
iadd
istore 7
goto L5
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
astore 2
goto L1
L10:
aload 14
aload 1
ldc com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 14
ldc "position"
iload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ifnull L11
aload 14
ldc "urls"
aload 3
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
L11:
aload 6
ifnull L12
aload 14
ldc "scales"
aload 6
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
pop
L12:
aload 1
aload 14
sipush 1012
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 15
.limit stack 4
.end method
