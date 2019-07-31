.bytecode 50.0
.class public synchronized com/product/android/ui/showImage/FlowImageActivity
.super android/app/Activity

.field public static final 'IMAGE_LIST' Ljava/lang/String; = "ImageList"

.field public static final 'IS_LOCAL_URI' Ljava/lang/String; = "isLocalUri"

.field public static final 'POSITION' Ljava/lang/String; = "position"

.field protected 'adapter' Lcom/product/android/ui/showImage/FlowImageAdapter;

.field protected 'displayImageOpt' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected 'imageList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/ui/showImage/CommonImage;>;"

.field protected 'isLocalUri' Z

.field protected 'position' I

.field protected 'rel_image_bottom' Landroid/widget/RelativeLayout;

.field protected 'viewPager' Lcom/common/android/ui/widget/CompatibleViewPager;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageActivity/imageList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/product/android/ui/showImage/FlowImageActivity/position I
aload 0
iconst_0
putfield com/product/android/ui/showImage/FlowImageActivity/isLocalUri Z
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageActivity/adapter Lcom/product/android/ui/showImage/FlowImageAdapter;
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageActivity/rel_image_bottom Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageActivity/displayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return
.limit locals 1
.limit stack 2
.end method

.method protected initValue(Landroid/os/Bundle;)V
aload 1
ifnonnull L0
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/imageList Ljava/util/ArrayList;
ifnonnull L0
aload 0
aload 0
invokevirtual com/product/android/ui/showImage/FlowImageActivity/getIntent()Landroid/content/Intent;
ldc "ImageList"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
checkcast java/util/ArrayList
putfield com/product/android/ui/showImage/FlowImageActivity/imageList Ljava/util/ArrayList;
aload 0
aload 0
invokevirtual com/product/android/ui/showImage/FlowImageActivity/getIntent()Landroid/content/Intent;
ldc "position"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/product/android/ui/showImage/FlowImageActivity/position I
aload 0
aload 0
invokevirtual com/product/android/ui/showImage/FlowImageActivity/getIntent()Landroid/content/Intent;
ldc "isLocalUri"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/product/android/ui/showImage/FlowImageActivity/isLocalUri Z
L1:
return
L0:
aload 1
ifnull L1
aload 0
aload 1
ldc "ImageList"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/product/android/ui/showImage/FlowImageActivity/imageList Ljava/util/ArrayList;
aload 0
aload 1
ldc "position"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/product/android/ui/showImage/FlowImageActivity/position I
aload 0
aload 1
ldc "isLocalUri"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/product/android/ui/showImage/FlowImageActivity/isLocalUri Z
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/allcommon/R$layout/flow_image_activity I
invokevirtual com/product/android/ui/showImage/FlowImageActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/photo_pager I
invokevirtual com/product/android/ui/showImage/FlowImageActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/product/android/ui/showImage/FlowImageActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/rel_image_bottom I
invokevirtual com/product/android/ui/showImage/FlowImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/showImage/FlowImageActivity/rel_image_bottom Landroid/widget/RelativeLayout;
aload 0
aload 1
invokevirtual com/product/android/ui/showImage/FlowImageActivity/initValue(Landroid/os/Bundle;)V
aload 0
new com/product/android/ui/showImage/FlowImageAdapter
dup
aload 0
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/imageList Ljava/util/ArrayList;
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/isLocalUri Z
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/displayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokespecial com/product/android/ui/showImage/FlowImageAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
putfield com/product/android/ui/showImage/FlowImageActivity/adapter Lcom/product/android/ui/showImage/FlowImageAdapter;
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/adapter Lcom/product/android/ui/showImage/FlowImageAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/position I
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
return
.limit locals 2
.limit stack 7
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/adapter Lcom/product/android/ui/showImage/FlowImageAdapter;
invokevirtual com/product/android/ui/showImage/FlowImageAdapter/Destroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial android/app/Activity/onPause()V
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/adapter Lcom/product/android/ui/showImage/FlowImageAdapter;
invokevirtual com/product/android/ui/showImage/FlowImageAdapter/justQuit()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "position"
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/position I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "ImageList"
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/imageList Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "isLocalUri"
aload 0
getfield com/product/android/ui/showImage/FlowImageActivity/isLocalUri Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
return
.limit locals 2
.limit stack 3
.end method
