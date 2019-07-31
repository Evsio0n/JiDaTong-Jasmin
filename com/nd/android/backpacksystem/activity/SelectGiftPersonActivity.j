.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/activity/SelectGiftPersonActivity
.super com/nd/android/backpacksystem/activity/BackpackBaseActivity

.field public static final 'GIFT_ITEM_ID' Ljava/lang/String; = "itemId"

.field public 'mSendGiftItemId' J

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getData()V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/getIntent()Landroid/content/Intent;
ldc "itemId"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/mSendGiftItemId J
return
.limit locals 1
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/getData()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/backpacksystem/R$layout/activity_backpack_select_gift_person_xy I
invokevirtual com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/setContentView(I)V
L1:
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
L0:
aload 0
getstatic com/nd/android/backpacksystem/R$layout/activity_backpack_select_gift_person I
invokevirtual com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
aload 0
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onEventMainThread(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 1
ldc "send_finish_select_gift_person_activity"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
invokevirtual com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/finish()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "itemId"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/mSendGiftItemId J
return
.limit locals 2
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/activity/BackpackBaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "itemId"
aload 0
getfield com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/mSendGiftItemId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
return
.limit locals 2
.limit stack 4
.end method
