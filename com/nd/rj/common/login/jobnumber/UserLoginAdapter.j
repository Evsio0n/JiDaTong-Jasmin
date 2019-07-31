.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/UserLoginAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$2
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$3
.inner class private Holder inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder outer com/nd/rj/common/login/jobnumber/UserLoginAdapter
.inner class public static abstract interface IOnOper inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper outer com/nd/rj/common/login/jobnumber/UserLoginAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field private 'mOper' Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;

.field private 'onDel' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mOper Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;
aload 0
new com/nd/rj/common/login/jobnumber/UserLoginAdapter$1
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/<init>(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)V
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/onDel Landroid/view/View$OnClickListener;
aload 0
aload 2
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mOper Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mOper Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;
areturn
.limit locals 1
.limit stack 1
.end method

.method public addItem(Lcom/product/android/business/bean/UserInfo;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
iload 1
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
L0:
aconst_null
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
iload 1
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/getItem(I)Ljava/lang/Object;
astore 5
aload 2
astore 3
aload 5
ifnull L0
aload 2
ifnonnull L1
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903543
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder
dup
aload 0
aconst_null
invokespecial com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder/<init>(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;)V
astore 4
aload 4
aload 2
ldc_w 2131626215
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder/tvUsername Landroid/widget/TextView;
aload 4
aload 2
ldc_w 2131626216
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder/btnDel Landroid/widget/ImageButton;
aload 4
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder/btnDel Landroid/widget/ImageButton;
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/onDel Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 4
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L2:
aload 4
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder/btnDel Landroid/widget/ImageButton;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/widget/ImageButton/setTag(Ljava/lang/Object;)V
aload 4
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder/btnDel Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setFocusable(Z)V
aload 5
instanceof com/product/android/business/bean/UserInfo
ifeq L3
aload 5
checkcast com/product/android/business/bean/UserInfo
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
astore 3
L4:
aload 4
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder/tvUsername Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
astore 3
L0:
aload 3
areturn
L1:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/rj/common/login/jobnumber/UserLoginAdapter$Holder
astore 4
goto L2
L3:
aload 5
instanceof com/product/android/business/login/JobNumberUserInfo
ifeq L5
aload 5
checkcast com/product/android/business/login/JobNumberUserInfo
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_name()Ljava/lang/String;
astore 3
goto L4
L5:
ldc ""
astore 3
goto L4
.limit locals 6
.limit stack 4
.end method

.method public removeItem(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L0:
aload 0
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Object;>;)V"
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter/mList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
