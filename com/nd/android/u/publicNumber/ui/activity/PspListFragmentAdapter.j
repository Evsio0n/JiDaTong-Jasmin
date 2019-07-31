.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter
.super android/widget/BaseAdapter

.field private 'mContext' Landroid/content/Context;

.field 'mData' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/mData Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/mData Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/mData Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
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
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemViews
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/publicNumber/ui/widget/PspItemViews
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/mContext Landroid/content/Context;
invokespecial com/nd/android/u/publicNumber/ui/widget/PspItemViews/<init>(Landroid/content/Context;)V
astore 3
L0:
aload 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/mData Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/ArrayList
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/setData(Ljava/util/ArrayList;)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;>;)V"
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragmentAdapter/mData Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
