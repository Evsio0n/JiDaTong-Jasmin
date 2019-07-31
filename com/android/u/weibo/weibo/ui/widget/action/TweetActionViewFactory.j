.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/action/TweetActionViewFactory
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getTweetActionView(Landroid/app/Activity;)Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
new com/android/u/weibo/weibo/ui/widget/action/XYTweetActionView
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/action/XYTweetActionView/<init>(Landroid/app/Activity;)V
areturn
L0:
new com/android/u/weibo/weibo/ui/widget/action/NDTweetActionView
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/action/NDTweetActionView/<init>(Landroid/app/Activity;)V
areturn
.limit locals 1
.limit stack 3
.end method
