.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/FriendView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener

.field private static final 'TAG' Ljava/lang/String; = "FriendView"

.field private 'checkBox' Landroid/widget/CheckBox;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'faceLayout' Landroid/widget/RelativeLayout;

.field private 'friendConfigOnClickListeren' Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;

.field private 'gid' J

.field private 'groupMemberCount' I

.field private 'groupType' I

.field private 'mContext' Landroid/content/Context;

.field private 'mParentHandler' Landroid/os/Handler;

.field private 'mSelectModule' Z

.field private 'signText' Landroid/widget/TextView;

.field private 'uFid' J

.field private 'user' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'userLayout' Landroid/widget/LinearLayout;

.field private 'usernameText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendView/mSelectModule Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendView/groupMemberCount I
aload 0
iconst_3
putfield com/nd/android/u/contact/view/FriendView/groupType I
aload 0
aload 1
putfield com/nd/android/u/contact/view/FriendView/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/FriendView/getView()V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;ZLandroid/os/Handler;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendView/mSelectModule Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendView/groupMemberCount I
aload 0
iconst_3
putfield com/nd/android/u/contact/view/FriendView/groupType I
aload 0
iload 3
putfield com/nd/android/u/contact/view/FriendView/mSelectModule Z
aload 0
aload 1
putfield com/nd/android/u/contact/view/FriendView/mContext Landroid/content/Context;
aload 0
aload 4
putfield com/nd/android/u/contact/view/FriendView/mParentHandler Landroid/os/Handler;
aload 0
invokevirtual com/nd/android/u/contact/view/FriendView/getView()V
return
.limit locals 5
.limit stack 2
.end method

.method private initGourpInfo(J)V
aload 0
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 1
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
invokeinterface java/util/List/size()I 0
putfield com/nd/android/u/contact/view/FriendView/groupMemberCount I
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 3
aload 3
ifnonnull L0
aload 0
iconst_0
putfield com/nd/android/u/contact/view/FriendView/groupType I
return
L0:
aload 0
aload 3
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
putfield com/nd/android/u/contact/view/FriendView/groupType I
return
.limit locals 4
.limit stack 5
.end method

.method public final getView()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/view/FriendView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_friendlist_friend_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/xy_checkbox I
invokevirtual com/nd/android/u/contact/view/FriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
L1:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_layout I
invokevirtual com/nd/android/u/contact/view/FriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/view/FriendView/userLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_tx_name I
invokevirtual com/nd/android/u/contact/view/FriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/FriendView/usernameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_tx_description I
invokevirtual com/nd/android/u/contact/view/FriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/FriendView/signText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_img_layout I
invokevirtual com/nd/android/u/contact/view/FriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/view/FriendView/faceLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_img_face I
invokevirtual com/nd/android/u/contact/view/FriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/FriendView/faceImg Landroid/widget/ImageView;
aload 0
new com/nd/android/u/contact/listener/FriendConfigOnClickListeren
dup
aload 0
getfield com/nd/android/u/contact/view/FriendView/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/listener/FriendConfigOnClickListeren/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/FriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/FriendView/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/FriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/FriendView/faceLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/view/FriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/FriendView/mSelectModule Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/FriendView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/friendlist_friend_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/checkbox I
invokevirtual com/nd/android/u/contact/view/FriendView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public final initComponentValue(JIZ)V
aload 0
lload 1
aconst_null
iload 4
invokevirtual com/nd/android/u/contact/view/FriendView/initComponentValue(JLjava/lang/String;Z)V
return
.limit locals 5
.limit stack 5
.end method

.method public final initComponentValue(JLjava/lang/String;Z)V
aload 0
lload 1
putfield com/nd/android/u/contact/view/FriendView/uFid J
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
ifnonnull L0
aload 0
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
putfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
aload 0
getfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
L0:
aload 0
getfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
ifnull L1
aload 3
ifnonnull L2
aload 0
getfield com/nd/android/u/contact/view/FriendView/usernameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/nd/android/u/contact/view/FriendView/signText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/view/FriendView/user Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
lload 1
lconst_0
lcmp
ifeq L4
iload 4
ifeq L4
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L5
lload 1
iconst_3
aload 0
getfield com/nd/android/u/contact/view/FriendView/faceImg Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L6:
aload 0
getfield com/nd/android/u/contact/view/FriendView/friendConfigOnClickListeren Lcom/nd/android/u/contact/listener/FriendConfigOnClickListeren;
lload 1
invokevirtual com/nd/android/u/contact/listener/FriendConfigOnClickListeren/setFid(J)V
L7:
aload 0
getfield com/nd/android/u/contact/view/FriendView/mSelectModule Z
ifeq L8
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setEnabled(Z)V
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/isContians(J)Z
ifeq L9
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L10:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L8
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/view/FriendView/gid J
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/isExists(JJ)Z 4
ifeq L8
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setEnabled(Z)V
L8:
return
L2:
aload 0
getfield com/nd/android/u/contact/view/FriendView/usernameText Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L5:
lload 1
getstatic com/nd/android/u/contact/R$drawable/xiaoyou_default_face I
aload 0
getfield com/nd/android/u/contact/view/FriendView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
goto L6
L4:
aload 0
getfield com/nd/android/u/contact/view/FriendView/faceImg Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageCache/mDefaultBitmap Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
goto L6
L1:
aload 0
getfield com/nd/android/u/contact/view/FriendView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/FriendView/faceImg Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageCache/mDefaultBitmap Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
goto L7
L9:
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L10
.limit locals 5
.limit stack 5
.end method

.method public final isSelectModule()Z
aload 0
getfield com/nd/android/u/contact/view/FriendView/mSelectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/checkbox I
if_icmpeq L0
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/xy_checkbox I
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/contact/view/FriendView/mParentHandler Landroid/os/Handler;
ifnull L1
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/view/FriendView/uFid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L3
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
L1:
return
L3:
aload 0
getfield com/nd/android/u/contact/view/FriendView/mParentHandler Landroid/os/Handler;
bipush 50
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/nd/android/u/contact/view/FriendView/groupMemberCount I
iadd
istore 2
iload 2
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getMax_num()I
if_icmplt L4
aload 0
getfield com/nd/android/u/contact/view/FriendView/groupType I
iconst_3
if_icmpeq L5
L4:
iload 2
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getMax_num()I
if_icmplt L6
aload 0
getfield com/nd/android/u/contact/view/FriendView/gid J
lconst_0
lcmp
ifne L6
L5:
aload 0
getfield com/nd/android/u/contact/view/FriendView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/FriendView/mContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/discussion_member_limit I
iconst_1
anewarray java/lang/Object
dup
iconst_0
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getMax_num()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
return
L6:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 0
getfield com/nd/android/u/contact/view/FriendView/uFid J
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/addUid(J)Z
ifne L7
aload 0
getfield com/nd/android/u/contact/view/FriendView/checkBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
return
L2:
aload 0
getfield com/nd/android/u/contact/view/FriendView/mParentHandler Landroid/os/Handler;
bipush 51
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 0
getfield com/nd/android/u/contact/view/FriendView/uFid J
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/removeUid(J)V
L7:
aload 1
aload 0
getfield com/nd/android/u/contact/view/FriendView/uFid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/view/FriendView/mParentHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 7
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/view/FriendView/gid J
lload 1
lconst_0
lcmp
ifeq L0
aload 0
lload 1
invokespecial com/nd/android/u/contact/view/FriendView/initGourpInfo(J)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public final setSelectModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/FriendView/mSelectModule Z
return
.limit locals 2
.limit stack 2
.end method
