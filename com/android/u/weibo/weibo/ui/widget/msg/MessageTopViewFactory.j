.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/msg/MessageTopViewFactory
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getTopMessageView(Landroid/app/Activity;)Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
new com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/<init>(Landroid/app/Activity;)V
areturn
L0:
new com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/<init>(Landroid/app/Activity;)V
areturn
.limit locals 1
.limit stack 3
.end method
