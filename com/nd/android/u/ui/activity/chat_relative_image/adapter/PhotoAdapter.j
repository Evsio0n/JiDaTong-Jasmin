.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter
.super com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$2

.field private 'handler' Landroid/os/Handler;

.field private 'height' I

.field private 'selectedList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;>;"

.field private 'width' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/<init>(Landroid/content/Context;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/selectedList Ljava/util/List;
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/handler Landroid/os/Handler;
aload 0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$dimen/send_image_photo_width I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/width I
aload 0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$dimen/send_image_photo_height I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/height I
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/selectedList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/setCheckText(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;I)V
return
.limit locals 3
.limit stack 3
.end method

.method private setCheckText(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;I)V
iload 2
ifne L0
aload 1
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/checkView Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/send_image_check_normal I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 1
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/checkView Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 1
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/checkView Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$drawable/send_image_check_selected I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 1
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/checkView Landroid/widget/TextView;
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 2
.end method

.method private setSelectedImg(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;)V
iconst_0
istore 5
iconst_0
istore 3
L0:
iload 5
istore 4
iload 3
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/selectedList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/selectedList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/Photo
astore 6
aload 6
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/path Ljava/lang/String;
ifnull L2
aload 6
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/path Ljava/lang/String;
aload 2
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/path Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
iload 3
iconst_1
iadd
istore 4
L1:
aload 0
aload 1
iload 4
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/setCheckText(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;I)V
return
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
.limit locals 7
.limit stack 3
.end method

.method public getSelcted()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;>;"
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/selectedList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/Photo
astore 4
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/getInstance()Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
aload 4
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/id J
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/getDrawable(J)Landroid/graphics/drawable/Drawable;
astore 5
aload 5
ifnull L0
aload 2
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/imageView Landroid/widget/ImageView;
aload 5
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
L1:
aload 0
aload 2
aload 4
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/setSelectedImg(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;)V
aload 2
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/textView Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
new com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$2
dup
aload 0
aload 4
aload 2
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$2/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Photo;Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
areturn
L0:
aload 2
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/imageView Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/send_image_loadding_icon I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/isScrolling Z
ifne L1
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/getInstance()Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/handler Landroid/os/Handler;
aload 4
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/id J
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/width I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/height I
new com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1
dup
aload 0
aload 2
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;)V
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/synchronizedSetDrawable(Landroid/content/Context;Landroid/os/Handler;JIILcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
goto L1
.limit locals 6
.limit stack 11
.end method
