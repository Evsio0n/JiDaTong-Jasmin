.bytecode 50.0
.class public synchronized com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
.super android/view/ViewGroup$LayoutParams
.inner class public static LayoutParams inner com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams outer com/huewu/pla/lib/internal/PLA_AbsListView

.field public 'forceAdd' Z
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field public 'recycledHeaderFooter' Z
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field public 'scrappedFromPosition' I

.field public 'viewType' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
mapping [& Landroid/view/ViewDebug$IntToString; = [@ = .annotation 
from I = -1
to s = "ITEM_VIEW_TYPE_IGNORE"
.end annotation
 .annotation 
from I = -2
to s = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
.end annotation
 
.end annotation
.end field

.method public <init>(II)V
aload 0
iload 1
iload 2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(III)V
aload 0
iload 1
iload 2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup$LayoutParams/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
invokespecial android/view/ViewGroup$LayoutParams/<init>(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 2
.limit stack 2
.end method
