.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter
.super android/widget/BaseAdapter
.inner class public ImageAdapter inner com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter outer com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class Holder inner com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder outer com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter

.field private 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field private 'onClickListener' Landroid/view/View$OnClickListener;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectUserActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
aload 0
aload 3
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/onClickListener Landroid/view/View$OnClickListener;
return
.limit locals 4
.limit stack 3
.end method

.method public addUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/detail_gallery_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder/<init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;)V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder/img Landroid/widget/ImageView;
aload 3
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder/img Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/onClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
new android/widget/AbsListView$LayoutParams
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mScreenWidth I
bipush 8
idiv
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/mScreenWidth I
bipush 8
idiv
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
aload 3
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder/img Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$id/face I
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(ILjava/lang/Object;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 3
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder/img Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/trans I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
lload 4
iconst_3
aload 3
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder/img Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder
astore 3
goto L1
L2:
lload 4
lload 4
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 3
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter$Holder/img Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
areturn
.limit locals 6
.limit stack 6
.end method

.method public removePosition(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 1
if_icmplt L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public removeUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public setList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/list Ljava/util/ArrayList;
L0:
return
.limit locals 2
.limit stack 3
.end method
