.bytecode 50.0
.class public synchronized com/nd/android/u/ui/chatBottomFunction/BottomFunction_Geolocation
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IBottomFunction

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAppResId()I
getstatic com/nd/android/u/chat/R$drawable/app_geolocation I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/list_grid_item_geolocation I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(IJ)Z
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method

.method public onClick(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess;)V
aload 1
ldc "\u8be5\u529f\u80fd\u8fd8\u672a\u5f00\u53d1!"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 4
.limit stack 3
.end method
