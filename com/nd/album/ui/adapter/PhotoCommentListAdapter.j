.bytecode 50.0
.class public synchronized com/nd/album/ui/adapter/PhotoCommentListAdapter
.super android/widget/BaseAdapter
.inner class ViewHolder inner com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder outer com/nd/album/ui/adapter/PhotoCommentListAdapter

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'picComments' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/album/bean/Comment;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 3
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder;
new com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/<init>(Lcom/nd/album/ui/adapter/PhotoCommentListAdapter;)V
astore 2
aload 2
aload 1
getstatic com/nd/album/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/imgAvatar Landroid/widget/ImageView;
aload 2
aload 1
getstatic com/nd/album/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/txtName Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/album/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/album/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/album/R$id/comment_me I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/btComment_me Landroid/view/View;
aload 2
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/btComment_me Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public addComment(Lcom/nd/album/bean/Comment;)V
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public addCommentList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/album/bean/Comment;>;)V"
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
ifnonnull L0
aload 0
aload 1
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
return
L0:
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/album/bean/Comment;
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/album/bean/Comment
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/album/ui/adapter/PhotoCommentListAdapter/getItem(I)Lcom/nd/album/bean/Comment;
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
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/comment_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
aload 0
aload 3
invokespecial com/nd/album/ui/adapter/PhotoCommentListAdapter/createViewHolder(Landroid/view/View;)Lcom/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder
astore 2
aload 0
iload 1
invokevirtual com/nd/album/ui/adapter/PhotoCommentListAdapter/getItem(I)Lcom/nd/album/bean/Comment;
astore 4
aload 4
getfield com/nd/album/bean/Comment/uid J
aload 4
getfield com/nd/album/bean/Comment/uid J
invokestatic com/nd/android/u/AlbumCallOtherModel/getUserSysAvatarId(J)I
aload 2
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/txtName Landroid/widget/TextView;
aload 4
getfield com/nd/album/bean/Comment/userName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 4
getfield com/nd/album/bean/Comment/dateline Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/album/ui/adapter/PhotoCommentListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 4
getfield com/nd/album/bean/Comment/content Ljava/lang/String;
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;I)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public setCommentList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/album/bean/Comment;>;)V"
aload 1
ifnull L0
aload 0
aload 1
putfield com/nd/album/ui/adapter/PhotoCommentListAdapter/picComments Ljava/util/ArrayList;
L0:
return
.limit locals 2
.limit stack 2
.end method
