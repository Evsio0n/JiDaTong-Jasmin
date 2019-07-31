.bytecode 50.0
.class public synchronized com/nd/android/u/image/SimpleHeadImageLoader
.super java/lang/Object
.inner class static final inner com/nd/android/u/image/SimpleHeadImageLoader$1

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createImageViewCallback(Landroid/widget/ImageView;)Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
new com/nd/android/u/image/SimpleHeadImageLoader$1
dup
aload 0
invokespecial com/nd/android/u/image/SimpleHeadImageLoader$1/<init>(Landroid/widget/ImageView;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static display(Landroid/widget/ImageView;JILjava/lang/String;Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
iload 3
getstatic com/product/android/business/config/Configuration/MYAPPID I
if_icmpne L1
aload 4
getstatic com/product/android/business/config/Configuration/GIFTGIVERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
ldc_w 2130838795
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L2:
aload 4
getstatic com/product/android/business/config/Configuration/BIRTHDAYREMINDCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
ldc_w 2130838426
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L3:
aload 0
ldc_w 2130837598
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L1:
iload 3
getstatic com/product/android/business/config/Configuration/SECRETLOVEAPPID I
if_icmpne L4
aload 4
getstatic com/product/android/business/config/Configuration/SECRETLOVECODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
ldc_w 2130837600
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L5:
aload 0
ldc_w 2130837598
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L4:
iload 3
getstatic com/product/android/business/config/Configuration/TASKAPPID I
if_icmpne L6
aload 4
getstatic com/product/android/business/config/Configuration/FLOWERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
ldc_w 2130837596
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L7:
aload 4
getstatic com/product/android/business/config/Configuration/PAIHANGCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
aload 0
ldc_w 2130839352
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L8:
aload 4
getstatic com/product/android/business/config/Configuration/PRESEND_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
aload 0
ldc_w 2130837599
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L9:
aload 4
getstatic com/product/android/business/config/Configuration/LOTTERYCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
aload 0
aload 5
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 5
aload 0
invokestatic com/product/android/business/headImage/HeadImageLoader/displayAppImage(Ljava/lang/String;Landroid/widget/ImageView;)V
return
L10:
aload 0
ldc_w 2130837598
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L6:
iload 3
getstatic com/product/android/business/config/Configuration/CHINAPARTNERID I
if_icmpne L11
aload 0
ldc_w 2130838412
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L11:
aload 5
ifnull L12
ldc ""
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
L12:
aload 0
ldc_w 2130838375
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L13:
aload 0
aload 5
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 5
aload 0
invokestatic com/product/android/business/headImage/HeadImageLoader/displayAppImage(Ljava/lang/String;Landroid/widget/ImageView;)V
return
.limit locals 6
.limit stack 2
.end method

.method public static display(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ifnull L0
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
ldc_w 2130837561
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L1:
aload 0
aload 2
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 2
aload 0
invokestatic com/product/android/business/headImage/HeadImageLoader/displayAppImage(Ljava/lang/String;Landroid/widget/ImageView;)V
return
.limit locals 3
.limit stack 2
.end method
