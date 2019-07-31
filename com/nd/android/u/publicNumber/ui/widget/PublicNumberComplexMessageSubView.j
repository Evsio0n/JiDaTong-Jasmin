.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView
.super android/widget/RelativeLayout

.field private 'imgSubPic' Landroid/widget/ImageView;

.field private 'tvSubTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method private initView(Landroid/content/Context;)V
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_list_item_complex_sub I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tvSubTitle I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/tvSubTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/imgSubPic I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/imgSubPic Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/imgSubPic Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
bipush 75
imul
sipush 480
idiv
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 1
aload 1
getfield android/widget/RelativeLayout$LayoutParams/width I
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/imgSubPic Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setData(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/tvSubTitle Landroid/widget/TextView;
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/title Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public$ComplexInfo/picurl Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageSubView/imgSubPic Landroid/widget/ImageView;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
return
.limit locals 2
.limit stack 4
.end method
