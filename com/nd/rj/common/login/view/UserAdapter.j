.bytecode 50.0
.class public synchronized com/nd/rj/common/login/view/UserAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/rj/common/login/view/UserAdapter$1
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$1
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$2
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$3
.inner class private Holder inner com/nd/rj/common/login/view/UserAdapter$Holder outer com/nd/rj/common/login/view/UserAdapter
.inner class public static abstract interface IOnOper inner com/nd/rj/common/login/view/UserAdapter$IOnOper outer com/nd/rj/common/login/view/UserAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

.field private 'mOper' Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;

.field private 'onDel' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/login/view/UserAdapter/mOper Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;
aload 0
new com/nd/rj/common/login/view/UserAdapter$1
dup
aload 0
invokespecial com/nd/rj/common/login/view/UserAdapter$1/<init>(Lcom/nd/rj/common/login/view/UserAdapter;)V
putfield com/nd/rj/common/login/view/UserAdapter/onDel Landroid/view/View$OnClickListener;
aload 0
aload 2
putfield com/nd/rj/common/login/view/UserAdapter/mOper Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
aload 0
aload 1
putfield com/nd/rj/common/login/view/UserAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/view/UserAdapter;)Ljava/util/List;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/rj/common/login/view/UserAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/rj/common/login/view/UserAdapter;)Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mOper Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;
areturn
.limit locals 1
.limit stack 1
.end method

.method public addItem(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/rj/common/login/view/UserAdapter/getItem(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 4
aload 2
ifnonnull L0
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/rj/common/R$layout/nd_user_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/rj/common/login/view/UserAdapter$Holder
dup
aload 0
aconst_null
invokespecial com/nd/rj/common/login/view/UserAdapter$Holder/<init>(Lcom/nd/rj/common/login/view/UserAdapter;Lcom/nd/rj/common/login/view/UserAdapter$1;)V
astore 3
aload 3
aload 2
getstatic com/nd/rj/common/R$id/tvUsername I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/login/view/UserAdapter$Holder/tvUsername Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/rj/common/R$id/btnDel I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/rj/common/login/view/UserAdapter$Holder/btnDel Landroid/widget/ImageButton;
aload 3
getfield com/nd/rj/common/login/view/UserAdapter$Holder/btnDel Landroid/widget/ImageButton;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/onDel Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/rj/common/login/view/UserAdapter$Holder/btnDel Landroid/widget/ImageButton;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/widget/ImageButton/setTag(Ljava/lang/Object;)V
aload 3
getfield com/nd/rj/common/login/view/UserAdapter$Holder/btnDel Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setFocusable(Z)V
aload 3
getfield com/nd/rj/common/login/view/UserAdapter$Holder/tvUsername Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/rj/common/login/view/UserAdapter$Holder
astore 3
goto L1
.limit locals 5
.limit stack 4
.end method

.method public removeItem(I)V
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
ifnull L0
iload 1
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L0:
aload 0
invokevirtual com/nd/rj/common/login/view/UserAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/nd/rj/common/login/view/UserAdapter/mList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
