.bytecode 50.0
.class public synchronized com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo
.super java/lang/Object
.implements android/view/ContextMenu$ContextMenuInfo
.inner class public static AdapterContextMenuInfo inner com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo outer com/huewu/pla/lib/internal/PLA_AdapterView

.field public 'id' J

.field public 'position' I

.field public 'targetView' Landroid/view/View;

.method public <init>(Landroid/view/View;IJ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo/targetView Landroid/view/View;
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo/position I
aload 0
lload 3
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo/id J
return
.limit locals 5
.limit stack 3
.end method
