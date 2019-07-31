.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter$Holder outer com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter

.field private static final 'MAXSIZE' I = 5


.field private 'mContext' Landroid/content/Context;

.field public 'mMemberList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public getAppList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
iconst_5
istore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
ifnonnull L0
iconst_0
istore 1
L1:
iload 1
ireturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_5
if_icmpgt L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
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
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter$Holder/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_psp_interestmember_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/chat/R$id/interestmember_imgv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter$Holder/image Landroid/widget/ImageView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 2
getfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter$Holder/image Landroid/widget/ImageView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public setUserList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/mMemberList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
