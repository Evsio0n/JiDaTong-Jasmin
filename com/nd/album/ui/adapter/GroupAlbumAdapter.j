.bytecode 50.0
.class public synchronized com/nd/album/ui/adapter/GroupAlbumAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/album/ui/adapter/GroupAlbumAdapter$1

.field public static final 'ALBUM_VIEW' I = 1


.field public static final 'SEPARATOR_VIEW' I = 2


.field public static final 'VIEW_TYPE_COUNT' I = 3


.field public static final 'YEAR_VIEW' I = 0


.field private 'mCategory' I

.field private 'mContext' Landroid/content/Context;

.field private 'mGImageItems' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/album/bean/GroupImageList;>;"

.field private 'mImageList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mQid' J

.method public <init>(Landroid/content/Context;J)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mImageList Ljava/util/ArrayList;
aload 0
iconst_m1
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mCategory I
aload 0
lconst_0
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mQid J
aload 0
aload 1
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mContext Landroid/content/Context;
aload 0
lload 2
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mQid J
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;II)I
aload 0
iload 1
iload 2
invokespecial com/nd/album/ui/adapter/GroupAlbumAdapter/getItemPosition(II)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$200(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mImageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)I
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mCategory I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)J
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mQid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method private bindData(Landroid/view/View;Lcom/nd/album/ui/adapter/GroupAlbumViewHolder;Lcom/nd/album/bean/GroupImageList;II)V
iload 5
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L1:
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
ifnonnull L4
aload 2
new com/nd/album/ui/adapter/AlbumBrowseAdapter
dup
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mContext Landroid/content/Context;
iconst_1
invokespecial com/nd/album/ui/adapter/AlbumBrowseAdapter/<init>(Landroid/content/Context;Z)V
putfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
aload 3
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/AlbumBrowseAdapter/setImageList(Ljava/util/ArrayList;)V
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAlbumList Lcom/nd/album/ui/widget/WrapContentGridView;
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
invokevirtual com/nd/album/ui/widget/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
L5:
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mTime Landroid/widget/TextView;
aload 3
getfield com/nd/album/bean/GroupImageList/time Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L4:
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
aload 3
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/AlbumBrowseAdapter/setImageList(Ljava/util/ArrayList;)V
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
invokevirtual com/nd/album/ui/adapter/AlbumBrowseAdapter/notifyDataSetChanged()V
goto L5
L0:
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mYear Landroid/widget/TextView;
aload 3
getfield com/nd/album/bean/GroupImageList/year I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mYear Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mHorizonLine Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 6
.limit stack 5
.end method

.method private getItemPosition(II)I
iconst_0
istore 4
iconst_0
istore 3
L0:
iload 3
iload 1
if_icmpeq L1
iload 3
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
iload 4
istore 5
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/album/bean/GroupImageList
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
ifnull L2
iload 4
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/album/bean/GroupImageList
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iadd
istore 5
L2:
iload 3
iconst_1
iadd
istore 3
iload 5
istore 4
goto L0
L1:
iload 4
iload 2
iadd
ireturn
.limit locals 6
.limit stack 3
.end method

.method private getItemViewType(ILcom/nd/album/bean/GroupImageList;)I
aload 2
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
ifnonnull L0
aload 2
getfield com/nd/album/bean/GroupImageList/year I
ifeq L1
iconst_0
ireturn
L1:
iconst_2
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
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

.method public getItemViewType(I)I
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
ifnonnull L0
iconst_m1
ireturn
L0:
aload 0
iload 1
aload 0
iload 1
invokevirtual com/nd/album/ui/adapter/GroupAlbumAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/album/bean/GroupImageList
invokespecial com/nd/album/ui/adapter/GroupAlbumAdapter/getItemViewType(ILcom/nd/album/bean/GroupImageList;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/album/ui/adapter/GroupAlbumAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/album/bean/GroupImageList
astore 5
aload 0
iload 1
invokevirtual com/nd/album/ui/adapter/GroupAlbumAdapter/getItemViewType(I)I
istore 4
aload 2
ifnonnull L0
new com/nd/album/ui/adapter/GroupAlbumViewHolder
dup
invokespecial com/nd/album/ui/adapter/GroupAlbumViewHolder/<init>()V
astore 3
iload 4
tableswitch 0
L1
L2
L1
default : L3
L3:
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/group_album_year_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/album/R$id/text_year I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mYear Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/album/R$id/horizon_time_line I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mHorizonLine Landroid/view/View;
L4:
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L5:
aload 0
aload 2
aload 3
aload 5
iload 1
iload 4
invokespecial com/nd/album/ui/adapter/GroupAlbumAdapter/bindData(Landroid/view/View;Lcom/nd/album/ui/adapter/GroupAlbumViewHolder;Lcom/nd/album/bean/GroupImageList;II)V
aload 2
areturn
L2:
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/group_album_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/album/R$id/today_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mTime Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/album/R$id/album_grid_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/album/ui/widget/WrapContentGridView
putfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAlbumList Lcom/nd/album/ui/widget/WrapContentGridView;
aload 3
getfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mAlbumList Lcom/nd/album/ui/widget/WrapContentGridView;
new com/nd/album/ui/adapter/GroupAlbumAdapter$1
dup
aload 0
iload 1
invokespecial com/nd/album/ui/adapter/GroupAlbumAdapter$1/<init>(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;I)V
invokevirtual com/nd/album/ui/widget/WrapContentGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
goto L4
L1:
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/group_album_year_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/album/R$id/text_year I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mYear Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/album/R$id/horizon_time_line I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/album/ui/adapter/GroupAlbumViewHolder/mHorizonLine Landroid/view/View;
goto L4
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/album/ui/adapter/GroupAlbumViewHolder
astore 3
goto L5
.limit locals 6
.limit stack 6
.end method

.method public getViewTypeCount()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCategory(I)V
aload 0
iload 1
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mCategory I
return
.limit locals 2
.limit stack 2
.end method

.method public setGImageItems(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/album/bean/GroupImageList;>;)V"
aload 0
aload 1
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mImageList Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/album/ui/adapter/GroupAlbumAdapter/mImageList Ljava/util/ArrayList;
L1:
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mGImageItems Ljava/util/ArrayList;
ifnull L2
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/album/bean/GroupImageList
astore 2
aload 2
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
ifnull L3
aload 2
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L3
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mImageList Ljava/util/ArrayList;
aload 2
getfield com/nd/album/bean/GroupImageList/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
goto L3
L0:
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter/mImageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
goto L1
L2:
return
.limit locals 3
.limit stack 3
.end method
