.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter
.super com/common/android/ui/wheel/ArrayWheelAdapter
.signature "Lcom/common/android/ui/wheel/ArrayWheelAdapter<Ljava/lang/String;>;"
.inner class private PickerAdapter inner com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter outer com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace

.field private static final 'CUR_COLOR' I = -15658735


.field private static final 'TEXT_SIZE' I = 24


.field 'currentItem' I

.field 'currentValue' I

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;

.method public <init>(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;Landroid/content/Context;[Ljava/lang/String;I)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;
aload 0
aload 2
aload 3
invokespecial com/common/android/ui/wheel/ArrayWheelAdapter/<init>(Landroid/content/Context;[Ljava/lang/Object;)V
aload 0
iload 4
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/currentValue I
aload 0
bipush 24
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/setTextSize(I)V
aload 0
ldc_w -15658735
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/setTextColor(I)V
return
.limit locals 5
.limit stack 3
.end method

.method protected configureTextView(Landroid/widget/TextView;)V
aload 0
aload 1
invokespecial com/common/android/ui/wheel/ArrayWheelAdapter/configureTextView(Landroid/widget/TextView;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/currentItem I
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/currentValue I
if_icmpne L0
aload 1
ldc_w -15658735
invokevirtual android/widget/TextView/setTextColor(I)V
L0:
aload 1
getstatic android/graphics/Typeface/SANS_SERIF Landroid/graphics/Typeface;
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/currentItem I
aload 0
iload 1
aload 2
aload 3
invokespecial com/common/android/ui/wheel/ArrayWheelAdapter/getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public resetItem([Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/ui/wheel/ArrayWheelAdapter/resetArray([Ljava/lang/Object;)V
aload 0
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/notifyDataInvalidatedEvent()V
return
.limit locals 2
.limit stack 2
.end method
