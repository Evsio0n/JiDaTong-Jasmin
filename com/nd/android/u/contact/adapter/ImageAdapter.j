.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/ImageAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/ImageAdapter$Holder outer com/nd/android/u/contact/adapter/ImageAdapter

.field private final 'PAGESIZE' I

.field private 'mContext' Landroid/content/Context;

.field 'mList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field private 'mScrollerStatus' I

.field private 'mWidth' I

.field private 'pageNo' I

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ImageAdapter/pageNo I
aload 0
bipush 40
putfield com/nd/android/u/contact/adapter/ImageAdapter/PAGESIZE I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/ImageAdapter/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/adapter/ImageAdapter/mWidth I
return
.limit locals 3
.limit stack 2
.end method

.method public final addPage()V
aload 0
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/pageNo I
iconst_1
iadd
putfield com/nd/android/u/contact/adapter/ImageAdapter/pageNo I
return
.limit locals 1
.limit stack 3
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/pageNo I
iconst_1
iadd
bipush 40
imul
istore 1
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 1
iload 2
if_icmple L1
iload 2
ireturn
L1:
iload 1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnull L0
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/ImageAdapter$Holder
astore 6
aload 2
astore 3
aload 6
astore 2
L1:
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
ifnull L2
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L3
L2:
aload 3
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/image_grid_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
new com/nd/android/u/contact/adapter/ImageAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/ImageAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/ImageAdapter;)V
astore 2
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/image_grid_item_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/image_grid_item_text_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/nameText Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/image_grid_item_img_mask I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mMaskImageView Landroid/widget/ImageView;
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 6
aload 6
ifnull L4
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mWidth I
ifeq L4
aload 6
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mWidth I
iconst_4
idiv
bipush 10
isub
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 6
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mWidth I
iconst_4
idiv
bipush 10
isub
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
aload 6
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L5:
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L1
L4:
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mWidth I
ifeq L5
new android/widget/RelativeLayout$LayoutParams
dup
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mWidth I
iconst_4
idiv
bipush 10
isub
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mWidth I
iconst_4
idiv
bipush 10
isub
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 6
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
aload 6
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto L5
L3:
aload 0
getfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 6
aload 6
invokevirtual com/product/android/business/login/BindUser/getUid()J
aload 6
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/nameText Landroid/widget/TextView;
aload 6
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mMaskImageView Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
areturn
L6:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/nameText Landroid/widget/TextView;
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
ifnull L2
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
aload 2
getfield com/nd/android/u/contact/adapter/ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 3
areturn
.limit locals 7
.limit stack 5
.end method

.method public final initValue()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ImageAdapter/pageNo I
return
.limit locals 1
.limit stack 2
.end method

.method public final setList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/ImageAdapter/mList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/ImageAdapter/pageNo I
return
.limit locals 2
.limit stack 2
.end method

.method public final setScrollerStatus(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/ImageAdapter/mScrollerStatus I
return
.limit locals 2
.limit stack 2
.end method
