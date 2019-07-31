.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/PersonalityTagListAdapter
.super com/product/android/ui/adapter/BaseListViewAdapter
.implements com/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener
.inner class static synthetic inner com/nd/android/u/contact/adapter/PersonalityTagListAdapter$1
.inner class private static final PersonalityTagViewHolder inner com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder outer com/nd/android/u/contact/adapter/PersonalityTagListAdapter

.field public final 'VIEW_ITEM_PADDING' F

.field public final 'WATERFALL_MODE_COL' I

.field public 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/product/android/ui/adapter/BaseListViewAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
aload 0
fconst_2
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/VIEW_ITEM_PADDING F
aload 0
iconst_3
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/WATERFALL_MODE_COL I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/Object;>;)V"
aload 0
aload 1
aload 2
invokespecial com/product/android/ui/adapter/BaseListViewAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
aload 0
fconst_2
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/VIEW_ITEM_PADDING F
aload 0
iconst_3
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/WATERFALL_MODE_COL I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/PersonalityTagListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/view/PhotoWallItem
astore 4
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder
dup
aconst_null
invokespecial com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/<init>(Lcom/nd/android/u/contact/adapter/PersonalityTagListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$layout/photowall_item I
aconst_null
invokestatic android/widget/LinearLayout/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/usershow_image I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userShowIv Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userNameTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userSignTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/depart_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/depNameTv Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
aload 3
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userShowIv Landroid/widget/ImageView;
invokevirtual com/nd/android/u/contact/adapter/PersonalityTagListAdapter/setImageViewSize(Landroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/userNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/signStr Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 3
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userSignTv Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
aload 3
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/depNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
iconst_m1
bipush 6
aload 3
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userShowIv Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter$PersonalityTagViewHolder/userSignTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/signStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
.limit locals 5
.limit stack 5
.end method

.method public onItemClick(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)V
.signature "(Lcom/huewu/pla/lib/internal/PLA_AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
aload 0
invokevirtual com/nd/android/u/contact/adapter/PersonalityTagListAdapter/getCount()I
if_icmplt L0
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/mContext Landroid/content/Context;
aload 0
iload 3
invokevirtual com/nd/android/u/contact/adapter/PersonalityTagListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/view/PhotoWallItem
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 6
.limit stack 3
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
getfield com/nd/android/u/contact/adapter/PersonalityTagListAdapter/mContext Landroid/content/Context;
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
