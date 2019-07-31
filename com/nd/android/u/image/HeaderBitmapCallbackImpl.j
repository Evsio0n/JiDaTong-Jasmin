.bytecode 50.0
.class public synchronized com/nd/android/u/image/HeaderBitmapCallbackImpl
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public displayByApp(Landroid/widget/ImageView;ILjava/lang/String;)V
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 2
aload 3
iload 2
aload 3
ldc "f64"
invokestatic com/nd/android/u/contact/business/SynOapApp/getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/image/SimpleHeadImageLoader/display(Landroid/widget/ImageView;JILjava/lang/String;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 8
.end method

.method public displayByGroup(Landroid/widget/ImageView;Ljava/lang/String;I)V
aload 1
aload 2
iload 3
invokestatic com/nd/android/u/contact/business/SimpleGroupHeadImageLoader/displayGroupHeaderImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 3
.end method

.method public displayByUser(Landroid/widget/ImageView;J)V
lload 2
lload 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 1
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
return
.limit locals 4
.limit stack 4
.end method

.method public displaySystem(Landroid/widget/ImageView;)V
aload 1
ldc_w 2130839625
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 2
.end method
