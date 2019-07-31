.bytecode 50.0
.class public synchronized abstract com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2
.inner class ViewHolder inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder outer com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter

.field protected 'context' Landroid/content/Context;

.field private 'inflater' Landroid/view/LayoutInflater;

.field protected 'isScrolling' Z

.field protected 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;>;"

.field public 'scorllListner' Landroid/widget/AbsListView$OnScrollListener;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/list Ljava/util/List;
aload 0
new com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/scorllListner Landroid/widget/AbsListView$OnScrollListener;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/context Landroid/content/Context;
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/inflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 4
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/list Ljava/util/List;
ifnonnull L0
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;>;"
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/inflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/layout_send_image_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/zero_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/zeroLayout Landroid/view/View;
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/data_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/dataLayout Landroid/view/View;
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/photo_image I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/imageView Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/photo_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/textView Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/check_icon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/checkView Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
iload 1
ifne L2
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/zeroLayout Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/dataLayout Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 2
new com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/zeroLayout Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/dataLayout Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
iload 1
iconst_1
isub
aload 3
aload 2
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/getView(ILcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public abstract getView(ILcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
