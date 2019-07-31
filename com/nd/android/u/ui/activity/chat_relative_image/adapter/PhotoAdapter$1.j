.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1
.super java/lang/Object
.implements com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/getView(ILcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;

.field final synthetic 'val$holder' Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1/val$holder Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public OnGetSucess(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter$1/val$holder Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder;
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$ViewHolder/imageView Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method
