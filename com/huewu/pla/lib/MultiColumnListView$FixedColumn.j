.bytecode 50.0
.class synchronized com/huewu/pla/lib/MultiColumnListView$FixedColumn
.super com/huewu/pla/lib/MultiColumnListView$Column
.inner class private FixedColumn inner com/huewu/pla/lib/MultiColumnListView$FixedColumn outer com/huewu/pla/lib/MultiColumnListView

.field final synthetic 'this$0' Lcom/huewu/pla/lib/MultiColumnListView;

.method public <init>(Lcom/huewu/pla/lib/MultiColumnListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnListView$FixedColumn/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
aload 0
aload 1
ldc_w 2147483647
invokespecial com/huewu/pla/lib/MultiColumnListView$Column/<init>(Lcom/huewu/pla/lib/MultiColumnListView;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public getBottom()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$FixedColumn/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
invokevirtual com/huewu/pla/lib/MultiColumnListView/getScrollChildBottom()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTop()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$FixedColumn/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
invokevirtual com/huewu/pla/lib/MultiColumnListView/getScrollChildTop()I
ireturn
.limit locals 1
.limit stack 1
.end method
