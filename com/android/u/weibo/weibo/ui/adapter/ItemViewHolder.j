.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/ItemViewHolder
.super java/lang/Object

.field 'btnCommentMe' Landroid/widget/ImageButton;

.field 'imgAvatar' Landroid/widget/ImageView;

.field 'imgFrame' Landroid/widget/ImageView;

.field 'llRepost' Landroid/widget/LinearLayout;

.field 'progress' Landroid/widget/ProgressBar;

.field 'rxtName' Landroid/widget/TextView;

.field 'txtContent' Lcom/product/android/ui/widget/ProTextView;

.field 'txtName' Landroid/widget/TextView;

.field 'txtTime' Landroid/widget/TextView;

.field 'voidImg' Landroid/widget/ImageView;

.method public <init>(Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
getstatic com/android/u/weibo/R$id/click_repost I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/llRepost Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/avatar_frame I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgFrame Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtName Landroid/widget/TextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/comment_me I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/void_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/voidImg Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/progress I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/progress Landroid/widget/ProgressBar;
return
.limit locals 2
.limit stack 3
.end method

.method public reSetView()V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgFrame Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtName Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
iconst_0
invokevirtual com/product/android/ui/widget/ProTextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/progress Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/voidImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setVoidImg(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgFrame Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtName Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
bipush 8
invokevirtual com/product/android/ui/widget/ProTextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/progress Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/voidImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/voidImg Landroid/widget/ImageView;
iload 1
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public showProgress()V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgAvatar Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/imgFrame Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtName Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtContent Lcom/product/android/ui/widget/ProTextView;
bipush 8
invokevirtual com/product/android/ui/widget/ProTextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/txtTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/btnCommentMe Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/progress Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/ItemViewHolder/voidImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
