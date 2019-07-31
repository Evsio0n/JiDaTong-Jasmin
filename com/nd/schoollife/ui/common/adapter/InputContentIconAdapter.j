.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/adapter/InputContentIconAdapter
.super android/widget/BaseAdapter
.inner class static synthetic inner com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$1
.inner class private static Holder inner com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder outer com/nd/schoollife/ui/common/adapter/InputContentIconAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mIcons' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommentIconBean;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
aload 0
aload 1
putfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public getAppList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommentIconBean;>;"
aload 0
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
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
ifnonnull L0
new com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder
dup
aconst_null
invokespecial com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder/<init>(Lcom/nd/schoollife/ui/common/adapter/InputContentIconAdapter$1;)V
astore 3
aload 0
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/comment_icons_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_comment_icon_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder/image Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_comment_icon_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder/appname Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommentIconBean
astore 4
aload 3
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder/image Landroid/widget/ImageView;
aload 4
invokevirtual com/nd/schoollife/common/bean/structure/CommentIconBean/getResId()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 3
getfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder/appname Landroid/widget/TextView;
aload 4
invokevirtual com/nd/schoollife/common/bean/structure/CommentIconBean/getTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/common/adapter/InputContentIconAdapter$Holder
astore 3
goto L1
.limit locals 5
.limit stack 3
.end method

.method public setAppList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommentIconBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/ui/common/adapter/InputContentIconAdapter/mIcons Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
