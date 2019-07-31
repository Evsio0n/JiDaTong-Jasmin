.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/struct/MyGiftInfo
.super java/lang/Object

.field public 'gift_content' Ljava/lang/String;

.field public 'gift_image' I

.field public 'gift_name' Ljava/lang/String;

.field public 'lable' Ljava/lang/String;

.field public 'total' I

.field public 'valid_time' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/MyGiftInfo/gift_name Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/struct/MyGiftInfo/gift_image I
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/MyGiftInfo/lable Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/MyGiftInfo/gift_content Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/backpacksystem/struct/MyGiftInfo/valid_time Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/struct/MyGiftInfo/total I
return
.limit locals 1
.limit stack 2
.end method
