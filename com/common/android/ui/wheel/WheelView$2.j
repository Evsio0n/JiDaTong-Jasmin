.bytecode 50.0
.class synchronized com/common/android/ui/wheel/WheelView$2
.super android/database/DataSetObserver
.enclosing method com/common/android/ui/wheel/WheelView
.inner class inner com/common/android/ui/wheel/WheelView$2

.field final synthetic 'this$0' Lcom/common/android/ui/wheel/WheelView;

.method <init>(Lcom/common/android/ui/wheel/WheelView;)V
aload 0
aload 1
putfield com/common/android/ui/wheel/WheelView$2/this$0 Lcom/common/android/ui/wheel/WheelView;
aload 0
invokespecial android/database/DataSetObserver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onChanged()V
aload 0
getfield com/common/android/ui/wheel/WheelView$2/this$0 Lcom/common/android/ui/wheel/WheelView;
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/invalidateWheel(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public onInvalidated()V
aload 0
getfield com/common/android/ui/wheel/WheelView$2/this$0 Lcom/common/android/ui/wheel/WheelView;
iconst_1
invokevirtual com/common/android/ui/wheel/WheelView/invalidateWheel(Z)V
return
.limit locals 1
.limit stack 2
.end method
