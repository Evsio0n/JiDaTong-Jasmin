.bytecode 50.0
.class public synchronized com/common/android/ui/widget/DatePopupWindow
.super android/widget/PopupWindow
.implements com/common/android/ui/wheel/OnWheelScrollListener
.implements android/view/View$OnClickListener
.inner class public static abstract interface onDateSetListener inner com/common/android/ui/widget/DatePopupWindow$onDateSetListener outer com/common/android/ui/widget/DatePopupWindow

.field public static final 'DPW_TYPE_NORMAL' I = 0


.field public static final 'DPW_TYPE_NO_DAY' I = 1


.field private 'mDateSetListener' Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;

.field private 'mMonth' I

.field private 'mWheelMonth' Lcom/common/android/ui/wheel/WheelView;

.field private 'mWheelYear' Lcom/common/android/ui/wheel/WheelView;

.field private 'mYear' I

.field private 'm_btnSetCancardateId' Landroid/widget/Button;

.field private 'm_btnSetdateId' Landroid/widget/Button;

.field private 'm_contentView' Landroid/view/View;

.method public <init>(Landroid/view/View;IIZ)V
aload 0
aload 1
iload 2
iload 3
iload 4
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;IIZ)V
aload 0
aload 1
putfield com/common/android/ui/widget/DatePopupWindow/m_contentView Landroid/view/View;
aload 0
invokevirtual com/common/android/ui/widget/DatePopupWindow/SetCtrl()V
aload 0
invokevirtual com/common/android/ui/widget/DatePopupWindow/InitData()V
return
.limit locals 5
.limit stack 5
.end method

.method private refreshWheels()V
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mWheelYear Lcom/common/android/ui/wheel/WheelView;
ifnull L0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mWheelYear Lcom/common/android/ui/wheel/WheelView;
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mYear I
sipush 1900
isub
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(IZ)V
L0:
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mWheelMonth Lcom/common/android/ui/wheel/WheelView;
ifnull L1
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mWheelMonth Lcom/common/android/ui/wheel/WheelView;
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mMonth I
iconst_1
isub
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(IZ)V
L1:
return
.limit locals 1
.limit stack 3
.end method

.method InitData()V
aload 0
invokevirtual com/common/android/ui/widget/DatePopupWindow/initYear()V
aload 0
invokevirtual com/common/android/ui/widget/DatePopupWindow/initMonth()V
return
.limit locals 1
.limit stack 1
.end method

.method SetCtrl()V
aload 0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/m_contentView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/dateYearId I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/wheel/WheelView
putfield com/common/android/ui/widget/DatePopupWindow/mWheelYear Lcom/common/android/ui/wheel/WheelView;
aload 0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/m_contentView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/datemonthId I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/wheel/WheelView
putfield com/common/android/ui/widget/DatePopupWindow/mWheelMonth Lcom/common/android/ui/wheel/WheelView;
aload 0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/m_contentView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/setdateId I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/common/android/ui/widget/DatePopupWindow/m_btnSetdateId Landroid/widget/Button;
aload 0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/m_contentView Landroid/view/View;
getstatic com/nd/android/u/allcommon/R$id/setCancardateId I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/common/android/ui/widget/DatePopupWindow/m_btnSetCancardateId Landroid/widget/Button;
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/m_btnSetdateId Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/m_btnSetCancardateId Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method public SetDateInfo(II)V
aload 0
iload 1
putfield com/common/android/ui/widget/DatePopupWindow/mYear I
aload 0
iload 2
putfield com/common/android/ui/widget/DatePopupWindow/mMonth I
aload 0
invokespecial com/common/android/ui/widget/DatePopupWindow/refreshWheels()V
return
.limit locals 3
.limit stack 2
.end method

.method public SetToday()V
aload 0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
iconst_1
invokevirtual java/util/Calendar/get(I)I
putfield com/common/android/ui/widget/DatePopupWindow/mYear I
aload 0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
putfield com/common/android/ui/widget/DatePopupWindow/mMonth I
aload 0
invokespecial com/common/android/ui/widget/DatePopupWindow/refreshWheels()V
return
.limit locals 1
.limit stack 3
.end method

.method initMonth()V
aload 0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mWheelMonth Lcom/common/android/ui/wheel/WheelView;
iconst_1
bipush 12
iconst_0
invokevirtual com/common/android/ui/widget/DatePopupWindow/initWheel(Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
pop
return
.limit locals 1
.limit stack 5
.end method

.method initWheel(Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
new com/common/android/ui/wheel/NumericWheelAdapter
dup
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/m_contentView Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
iload 2
iload 3
ldc "%02d"
invokespecial com/common/android/ui/wheel/NumericWheelAdapter/<init>(Landroid/content/Context;IILjava/lang/String;)V
astore 5
aload 5
ldc_w -16777216
invokevirtual com/common/android/ui/wheel/NumericWheelAdapter/setTextColor(I)V
aload 1
aload 5
invokevirtual com/common/android/ui/wheel/WheelView/setViewAdapter(Lcom/common/android/ui/wheel/WheelViewAdapter;)V
aload 1
iload 4
invokevirtual com/common/android/ui/wheel/WheelView/setCyclic(Z)V
aload 1
iconst_3
invokevirtual com/common/android/ui/wheel/WheelView/setVisibleItems(I)V
aload 1
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/addScrollingListener(Lcom/common/android/ui/wheel/OnWheelScrollListener;)V
aload 5
areturn
.limit locals 6
.limit stack 6
.end method

.method initYear()V
aload 0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mWheelYear Lcom/common/android/ui/wheel/WheelView;
sipush 1900
sipush 2049
iconst_0
invokevirtual com/common/android/ui/widget/DatePopupWindow/initWheel(Lcom/common/android/ui/wheel/WheelView;IIZ)Lcom/common/android/ui/wheel/NumericWheelAdapter;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/allcommon/R$id/setdateId I
if_icmpne L0
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mDateSetListener Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;
ifnull L1
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mDateSetListener Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mYear I
aload 0
getfield com/common/android/ui/widget/DatePopupWindow/mMonth I
iconst_0
invokeinterface com/common/android/ui/widget/DatePopupWindow$onDateSetListener/onDateSet(III)V 3
L1:
aload 0
invokevirtual com/common/android/ui/widget/DatePopupWindow/dismiss()V
L2:
return
L0:
iload 2
getstatic com/nd/android/u/allcommon/R$id/setCancardateId I
if_icmpne L2
aload 0
invokevirtual com/common/android/ui/widget/DatePopupWindow/dismiss()V
return
.limit locals 3
.limit stack 4
.end method

.method public onScrollingFinished(Lcom/common/android/ui/wheel/WheelView;)V
aload 1
invokevirtual com/common/android/ui/wheel/WheelView/getId()I
istore 2
iload 2
getstatic com/nd/android/u/allcommon/R$id/dateYearId I
if_icmpne L0
aload 0
aload 1
invokevirtual com/common/android/ui/wheel/WheelView/getCurrentItem()I
sipush 1900
iadd
putfield com/common/android/ui/widget/DatePopupWindow/mYear I
L1:
return
L0:
iload 2
getstatic com/nd/android/u/allcommon/R$id/datemonthId I
if_icmpne L1
aload 0
aload 1
invokevirtual com/common/android/ui/wheel/WheelView/getCurrentItem()I
iconst_1
iadd
putfield com/common/android/ui/widget/DatePopupWindow/mMonth I
return
.limit locals 3
.limit stack 3
.end method

.method public onScrollingStarted(Lcom/common/android/ui/wheel/WheelView;)V
return
.limit locals 2
.limit stack 0
.end method

.method public setOnDateSetListener(Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;)V
aload 0
aload 1
putfield com/common/android/ui/widget/DatePopupWindow/mDateSetListener Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;
return
.limit locals 2
.limit stack 2
.end method
