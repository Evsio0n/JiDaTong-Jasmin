.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/PhotoWallListAdapter
.super com/product/android/ui/adapter/BaseListViewAdapter
.implements com/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener
.inner class inner com/nd/android/u/contact/adapter/PhotoWallListAdapter$1
.inner class inner com/nd/android/u/contact/adapter/PhotoWallListAdapter$2
.inner class private static final HRRecognizeViewHolder inner com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder outer com/nd/android/u/contact/adapter/PhotoWallListAdapter
.inner class private static final PhotoWallViewHolder inner com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder outer com/nd/android/u/contact/adapter/PhotoWallListAdapter

.field public final 'GRIDVIEW_MODE_COL' I

.field public final 'VIEW_ITEM_PADDING' F

.field public final 'WATERFALL_MODE_COL' I

.field public 'mContext' Landroid/content/Context;

.field public 'mode' B

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/product/android/ui/adapter/BaseListViewAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;)V
aload 0
fconst_2
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/VIEW_ITEM_PADDING F
aload 0
iconst_3
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/WATERFALL_MODE_COL I
aload 0
iconst_4
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/GRIDVIEW_MODE_COL I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mContext Landroid/content/Context;
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
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/VIEW_ITEM_PADDING F
aload 0
iconst_3
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/WATERFALL_MODE_COL I
aload 0
iconst_4
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/GRIDVIEW_MODE_COL I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/getItemViewType(I)I
tableswitch 0
L0
L1
default : L2
L2:
aload 2
areturn
L0:
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/view/PhotoWallItem
astore 4
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mode B
ifne L3
aload 2
ifnonnull L4
new com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder
dup
aconst_null
invokespecial com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/<init>(Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$layout/photowall_item I
aconst_null
invokestatic android/widget/LinearLayout/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/usershow_image I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userShowIv Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userNameTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userSignTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/depart_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/depNameTv Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L5:
aload 0
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userShowIv Landroid/widget/ImageView;
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/setImageViewSize(Landroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/userNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/signStr Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userSignTv Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L7:
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/depNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
iconst_m1
bipush 6
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userShowIv Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
aload 2
areturn
L4:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder
astore 3
goto L5
L6:
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userSignTv Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userSignTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/signStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
L3:
aload 2
ifnonnull L8
new com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder
dup
aconst_null
invokespecial com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/<init>(Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$layout/photowall_grid_item I
aconst_null
invokestatic android/widget/LinearLayout/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/face_image I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userShowIv Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userNameTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userSignTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/depart_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/depNameTv Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L9:
aload 0
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userShowIv Landroid/widget/ImageView;
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/setImageViewSize(Landroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/userNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
iconst_m1
iconst_2
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder/userShowIv Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JIBLandroid/widget/ImageView;)V
aload 2
areturn
L8:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/PhotoWallListAdapter$PhotoWallViewHolder
astore 3
goto L9
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/business/HREntryItem
astore 4
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mode B
ifne L10
aload 2
ifnonnull L11
new com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder
dup
aconst_null
invokespecial com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/<init>(Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$layout/hr_recognize_entry I
aconst_null
invokestatic android/widget/LinearLayout/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/recognize_entry_grid I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/NestInListGridView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/hrRecognizeEntryGv Lcom/product/android/ui/widget/NestInListGridView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/userNameTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/depart_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/depNameTv Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L12:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/userNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/business/HREntryItem/userNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/depNameTv Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/business/HREntryItem/depNameStr Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/contact/business/HREntryItem/uids Ljava/util/ArrayList;
astore 4
new com/nd/android/u/contact/adapter/HREntryAdapter
dup
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/context Landroid/content/Context;
invokespecial com/nd/android/u/contact/adapter/HREntryAdapter/<init>(Landroid/content/Context;)V
astore 5
aload 5
aload 4
invokevirtual com/nd/android/u/contact/adapter/HREntryAdapter/setList(Ljava/util/ArrayList;)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/hrRecognizeEntryGv Lcom/product/android/ui/widget/NestInListGridView;
aload 5
invokevirtual com/product/android/ui/widget/NestInListGridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/hrRecognizeEntryGv Lcom/product/android/ui/widget/NestInListGridView;
new com/nd/android/u/contact/adapter/PhotoWallListAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/PhotoWallListAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;)V
invokevirtual com/product/android/ui/widget/NestInListGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 2
areturn
L11:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder
astore 3
goto L12
L10:
aload 2
ifnonnull L13
new com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder
dup
aconst_null
invokespecial com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/<init>(Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$layout/hr_recognize_entry_for_grid_mode I
aconst_null
invokestatic android/widget/LinearLayout/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/recognize_entry_grid I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/NestInListGridView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/hrRecognizeEntryGv Lcom/product/android/ui/widget/NestInListGridView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/userNameTv Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/depart_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/depNameTv Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L14:
aload 0
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/hrRecognizeEntryGv Lcom/product/android/ui/widget/NestInListGridView;
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/setGridViewSize(Lcom/product/android/ui/widget/NestInListGridView;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 1
L15:
iload 1
iconst_4
if_icmpge L16
aload 5
aload 4
getfield com/nd/android/u/contact/business/HREntryItem/uids Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L15
L13:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder
astore 3
goto L14
L16:
new com/nd/android/u/contact/adapter/HREntryAdapter
dup
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/context Landroid/content/Context;
invokespecial com/nd/android/u/contact/adapter/HREntryAdapter/<init>(Landroid/content/Context;)V
astore 4
aload 4
aload 5
invokevirtual com/nd/android/u/contact/adapter/HREntryAdapter/setList(Ljava/util/ArrayList;)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/hrRecognizeEntryGv Lcom/product/android/ui/widget/NestInListGridView;
aload 4
invokevirtual com/product/android/ui/widget/NestInListGridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 3
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$HRRecognizeViewHolder/hrRecognizeEntryGv Lcom/product/android/ui/widget/NestInListGridView;
new com/nd/android/u/contact/adapter/PhotoWallListAdapter$2
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/PhotoWallListAdapter$2/<init>(Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;)V
invokevirtual com/product/android/ui/widget/NestInListGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 2
areturn
.limit locals 6
.limit stack 5
.end method

.method public onItemClick(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)V
.signature "(Lcom/huewu/pla/lib/internal/PLA_AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
aload 0
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/getCount()I
if_icmplt L0
return
L0:
aload 0
iload 3
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/getItemViewType(I)I
tableswitch 0
L1
L2
default : L3
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mContext Landroid/content/Context;
aload 0
iload 3
invokevirtual com/nd/android/u/contact/adapter/PhotoWallListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/view/PhotoWallItem
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
L2:
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mContext Landroid/content/Context;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toHRMainActivty(Landroid/content/Context;)V
return
.limit locals 6
.limit stack 3
.end method

.method public setGridViewSize(Lcom/product/android/ui/widget/NestInListGridView;)V
aload 1
invokevirtual com/product/android/ui/widget/NestInListGridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 3
iconst_3
istore 2
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mode B
iconst_1
if_icmpne L0
iconst_4
istore 2
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
iload 2
idiv
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mContext Landroid/content/Context;
ldc_w 4.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
isub
istore 2
aload 3
iload 2
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mode B
iconst_1
if_icmpne L1
aload 3
iload 2
putfield android/view/ViewGroup$LayoutParams/height I
L2:
aload 1
aload 3
invokevirtual com/product/android/ui/widget/NestInListGridView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
L1:
aload 3
iload 2
iconst_3
imul
iconst_1
ishr
putfield android/view/ViewGroup$LayoutParams/height I
goto L2
.limit locals 4
.limit stack 3
.end method

.method public setImageViewSize(Landroid/widget/ImageView;)V
aload 1
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 3
iconst_3
istore 2
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mode B
iconst_1
if_icmpne L0
iconst_4
istore 2
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
iload 2
idiv
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mContext Landroid/content/Context;
ldc_w 4.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
isub
istore 2
aload 3
iload 2
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mode B
iconst_1
if_icmpne L1
aload 3
iload 2
putfield android/view/ViewGroup$LayoutParams/height I
L2:
aload 1
aload 3
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
L1:
aload 3
iload 2
iconst_3
imul
iconst_1
ishr
putfield android/view/ViewGroup$LayoutParams/height I
goto L2
.limit locals 4
.limit stack 3
.end method
