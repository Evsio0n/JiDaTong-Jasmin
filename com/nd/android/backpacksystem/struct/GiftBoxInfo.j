.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/struct/GiftBoxInfo
.super java/lang/Object

.field public 'gift_content' Ljava/lang/String;

.field public 'gift_image' I

.field public 'gift_lable' Ljava/lang/String;

.field public 'gift_name' Ljava/lang/String;

.field public 'gift_record' Ljava/lang/String;

.field public 'gift_time' Ljava/lang/String;

.field public 'user_image' I

.field public 'user_name' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/user_name Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/user_image I
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/gift_content Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/gift_time Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/gift_image I
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/gift_lable Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/gift_name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/GiftBoxInfo/gift_record Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method
