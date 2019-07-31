.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter
.super android/widget/BaseAdapter
.inner class public static Holder inner com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder outer com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter

.field private static final 'DEVICE' I = 999


.field private 'mContext' Landroid/content/Context;

.field private 'mPspList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mPspList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mPspList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mPspList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mPspList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.catch java/lang/Exception from L0 to L1 using L2
aload 2
astore 3
aload 2
ifnonnull L3
new com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder
dup
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/<init>()V
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/psp_search_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/chat/R$id/logo_imgv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/CircleImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/image Lcom/nd/android/u/ui/widge/CircleImageView;
aload 2
aload 3
getstatic com/nd/android/u/chat/R$id/name_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/nameTitle Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/chat/R$id/psp_desc I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/content Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/chat/R$id/num_follow_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/numFollow Landroid/widget/TextView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L3:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mPspList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 6
aload 3
getstatic com/nd/android/u/chat/R$id/logo_imgv I
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/nameTitle Landroid/widget/TextView;
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L5:
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/content Landroid/widget/TextView;
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
lstore 4
lload 4
ldc2_w 999L
lcmp
ifle L6
new java/text/DecimalFormat
dup
invokespecial java/text/DecimalFormat/<init>()V
astore 7
aload 7
ldc "0,000"
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
L0:
aload 7
lload 4
invokevirtual java/text/DecimalFormat/format(J)Ljava/lang/String;
astore 7
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/numFollow Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/psp_follow_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 7
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
iconst_1
if_icmpne L7
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/nameTitle Landroid/widget/TextView;
iconst_0
iconst_0
getstatic com/nd/android/u/chat/R$drawable/auth_recent I
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
L8:
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/image Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_0
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
aload 3
areturn
L4:
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/nameTitle Landroid/widget/TextView;
aload 6
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
L2:
astore 7
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/numFollow Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/psp_follow_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L6:
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/numFollow Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/psp_follow_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L7:
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/nameTitle Landroid/widget/TextView;
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
goto L8
.limit locals 8
.limit stack 8
.end method

.method public setPspList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/mPspList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
