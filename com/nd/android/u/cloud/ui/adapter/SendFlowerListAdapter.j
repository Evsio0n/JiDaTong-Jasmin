.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter
.super com/product/android/ui/adapter/BaseListViewAdapter
.implements com/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener
.inner class inner com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1
.inner class inner com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2
.inner class inner com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3
.inner class private static final SendFlowerViewHolder inner com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder outer com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter

.field public final 'VIEW_ITEM_PADDING' F

.field public final 'WATERFALL_MODE_COL' I

.field protected 'flowerDialogListener' Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;

.field public 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/product/android/ui/adapter/BaseListViewAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
aload 0
new com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3/<init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;)V
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/flowerDialogListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
aload 0
fconst_2
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/VIEW_ITEM_PADDING F
aload 0
iconst_3
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/WATERFALL_MODE_COL I
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/Object;>;)V"
aload 0
aload 1
aload 2
invokespecial com/product/android/ui/adapter/BaseListViewAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
aload 0
new com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$3/<init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;)V
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/flowerDialogListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
aload 0
fconst_2
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/VIEW_ITEM_PADDING F
aload 0
iconst_3
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/WATERFALL_MODE_COL I
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/view/PhotoWallItem
astore 4
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder
dup
aconst_null
invokespecial com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/<init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/context Landroid/content/Context;
ldc_w 2130903704
aconst_null
invokestatic android/widget/LinearLayout/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
ldc_w 2131626646
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/userShowIv Landroid/widget/ImageView;
aload 3
aload 2
ldc_w 2131625249
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/userNameTv Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131626647
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/depNameTv Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131626649
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/sendFlowerIv Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
aload 3
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/userShowIv Landroid/widget/ImageView;
invokevirtual com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/setImageViewSize(Landroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/userNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/userNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/depNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
iconst_m1
bipush 6
aload 3
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/userShowIv Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/userShowIv Landroid/widget/ImageView;
new com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1
dup
aload 0
aload 4
invokespecial com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1/<init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;Lcom/nd/android/u/contact/view/PhotoWallItem;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder/sendFlowerIv Landroid/widget/ImageView;
new com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2
dup
aload 0
aload 4
invokespecial com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2/<init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;Lcom/nd/android/u/contact/view/PhotoWallItem;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$SendFlowerViewHolder
astore 3
goto L1
.limit locals 5
.limit stack 5
.end method

.method public onItemClick(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)V
.signature "(Lcom/huewu/pla/lib/internal/PLA_AdapterView<*>;Landroid/view/View;IJ)V"
return
.limit locals 6
.limit stack 0
.end method

.method public setImageViewSize(Landroid/widget/ImageView;)V
aload 1
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
iconst_3
idiv
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/mContext Landroid/content/Context;
ldc_w 4.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
isub
istore 2
aload 3
iload 2
putfield android/view/ViewGroup$LayoutParams/width I
aload 3
iload 2
iconst_3
imul
iconst_1
ishr
putfield android/view/ViewGroup$LayoutParams/height I
aload 1
aload 3
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 4
.limit stack 3
.end method
