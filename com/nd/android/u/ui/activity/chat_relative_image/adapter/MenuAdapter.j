.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter
.super android/widget/BaseAdapter
.inner class ViewHolder inner com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder outer com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter

.field private 'context' Landroid/content/Context;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/list Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/list Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/getItem(I)Lcom/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket;
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
ifnonnull L0
new com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/layout_send_image_menu_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/item_image I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/imageView Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/item_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/nameText Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/chat/R$id/count_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/countText Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket
astore 5
aload 5
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/drawable Landroid/graphics/drawable/Drawable;
ifnull L2
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/imageView Landroid/widget/ImageView;
aload 5
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/drawable Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
L3:
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/nameText Landroid/widget/TextView;
aload 5
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/countText Landroid/widget/TextView;
astore 4
aload 5
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/photoList Ljava/util/List;
ifnonnull L4
ldc "0"
astore 3
L5:
aload 4
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder
astore 3
goto L1
L2:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$dimen/send_image_menu_photo_size I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
istore 1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/context Landroid/content/Context;
aload 5
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/coverPath Ljava/lang/String;
iload 1
iload 1
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/BitmapUtil/getThumbnailByPath(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 4
aload 5
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 4
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/drawable Landroid/graphics/drawable/Drawable;
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter$ViewHolder/imageView Landroid/widget/ImageView;
aload 4
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
goto L3
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/photoList Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L5
.limit locals 6
.limit stack 5
.end method
